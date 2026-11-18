#!/usr/bin/env python3
"""
Importa a la ROM los mapas de Sinnoh guardados en data/sinnoh/ (sacados del decomp de Platino).

Se ejecuta desde el Makefile después de que hg-engine haya colocado sus NARC en base/root
y antes de empaquetar la ROM. Es idempotente: cada NARC se recorta a su tamaño original de
HGSS antes de añadir los archivos de Sinnoh, así que se puede compilar tantas veces como haga falta.

Qué hace:
  * terreno (a/0/6/5): convierte el formato de Platino al de HGSS (HGSS añade una sección de
    sonido ambiente tras la cabecera) y cambia los IDs de edificio a los nuevos de HGSS.
  * edificios: añade los modelos de Platino (a/0/4/0), sus texturas (a/0/7/0) y las listas
    de edificios por área (a/0/4/3).
  * texturas de mapa (a/0/4/4) y datos de área (a/0/4/2).
  * matriz de Sinnoh (a/0/4/1) con las cabeceras de HGSS asignadas a cada zona.
  * eventos vacíos por zona (a/0/3/2) y las cabeceras de mapa en arm9.
"""
import json
import os
import pathlib
import struct
import sys

import ndspy.narc
import ndspy.rom

REPO = pathlib.Path(__file__).resolve().parents[2]
SINNOH = REPO / "data" / "sinnoh"
ROOT = REPO / "base" / "root"
ARM9 = REPO / "base" / "arm9.bin"

# Número de archivos de cada NARC en la ROM original de HeartGold (USA).
NARCS = {
    "land": ("a/0/6/5", 676),
    "matrix": ("a/0/4/1", 288),
    "area": ("a/0/4/2", 106),
    "map_tex": ("a/0/4/4", 106),
    "bm_model": ("a/0/4/0", 340),
    "bm_tex": ("a/0/7/0", 104),
    "bm_list": ("a/0/4/3", 104),
    "bm_anim": ("a/1/0/7", 340),  # una entrada de 24 bytes por modelo exterior (animaciones)
    "events": ("a/0/3/2", None),  # se calcula al vuelo: ver EVENTS_BASE
}

# HGSS guarda los modelos de edificio exteriores dos veces en la ROM con el mismo contenido.
NARC_ALIASES = {"a/0/4/0": ["fielddata/build_model/bm_field.narc"]}
MATSHP_HG = "fielddata/build_model/bm_field_matshp.dat"
MATSHP_PLATINUM = SINNOH / "props" / "build_model_matshp.dat"

MAP_HEADERS_ARM9 = 0x020F6BE0 - 0x02000000  # sMapHeaders, 24 bytes por cabecera
NUM_HG_HEADERS = 540

# valores de HGSS (pokeheartgold include/map_header.h, include/constants/battle.h)
MAP_TYPES = {"MAP_TYPE_CITY_TOWN": 1, "MAP_TYPE_ROUTE": 2, "MAP_TYPE_CAVE": 3, "MAP_TYPE_INTERIOR": 4}
BATTLE_BGS = {"BATTLE_BG_GENERAL": 0, "BATTLE_BG_OCEAN": 1, "BATTLE_BG_CITY": 2, "BATTLE_BG_FOREST": 3,
              "BATTLE_BG_MOUNTAIN": 4, "BATTLE_BG_SNOW": 5}
FOLLOW_ALLOW = 2
ENCDATA_NA = 0xFF
MOVE_MODEL_BANK = 15
SCRIPTS_EVERYWHERE = 139
SCRIPT_HEADER_EVERYWHERE = 399
MSG_EVERYWHERE = 3
OUTDOOR_LIGHT = 1
AREA_EXTERIOR = 1
MAP_NONE = 0xFFFF


_ROM = []


def vanilla_file(path):
    """Archivo tal y como está en la ROM original (rom.nds), para que el importador no dependa
    de lo que haya quedado en base/root de una compilación anterior."""
    if not _ROM:
        _ROM.append(ndspy.rom.NintendoDSRom.fromFile(str(REPO / "rom.nds")))
    return _ROM[0].getFileByName(path)


def load_narc(key):
    path, count = NARCS[key]
    if count is None:  # NARC que hg-engine también modifica: se parte de base/root
        return ndspy.narc.NARC((ROOT / path).read_bytes())
    narc = ndspy.narc.NARC(vanilla_file(path))
    if len(narc.files) != count:
        sys.exit(f"{path} tiene {len(narc.files)} archivos; se esperaban {count}. "
                 "¿Es una ROM de HeartGold USA limpia?")
    return narc


def save_narc(key, narc):
    path, _ = NARCS[key]
    data = narc.save()
    (ROOT / path).write_bytes(data)
    for alias in NARC_ALIASES.get(path, []):
        (ROOT / alias).write_bytes(data)


def reset_to_vanilla(narc, key, count=None):
    """Ya no hace falta recortar (load_narc parte de la ROM original); se deja por claridad."""
    count = count if count is not None else NARCS[key][1]
    del narc.files[count:]


def num(name):
    return int(name.rsplit("_", 1)[1])


def convert_land_data(data, prop_remap):
    """Platino: [4 tamaños][permisos][edificios][modelo][BDHC]
       HGSS:    [4 tamaños][0x1234][tamaño BGS][BGS][permisos][edificios][modelo][BDHC]"""
    perm, bldg, model, bdhc = struct.unpack_from("<4I", data, 0)
    body = bytearray(data[16:])
    for i in range(bldg // 48):
        off = perm + 48 * i
        plat_id = struct.unpack_from("<I", body, off)[0]
        struct.pack_into("<I", body, off, prop_remap[plat_id])
    return data[:16] + struct.pack("<HH", 0x1234, 0) + bytes(body)


def encode_header(zone, area_bank, matrix_id, events_bank):
    scripts = zone.get("scripts", SCRIPTS_EVERYWHERE)
    flags = 0
    flags |= MAP_TYPES[zone["map_type"]] << 8
    flags |= FOLLOW_ALLOW << 18
    flags |= BATTLE_BGS[zone["battle_bg"]] << 20
    flags |= 1 << 25                      # bici permitida
    flags |= 1 << 26                      # correr
    flags |= 0 << 27                      # cuerda huida
    flags |= (1 if zone.get("fly") else 0) << 28
    flags |= 1 << 29 | 1 << 30 | 1 << 31  # llamadas y radio
    mapsec_word = zone["mapsec"] | (1 << 8) | (10 << 12)  # icono de área 1, llamada de mamá genérica
    return struct.pack(
        "<BBHHHHHHHHHI",
        ENCDATA_NA, area_bank, MOVE_MODEL_BANK, matrix_id,
        scripts, SCRIPT_HEADER_EVERYWHERE, MSG_EVERYWHERE,
        zone["music"], zone["music"], events_bank, mapsec_word, flags,
    )


# --- modo de prueba -----------------------------------------------------------------------
# Con SINNOH_DEBUG_WARP=1 tres puertas de Ciudad Cerezo llevan a los Centros Pokémon de Canal,
# Jubileo y Pirita (y esas puertas devuelven al Centro Pokémon de Cerezo), y una cuarta al
# puerto de Ciudad Olivo. Solo sirve para
# probar los mapas mientras no exista el barco.
MAP_CHERRYGROVE = 67
MAP_CHERRYGROVE_POKECENTER_1F = 69
# puerta de Cerezo (x, z) -> (zona de Sinnoh, x, z de la puerta del Centro Pokémon en Platino)
DEBUG_DOORS = {
    (564, 391): ("MAP_HEADER_CANALAVE_CITY", 58, 722),
    (555, 391): ("MAP_HEADER_JUBILIFE_CITY", 180, 776),
    (547, 399): ("MAP_HEADER_OREBURGH_CITY", 303, 756),
    (558, 401): (240, None, None),  # puerto de Ciudad Olivo (para probar el barco)
}


def debug_warps(zone_header):
    # (x, z, mapa destino, warp destino, y) en coordenadas de Platino
    return [(x, z, MAP_CHERRYGROVE_POKECENTER_1F, 0, 0)
            for hx, hz in DEBUG_DOORS
            for (zh, x, z) in [DEBUG_DOORS[(hx, hz)]] if zh == zone_header]


def _warp_offsets(ev):
    off = 0
    off += 4 + 20 * struct.unpack_from("<I", ev, off)[0]
    off += 4 + 32 * struct.unpack_from("<I", ev, off)[0]
    count = struct.unpack_from("<I", ev, off)[0]
    return [off + 4 + 12 * k for k in range(count)]


def apply_debug_warp(events, arm9, zones, enable):
    """Activa o deshace el atajo de prueba en las puertas de Ciudad Cerezo. Solo toca los warps
    de DEBUG_DOORS, así que no pisa otros cambios que se hayan hecho a los eventos de Cerezo."""
    hg_map = {z["platinum_header"]: z["hg_map"] for z in zones}
    bank = struct.unpack_from("<H", arm9, MAP_HEADERS_ARM9 + 24 * MAP_CHERRYGROVE + 16)[0]
    vanilla = ndspy.narc.NARC(vanilla_file("a/0/3/2")).files[bank]
    ev = bytearray(events.files[bank])
    for w in _warp_offsets(ev):
        x, z = struct.unpack_from("<2H", ev, w)
        if (x, z) not in DEBUG_DOORS:
            continue
        if enable:
            target = DEBUG_DOORS[(x, z)][0]
            struct.pack_into("<HH", ev, w + 4, target if isinstance(target, int) else hg_map[target], 0)
        else:
            for vw in _warp_offsets(vanilla):
                if struct.unpack_from("<2H", vanilla, vw) == (x, z):
                    ev[w + 4:w + 8] = vanilla[vw + 4:vw + 8]
    events.files[bank] = bytes(ev)
    if enable:
        print("AVISO: SINNOH_DEBUG_WARP activo (puertas de Ciudad Cerezo -> Sinnoh)")


MAP_MATRIX_MAX_SIZE = 799  # pokeheartgold include/map_matrix.h
TILES_PER_CELL = 32


def matrix_bounds(overworld):
    """La matriz de Platino es de 30x30 (900 celdas) y HGSS solo admite 799: se recortan las
    filas y columnas sin ningún mapa. Las coordenadas de eventos se desplazan con este origen."""
    rows = [r for r, row in enumerate(overworld["maps"]) if any(m != "MAP_NONE" for m in row)]
    cols = [c for c in range(len(overworld["maps"][0]))
            if any(row[c] != "MAP_NONE" for row in overworld["maps"])]
    r0, c0 = rows[0], cols[0]
    h, w = rows[-1] - r0 + 1, cols[-1] - c0 + 1
    if w * h > MAP_MATRIX_MAX_SIZE:
        sys.exit(f"la matriz de Sinnoh recortada ({w}x{h}) supera las {MAP_MATRIX_MAX_SIZE} celdas de HGSS")
    return r0, c0, h, w


def to_hg_coords(overworld, x, z):
    """Coordenadas globales de Platino -> coordenadas en la matriz recortada de HGSS."""
    r0, c0, _, _ = matrix_bounds(overworld)
    return x - c0 * TILES_PER_CELL, z - r0 * TILES_PER_CELL


def read_matshp(data):
    """Tabla material/forma de los edificios: u16 nLocalizadores, u16 nIDs,
    localizadores (u16 cuántos, u16 desde), IDs (u16 material, u16 forma)."""
    n_loc, n_ids = struct.unpack_from("<HH", data, 0)
    locs = [struct.unpack_from("<HH", data, 4 + 4 * i) for i in range(n_loc)]
    base = 4 + 4 * n_loc
    ids = [struct.unpack_from("<HH", data, base + 4 * i) for i in range(n_ids)]
    return locs, ids


def extend_matshp(prop_remap):
    """Cada modelo de edificio necesita su entrada en la tabla material/forma; sin ella el juego
    lee fuera de la tabla y se cuelga al cargar el mapa."""
    hg_locs, hg_ids = read_matshp(vanilla_file(MATSHP_HG))
    pt_locs, pt_ids = read_matshp(MATSHP_PLATINUM.read_bytes())
    for pt_id, hg_id in sorted(prop_remap.items(), key=lambda kv: kv[1]):
        assert hg_id == len(hg_locs), "los modelos nuevos deben ser consecutivos"
        count, start = pt_locs[pt_id]
        hg_locs.append((count, len(hg_ids)))
        hg_ids.extend(pt_ids[start:start + count])
    data = struct.pack("<HH", len(hg_locs), len(hg_ids))
    data += b"".join(struct.pack("<HH", *l) for l in hg_locs)
    data += b"".join(struct.pack("<HH", *i) for i in hg_ids)
    (ROOT / MATSHP_HG).write_bytes(data)


def pack_object(local_id, gfx, script, direction, x, z, movement=0):
    """Objeto (NPC) de un archivo de eventos de HGSS: 14 hwords + y (word)."""
    return struct.pack("<14HI", local_id, gfx, movement, 0, 0, script, direction, 0, 0, 0, 0, 0, x, z, 0)


def append_objects(event_file, objects):
    """Añade objetos al final de la lista de objetos de un archivo de eventos existente."""
    ev = bytearray(event_file)
    off = 4 + 20 * struct.unpack_from("<I", ev, 0)[0]
    count = struct.unpack_from("<I", ev, off)[0]
    insert_at = off + 4 + 32 * count
    struct.pack_into("<I", ev, off, count + len(objects))
    return bytes(ev[:insert_at]) + b"".join(objects) + bytes(ev[insert_at:])


# Marineros que llevan a Sinnoh en los puertos del S.S. Aqua. El script es el nuevo que se
# añade al final de los scripts del mapa (data/scr_seq/scr_seq_00152_*.s y 00154_*.s).
SPRITE_SEAMAN_2 = 348
PORT_SAILORS = {
    240: dict(script=6, x=9, z=8),  # puerto de Ciudad Olivo (P01R0101): scr_seq_P01R0101_005
    386: dict(script=4, x=9, z=8),  # puerto de Ciudad Carmín (P01R0103): scr_seq_P01R0103_003
}
SHG_OBJECT_ID = 0x20  # ID local para los objetos añadidos a mapas de HGSS


def add_port_sailors(events, arm9):
    vanilla = ndspy.narc.NARC(vanilla_file("a/0/3/2"))
    for map_id, s in PORT_SAILORS.items():
        bank = struct.unpack_from("<H", arm9, MAP_HEADERS_ARM9 + 24 * map_id + 16)[0]
        sailor = pack_object(SHG_OBJECT_ID, SPRITE_SEAMAN_2, s["script"], 1, s["x"], s["z"])
        events.files[bank] = append_objects(vanilla.files[bank], [sailor])


def build_events(warps, objects=()):
    data = struct.pack("<I", 0)          # bg events
    data += struct.pack("<I", len(objects))
    data += b"".join(objects)
    data += struct.pack("<I", len(warps))
    for x, z, dest, dest_warp, y in warps:
        data += struct.pack("<HHHHI", x, z, dest, dest_warp, y)
    data += struct.pack("<I", 0)         # coord events
    return data


def main():
    zones = json.loads((SINNOH / "zones.json").read_text())["zones"]
    by_plat_header = {z["platinum_header"]: z for z in zones}

    # --- edificios ---------------------------------------------------------------------
    order = (SINNOH / "props" / "models" / "map_prop_models.order").read_text().split()
    available = sorted(p.name for p in (SINNOH / "props" / "models").glob("*.nsbmd"))
    bm_model = load_narc("bm_model")
    reset_to_vanilla(bm_model, "bm_model")
    prop_remap = {}
    for name in sorted(available, key=order.index):
        prop_remap[order.index(name)] = len(bm_model.files)
        bm_model.files.append((SINNOH / "props" / "models" / name).read_bytes())
    save_narc("bm_model", bm_model)
    extend_matshp(prop_remap)

    # El juego lee la entrada de animación de cada edificio que carga: sin ella se cuelga.
    # De momento los edificios de Sinnoh van sin animación (las puertas no se abren).
    bm_anim = load_narc("bm_anim")
    no_anim = bytes.fromhex("ffff000000000000ffffffffffffffffffffffffffffffff")
    bm_anim.files.extend([no_anim] * len(prop_remap))
    save_narc("bm_anim", bm_anim)

    bm_tex, bm_list = load_narc("bm_tex"), load_narc("bm_list")
    reset_to_vanilla(bm_tex, "bm_tex")
    reset_to_vanilla(bm_list, "bm_list")
    prop_set_remap = {}
    for p in sorted((SINNOH / "props" / "model_sets").glob("*.json")):
        models = json.loads(p.read_text())["mapPropModels"]
        ids = [prop_remap[order.index(m.removesuffix("_nsbmd") + ".nsbmd")] for m in models]
        prop_set_remap[p.stem] = len(bm_list.files)
        bm_list.files.append(struct.pack(f"<H{len(ids)}H", len(ids), *ids))
        tex = p.stem.replace("prop_model_set", "prop_texture_set")
        bm_tex.files.append((SINNOH / "props" / "texture_sets" / f"{tex}.nsbtx").read_bytes())
    save_narc("bm_tex", bm_tex)
    save_narc("bm_list", bm_list)

    # --- texturas de mapa y áreas ---------------------------------------------------------
    map_tex = load_narc("map_tex")
    reset_to_vanilla(map_tex, "map_tex")
    tex_remap = {}
    for t in sorted((SINNOH / "map_textures").glob("*.nsbtx")):
        tex_remap[t.stem] = len(map_tex.files)
        map_tex.files.append(t.read_bytes())
    save_narc("map_tex", map_tex)

    area = load_narc("area")
    reset_to_vanilla(area, "area")
    area_remap = {}
    for a in sorted((SINNOH / "area_data").glob("*.json")):
        d = json.loads(a.read_text())
        area_remap[a.stem] = len(area.files)
        area.files.append(struct.pack("<HHHBB", prop_set_remap[d["mapPropSet"]],
                                      tex_remap[d["mapTextureSet"]], 0xFFFF, AREA_EXTERIOR, OUTDOOR_LIGHT))
    if len(area.files) > 255:
        sys.exit("demasiados datos de área para un u8 en la cabecera de mapa")
    save_narc("area", area)

    # --- terreno y matriz ---------------------------------------------------------------
    land = load_narc("land")
    reset_to_vanilla(land, "land")
    land_remap = {}
    for f in sorted((SINNOH / "land_data").glob("map_data_*.bin")):
        land_remap[num(f.stem)] = len(land.files)
        land.files.append(convert_land_data(f.read_bytes(), prop_remap))
    save_narc("land", land)

    overworld = json.loads((SINNOH / "matrix" / "towns_and_routes.json").read_text())
    r0, c0, h, w = matrix_bounds(overworld)
    headers_grid, maps_grid = [], []
    for r in range(r0, r0 + h):
        for c in range(c0, c0 + w):
            zone = by_plat_header.get(overworld["headers"][r][c])
            land_name = overworld["maps"][r][c]
            if zone and land_name != "MAP_NONE":
                headers_grid.append(zone["hg_map"])
                maps_grid.append(land_remap[num(land_name)])
            else:
                headers_grid.append(0)
                maps_grid.append(MAP_NONE)
    name = b"sinnoh"
    matrix_bytes = bytes([w, h, 1, 1, len(name)]) + name
    matrix_bytes += struct.pack(f"<{w*h}H", *headers_grid)
    matrix_bytes += bytes(overworld["altitudes"][r][c] for r in range(r0, r0 + h) for c in range(c0, c0 + w))
    matrix_bytes += struct.pack(f"<{w*h}H", *maps_grid)

    matrix = load_narc("matrix")
    reset_to_vanilla(matrix, "matrix")
    matrix_id = len(matrix.files)
    matrix.files.append(matrix_bytes)
    save_narc("matrix", matrix)

    # --- eventos (vacíos por ahora) y cabeceras ---------------------------------------------
    events = load_narc("events")
    marker = REPO / "build" / "sinnoh_events_base.txt"
    if marker.exists():
        events_base = int(marker.read_text())
        del events.files[events_base:]
    else:
        events_base = len(events.files)
        marker.parent.mkdir(exist_ok=True)
        marker.write_text(str(events_base))

    arm9 = bytearray(ARM9.read_bytes())
    debug_warp = os.environ.get("SINNOH_DEBUG_WARP") == "1"
    apply_debug_warp(events, arm9, zones, debug_warp)
    for zone in zones:
        if not 0 <= zone["hg_map"] < NUM_HG_HEADERS:
            sys.exit(f"hg_map fuera de rango: {zone}")
        stem = zone["platinum_header"].removeprefix("MAP_HEADER_").lower()
        plat = json.loads((SINNOH / "headers" / f"{stem}.json").read_text())
        events_bank = len(events.files)
        warps = [(*to_hg_coords(overworld, x, z), dest, dw, y)
                 for x, z, dest, dw, y in debug_warps(zone["platinum_header"])] if debug_warp else []
        objects = [pack_object(i, o["graphics_id"], o["script"], o["dir"], *to_hg_coords(overworld, o["x"], o["z"]))
                   for i, o in enumerate(zone.get("objects", []))]
        events.files.append(build_events(warps, objects))
        hdr = encode_header(zone, area_remap[plat["areaData"]], matrix_id, events_bank)
        off = MAP_HEADERS_ARM9 + 24 * zone["hg_map"]
        arm9[off:off + 24] = hdr
    add_port_sailors(events, arm9)
    save_narc("events", events)
    ARM9.write_bytes(arm9)

    print(f"Sinnoh: {len(zones)} zonas, {len(land_remap)} mapas, matriz {matrix_id} ({w}x{h}), "
          f"{len(prop_remap)} edificios, {len(area_remap)} áreas")


if __name__ == "__main__":
    main()

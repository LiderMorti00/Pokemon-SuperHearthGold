#!/usr/bin/env python3
"""
Importa a la ROM los mapas de Sinnoh guardados en data/sinnoh/ (sacados del decomp de Platino con
tools/sinnoh/sync_from_pokeplatinum.py).

Se ejecuta desde el Makefile después de que hg-engine haya colocado sus NARC en base/root y antes
de empaquetar la ROM. Parte siempre de los archivos de rom.nds, así que es idempotente.

Qué hace:
  * cabeceras de mapa: escribe a/0/5/0 con las 540 cabeceras de HGSS más las de Sinnoh
    (las lee src/shg_map_headers.c en lugar de la tabla fija de arm9).
  * matrices (a/0/4/1): la de Sinnoh (recortada al máximo de 799 celdas de HGSS) y las interiores.
  * terreno (a/0/6/5): formato de Platino -> HGSS y nuevos IDs de edificio.
  * edificios: los de áreas exteriores van con los de HGSS exteriores (a/0/4/0, bm_field_matshp,
    a/1/0/7) y los de interiores con los interiores (a/1/4/8, bm_room_matshp, a/1/0/8).
    El juego guarda los modelos de un área en una tabla de 550 entradas indexada por ID de modelo,
    así que ninguna de las dos listas puede pasar de 550.
  * texturas de mapa (a/0/4/4), listas de edificios y sus texturas (a/0/4/3, a/0/7/0), áreas (a/0/4/2).
  * eventos (a/0/3/2): warps entre mapas de Sinnoh y NPCs de zone_overrides.json.
"""
import json
import os
import pathlib
import re
import struct
import sys

import ndspy.narc
import ndspy.rom
import ndspy.codeCompression

REPO = pathlib.Path(__file__).resolve().parents[2]
SINNOH = REPO / "data" / "sinnoh"
ROOT = REPO / "base" / "root"

NUM_HG_HEADERS = 540
HG_MAP_HEADERS_ARM9 = 0x020F6BE0 - 0x02000000  # sMapHeaders original (24 bytes por cabecera)
MAP_HEADER_NARC = "a/0/5/0"
MAP_MATRIX_MAX_SIZE = 799   # pokeheartgold include/map_matrix.h
MAX_BUILDING_MODELS = 550   # tamaño de la tabla de modelos del gestor de áreas (ov01, 0x226)
TILES_PER_CELL = 32
MAP_NONE = 0xFFFF

# NARC -> número de archivos en la ROM original de HeartGold (USA)
VANILLA_COUNT = {
    "a/0/6/5": 676, "a/0/4/1": 288, "a/0/4/2": 106, "a/0/4/4": 106, "a/0/4/3": 104, "a/0/7/0": 104,
    "a/0/4/0": 340, "a/1/0/7": 340, "a/1/4/8": 222, "a/1/0/8": 222,
}
ALIASES = {  # HGSS guarda los modelos de edificio dos veces con el mismo contenido
    "a/0/4/0": ["fielddata/build_model/bm_field.narc"],
    "a/1/4/8": ["fielddata/build_model/bm_room.narc"],
}
BUILDING_SETS = {  # clase de área -> NARC de modelos, tabla material/forma, animaciones, tipo y luz
    "exterior": dict(models="a/0/4/0", matshp="fielddata/build_model/bm_field_matshp.dat",
                     anim="a/1/0/7", area_type=1, light=1),
    "interior": dict(models="a/1/4/8", matshp="fielddata/build_model/bm_room_matshp.dat",
                     anim="a/1/0/8", area_type=0, light=0),
}
NO_ANIMATION = bytes.fromhex("ffff000000000000ffffffffffffffffffffffffffffffff")

MAP_TYPES = {"MAP_TYPE_CITY_TOWN": 1, "MAP_TYPE_ROUTE": 2, "MAP_TYPE_CAVE": 3, "MAP_TYPE_INTERIOR": 4}
FOLLOW = {"PREVENT": 0, "HEIGHT_RESTRICT": 1, "ALLOW": 2}
ENCDATA_NA = 0xFF
MOVE_MODEL_BANK = 15
SCRIPTS_EVERYWHERE = 139
SCRIPT_HEADER_EVERYWHERE = 399
MSG_EVERYWHERE = 3

# Música de HGSS que se usa mientras una canción de Platino no esté importada (ver music.json).
SEQ_FALLBACK = [
    (r"^SEQ_PC_", 1063), (r"^SEQ_FS$", 1064), (r"^SEQ_GYM$", 1065), (r"^SEQ_D_LEAGUE", 1084),
    (r"^SEQ_D_", 1073), (r"^SEQ_CITY", 1022), (r"^SEQ_TOWN", 1018), (r"^SEQ_ROAD", 1036),
    (r"^SEQ_BLD_", 1156), (r"^SEQ_SILENCE", 1001),
]
SEQ_DEFAULT = 1036

_ROM = []


def rom():
    if not _ROM:
        _ROM.append(ndspy.rom.NintendoDSRom.fromFile(str(REPO / "rom.nds")))
    return _ROM[0]


def vanilla_file(path):
    """Archivo tal y como está en rom.nds (no en base/root, que guarda compilaciones anteriores)."""
    return rom().getFileByName(path)


def vanilla_narc(path):
    narc = ndspy.narc.NARC(vanilla_file(path))
    expected = VANILLA_COUNT.get(path)
    if expected is not None and len(narc.files) != expected:
        sys.exit(f"{path} tiene {len(narc.files)} archivos; se esperaban {expected}. "
                 "¿Es una ROM de HeartGold USA limpia?")
    return narc


def save(path, data):
    if isinstance(data, ndspy.narc.NARC):
        data = data.save()
    (ROOT / path).write_bytes(data)
    for alias in ALIASES.get(path, []):
        (ROOT / alias).write_bytes(data)


def num(name):
    return int(name.rsplit("_", 1)[1])


# --- matshp ---------------------------------------------------------------------------------

def read_matshp(data):
    """u16 nLocalizadores, u16 nIDs, localizadores (u16 cuántos, u16 desde), IDs (u16, u16)."""
    n_loc, n_ids = struct.unpack_from("<HH", data, 0)
    locs = [struct.unpack_from("<HH", data, 4 + 4 * i) for i in range(n_loc)]
    base = 4 + 4 * n_loc
    ids = [struct.unpack_from("<HH", data, base + 4 * i) for i in range(n_ids)]
    return locs, ids


def write_matshp(locs, ids):
    return (struct.pack("<HH", len(locs), len(ids)) + b"".join(struct.pack("<HH", *l) for l in locs)
            + b"".join(struct.pack("<HH", *i) for i in ids))


# --- cabeceras ------------------------------------------------------------------------------

def encode_header(zone, area_bank, matrix_id, events_bank, music):
    flags = 0
    flags |= (zone.get("weather", 0) & 0x7F) << 1
    flags |= MAP_TYPES[zone["map_type"]] << 8
    flags |= (zone.get("camera", 0) & 0x3F) << 12
    flags |= FOLLOW[zone.get("follow", "ALLOW")] << 18
    flags |= (zone["battle_bg"] & 0x1F) << 20
    flags |= int(zone.get("bike", True)) << 25
    flags |= 1 << 26                                   # correr
    flags |= int(zone.get("escape_rope", False)) << 27
    flags |= int(zone.get("fly", False)) << 28
    flags |= 1 << 29 | 1 << 30 | 1 << 31                # llamadas y radio
    area_icon = 1 if zone["map_type"] == "MAP_TYPE_CITY_TOWN" else 3
    mapsec_word = zone["mapsec"] | (area_icon << 8) | (10 << 12)
    return struct.pack(
        "<BBHHHHHHHHHI",
        ENCDATA_NA, area_bank, MOVE_MODEL_BANK, matrix_id,
        zone.get("scripts", SCRIPTS_EVERYWHERE), SCRIPT_HEADER_EVERYWHERE, MSG_EVERYWHERE,
        music(zone["music_day"]), music(zone["music_night"]), events_bank, mapsec_word, flags,
    )


def music_mapper():
    table = {}
    path = SINNOH / "music.json"
    if path.exists():
        table = json.loads(path.read_text())["sequences"]

    def music(name):
        if name in table:
            return table[name]
        for pattern, seq in SEQ_FALLBACK:
            if re.search(pattern, name):
                return seq
        return SEQ_DEFAULT
    return music


# --- eventos ----------------------------------------------------------------------------------

def pack_object(local_id, gfx, script, direction, x, z, movement=0):
    """Objeto (NPC) de un archivo de eventos de HGSS: 14 hwords + y (word)."""
    return struct.pack("<14HI", local_id, gfx, movement, 0, 0, script, direction, 0, 0, 0, 0, 0, x, z, 0)


def append_objects(event_file, objects):
    ev = bytearray(event_file)
    off = 4 + 20 * struct.unpack_from("<I", ev, 0)[0]
    count = struct.unpack_from("<I", ev, off)[0]
    insert_at = off + 4 + 32 * count
    struct.pack_into("<I", ev, off, count + len(objects))
    return bytes(ev[:insert_at]) + b"".join(objects) + bytes(ev[insert_at:])


def build_events(warps, objects=()):
    data = struct.pack("<I", 0)                       # carteles y objetos ocultos
    data += struct.pack("<I", len(objects)) + b"".join(objects)
    data += struct.pack("<I", len(warps))
    for x, z, y, dest, dest_warp in warps:
        data += struct.pack("<HHHHI", x, z, dest, dest_warp, y & 0xFFFFFFFF)
    data += struct.pack("<I", 0)                      # eventos de coordenadas
    return data


def warp_offsets(ev):
    off = 4 + 20 * struct.unpack_from("<I", ev, 0)[0]
    off += 4 + 32 * struct.unpack_from("<I", ev, off)[0]
    count = struct.unpack_from("<I", ev, off)[0]
    return [off + 4 + 12 * k for k in range(count)]


_ARM9 = []


def vanilla_arm9():
    if not _ARM9:
        _ARM9.append(ndspy.codeCompression.decompress(rom().arm9))
    return _ARM9[0]


def vanilla_events_bank(map_id):
    return struct.unpack_from("<H", vanilla_arm9(), HG_MAP_HEADERS_ARM9 + 24 * map_id + 16)[0]


# Marineros que llevan a Sinnoh en los puertos del S.S. Aqua (scripts nuevos al final de
# data/scr_seq/scr_seq_00152_*.s y 00154_*.s).
SPRITE_SEAMAN_2 = 348
PORT_SAILORS = {
    240: dict(script=6, x=9, z=8),  # puerto de Ciudad Olivo (P01R0101): scr_seq_P01R0101_005
    386: dict(script=4, x=9, z=8),  # puerto de Ciudad Carmín (P01R0103): scr_seq_P01R0103_003
}
SHG_OBJECT_ID = 0x20

# --- modo de prueba -----------------------------------------------------------------------
# Con SINNOH_DEBUG_WARP=1 cuatro puertas de Ciudad Cerezo llevan a Sinnoh (Centros Pokémon de
# Canal, Jubileo y Pirita) y al puerto de Olivo. Solo sirve para probar sin pasarse el juego.
MAP_CHERRYGROVE = 67
DEBUG_DOORS = {  # puerta de Cerezo (x, z) -> (mapa de Sinnoh o ID de HGSS, warp de destino)
    (564, 391): ("canalave_city_pokecenter_1f", 0),
    (555, 391): ("jubilife_city_pokecenter_1f", 0),
    (547, 399): ("oreburgh_city_pokecenter_1f", 0),
    (558, 401): (240, 0),
}


def apply_debug_doors(events, hg_ids, enable):
    doors = dict(DEBUG_DOORS)
    # SINNOH_DEBUG_TARGETS="mapa[:warp],mapa[:warp],..." cambia los destinos de las puertas en orden
    targets = [t for t in os.environ.get("SINNOH_DEBUG_TARGETS", "").split(",") if t]
    for door, t in zip(list(doors), targets):
        stem, _, w = t.partition(":")
        doors[door] = (stem, int(w or 0))
    bank = vanilla_events_bank(MAP_CHERRYGROVE)
    ev = bytearray(vanilla_narc("a/0/3/2").files[bank])
    if enable:
        for w in warp_offsets(ev):
            x, z = struct.unpack_from("<2H", ev, w)
            if (x, z) in doors:
                target, dest_warp = doors[(x, z)]
                struct.pack_into("<HH", ev, w + 4, target if isinstance(target, int) else hg_ids[target], dest_warp)
        print("AVISO: SINNOH_DEBUG_WARP activo (puertas de Ciudad Cerezo -> Sinnoh y puerto de Olivo)")
    events.files[bank] = bytes(ev)


# --- principal --------------------------------------------------------------------------------

def main():
    zones = json.loads((SINNOH / "zones.json").read_text())["zones"]
    overrides = json.loads((SINNOH / "zone_overrides.json").read_text())
    for z in zones:
        z.update({k: v for k, v in overrides.get(z["stem"], {}).items() if not k.startswith("_")})
    hg_ids = {z["stem"]: z["hg_map"] for z in zones}
    header_ids = {f"MAP_HEADER_{z['stem'].upper()}": z["hg_map"] for z in zones}

    expected = int(re.search(r"SHG_NUM_MAP_HEADERS (\d+)", (REPO / "include" / "superhearthgold_maps.h").read_text()).group(1))
    if NUM_HG_HEADERS + len(zones) != expected:
        sys.exit("include/superhearthgold_maps.h no coincide con zones.json: vuelve a ejecutar sync_from_pokeplatinum.py")

    # clase (exterior/interior) de cada área de Platino según su iluminación
    areas = {p.stem: json.loads(p.read_text()) for p in sorted((SINNOH / "area_data").glob("*.json"))}
    area_class = {a: ("exterior" if d["lightingSet"] == "lighting_set_000" else "interior") for a, d in areas.items()}

    # --- edificios ----------------------------------------------------------------------
    order = (SINNOH / "props" / "models" / "map_prop_models.order").read_text().split()
    prop_sets = {p.stem: [order.index(m.removesuffix("_nsbmd") + ".nsbmd") for m in json.loads(p.read_text())["mapPropModels"]]
                 for p in sorted((SINNOH / "props" / "model_sets").glob("*.json"))}
    pt_locs, pt_ids = read_matshp((SINNOH / "props" / "build_model_matshp.dat").read_bytes())
    prop_remap = {}  # clase -> {modelo de Platino: ID en HGSS}
    for cls, bs in BUILDING_SETS.items():
        models = vanilla_narc(bs["models"])
        locs, ids = read_matshp(vanilla_file(bs["matshp"]))
        anim = vanilla_narc(bs["anim"])
        needed = sorted({m for a, d in areas.items() if area_class[a] == cls for m in prop_sets[d["mapPropSet"]]})
        remap = {}
        for pt in needed:
            remap[pt] = len(models.files)
            models.files.append((SINNOH / "props" / "models" / order[pt]).read_bytes())
            count, start = pt_locs[pt]
            locs.append((count, len(ids)))
            ids.extend(pt_ids[start:start + count])
            anim.files.append(NO_ANIMATION)
        if len(models.files) > MAX_BUILDING_MODELS:
            sys.exit(f"demasiados modelos de edificio {cls}: {len(models.files)} > {MAX_BUILDING_MODELS}")
        save(bs["models"], models)
        save(bs["matshp"], write_matshp(locs, ids))
        save(bs["anim"], anim)
        prop_remap[cls] = remap

    bm_list, bm_tex = vanilla_narc("a/0/4/3"), vanilla_narc("a/0/7/0")
    list_index = {}  # (set de Platino, clase) -> índice en a/0/4/3 y a/0/7/0
    for a, d in areas.items():
        key = (d["mapPropSet"], area_class[a])
        if key in list_index:
            continue
        ids = [prop_remap[area_class[a]][m] for m in prop_sets[d["mapPropSet"]]]
        list_index[key] = len(bm_list.files)
        bm_list.files.append(struct.pack(f"<H{len(ids)}H", len(ids), *ids))
        tex = d["mapPropSet"].replace("prop_model_set", "prop_texture_set")
        bm_tex.files.append((SINNOH / "props" / "texture_sets" / f"{tex}.nsbtx").read_bytes())
    save("a/0/4/3", bm_list)
    save("a/0/7/0", bm_tex)

    # --- texturas de mapa y áreas ---------------------------------------------------------
    map_tex = vanilla_narc("a/0/4/4")
    tex_remap = {}
    for t in sorted((SINNOH / "map_textures").glob("*.nsbtx")):
        tex_remap[t.stem] = len(map_tex.files)
        map_tex.files.append(t.read_bytes())
    save("a/0/4/4", map_tex)

    area_narc = vanilla_narc("a/0/4/2")
    area_remap = {}
    for a, d in areas.items():
        bs = BUILDING_SETS[area_class[a]]
        area_remap[a] = len(area_narc.files)
        area_narc.files.append(struct.pack("<HHHBB", list_index[(d["mapPropSet"], area_class[a])],
                                           tex_remap[d["mapTextureSet"]], 0xFFFF, bs["area_type"], bs["light"]))
    if len(area_narc.files) > 256:
        sys.exit("demasiadas áreas para el campo de 8 bits de la cabecera")
    save("a/0/4/2", area_narc)

    # --- terreno y matrices ---------------------------------------------------------------
    land = vanilla_narc("a/0/6/5")
    land_remap = {}  # (terreno de Platino, clase) -> índice en a/0/6/5

    def land_index(pt_land, cls):
        key = (pt_land, cls)
        if key not in land_remap:
            data = (SINNOH / "land_data" / f"map_data_{pt_land:03d}.bin").read_bytes()
            perm, bldg, _, _ = struct.unpack_from("<4I", data, 0)
            body = bytearray(data[16:])
            for i in range(bldg // 48):
                off = perm + 48 * i
                pt_model = struct.unpack_from("<I", body, off)[0]
                struct.pack_into("<I", body, off, prop_remap[cls].get(pt_model, 0))
            land_remap[key] = len(land.files)
            # HGSS añade tras la cabecera una sección de sonido ambiente (aquí vacía)
            land.files.append(data[:16] + struct.pack("<HH", 0x1234, 0) + bytes(body))
        return land_remap[key]

    groups = {p.stem: json.loads(p.read_text()) for p in sorted((SINNOH / "groups").glob("*.json"))}
    matrix = vanilla_narc("a/0/4/1")
    matrix_remap = {}  # (grupo, clase) -> índice en a/0/4/1
    crop = {}          # grupo -> (fila, columna) de origen tras recortar
    for z in zones:
        key = (z["group"], area_class[z["area"]])
        if key in matrix_remap:
            continue
        g = groups[z["group"]]
        rows = [r for r, row in enumerate(g["maps"]) if any(m != "MAP_NONE" for m in row)]
        cols = [c for c in range(len(g["maps"][0])) if any(row[c] != "MAP_NONE" for row in g["maps"])]
        r0, c0 = rows[0], cols[0]
        h, w = rows[-1] - r0 + 1, cols[-1] - c0 + 1
        if w * h > MAP_MATRIX_MAX_SIZE:
            sys.exit(f"la matriz {z['group']} recortada ({w}x{h}) supera las {MAP_MATRIX_MAX_SIZE} celdas de HGSS")
        crop[z["group"]] = (r0, c0)
        has_headers, has_alt = bool(g["headers"]), bool(g["altitudes"])
        name = z["group"].encode()[:16]
        data = bytes([w, h, int(has_headers), int(has_alt), len(name)]) + name
        cells = [(r, c) for r in range(r0, r0 + h) for c in range(c0, c0 + w)]
        if has_headers:
            data += struct.pack(f"<{w * h}H", *[header_ids.get(g["headers"][r][c], 0) for r, c in cells])
        if has_alt:
            data += bytes(g["altitudes"][r][c] for r, c in cells)
        data += struct.pack(f"<{w * h}H", *[MAP_NONE if g["maps"][r][c] == "MAP_NONE"
                                            else land_index(num(g["maps"][r][c]), key[1]) for r, c in cells])
        matrix_remap[key] = len(matrix.files)
        matrix.files.append(data)
    save("a/0/6/5", land)
    save("a/0/4/1", matrix)

    def to_hg(group, x, z):
        r0, c0 = crop[group]
        return x - c0 * TILES_PER_CELL, z - r0 * TILES_PER_CELL

    # --- eventos y cabeceras ----------------------------------------------------------------
    events = ndspy.narc.NARC((ROOT / "a/0/3/2").read_bytes())
    marker = REPO / "build" / "sinnoh_events_base.txt"
    if marker.exists():
        events_base = int(marker.read_text())
    else:
        events_base = len(vanilla_narc("a/0/3/2").files)
        marker.parent.mkdir(exist_ok=True)
        marker.write_text(str(events_base))
    del events.files[events_base:]

    apply_debug_doors(events, hg_ids, os.environ.get("SINNOH_DEBUG_WARP") == "1")
    vanilla_events = vanilla_narc("a/0/3/2")
    for map_id, s in PORT_SAILORS.items():
        bank = vanilla_events_bank(map_id)
        sailor = pack_object(SHG_OBJECT_ID, SPRITE_SEAMAN_2, s["script"], 1, s["x"], s["z"])
        events.files[bank] = append_objects(vanilla_events.files[bank], [sailor])

    music = music_mapper()
    headers = ndspy.narc.NARC(vanilla_file(MAP_HEADER_NARC))
    arm9 = vanilla_arm9()
    headers.files = [arm9[HG_MAP_HEADERS_ARM9 + 24 * i:HG_MAP_HEADERS_ARM9 + 24 * (i + 1)] for i in range(NUM_HG_HEADERS)]
    for z in zones:
        warps = [(*to_hg(z["group"], x, zz), y, dest, dw) for x, zz, y, dest, dw in z["warps"]]
        objects = [pack_object(i, o["graphics_id"], o["script"], o["dir"], *to_hg(z["group"], o["x"], o["z"]))
                   for i, o in enumerate(z.get("objects", []))]
        events_bank = len(events.files)
        events.files.append(build_events(warps, objects))
        cls = area_class[z["area"]]
        assert z["hg_map"] == len(headers.files)
        headers.files.append(encode_header(z, area_remap[z["area"]], matrix_remap[(z["group"], cls)], events_bank, music))
    save("a/0/3/2", events)
    save(MAP_HEADER_NARC, headers)

    print(f"Sinnoh: {len(zones)} mapas (cabeceras {NUM_HG_HEADERS}-{len(headers.files) - 1}), "
          f"{len(matrix_remap)} matrices, {len(land_remap)} terrenos, {len(area_remap)} áreas, "
          f"edificios {len(prop_remap['exterior'])} exteriores + {len(prop_remap['interior'])} interiores")


if __name__ == "__main__":
    main()

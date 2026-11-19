#!/usr/bin/env python3
"""
Mapa de Sinnoh para el Pokégear.

Uso:
    python3 tools/sinnoh/sync_pokegear_map.py /ruta/a/pokeplatinum

El mapa del Pokégear de HGSS tiene una casilla de 8x8 por celda de la matriz del mundo. El mapa
de Platino (pantalla de arriba del Mapa) usa 7 píxeles por celda, así que aquí se reescala cada
celda a 8x8 para que el cursor y el jugador caigan en su sitio. Se combinan el fondo (relieve) y
la capa de rutas de Platino.

Genera:
  data/sinnoh/pokegear_map/map.png    mapa (indexado: colores 176-207 de la paleta del Pokégear)
  data/sinnoh/pokegear_map.h          tamaño, zonas del mapa con su nombre y descripción,
                                      posición de cada mapa interior, matriz de Sinnoh
  data/text/1202.txt..1208.txt        textos del mapa en Sinnoh (1208; 1202-1207 vacíos, para
                                      que el número del banco se pueda cargar con dos instrucciones)
"""
import collections
import json
import re
import pathlib
import struct
import sys
import textwrap

from PIL import Image

REPO = pathlib.Path(__file__).resolve().parents[2]
SINNOH = REPO / "data" / "sinnoh"
OUT_DIR = SINNOH / "pokegear_map"
MAIN_GROUP = "TownsAndRoutes"

# celdas de Platino que se dibujan: x 0-29, z 6-28 (lo que tiene relieve en el mapa de Platino)
X_MIN, X_MAX, Z_MIN, Z_MAX = 0, 29, 6, 28
COL_OFFSET = 1 - X_MIN       # columna del fondo del Pokégear = x + COL_OFFSET
ROW_OFFSET = 2 - Z_MIN       # fila del fondo = z + ROW_OFFSET (las filas 0-1 son margen, como en HGSS)
WIDTH = X_MAX + COL_OFFSET + 2
HEIGHT = Z_MAX + ROW_OFFSET + 2
PALETTE_BASE = 176           # colores 176-207 de la paleta del fondo del Pokégear (bancos 11-12)

TEXT_BANK = 1208             # 151 << 3: se carga con "movs r2, #151; lsls r2, #3"
FIRST_FREE_BANK = 1202
SINNOH_FLYPOINT_BASE = 0x40  # puntos de Volar de Sinnoh: banderas 0x12E0 + (n - 0x40) (src/shg_spawns.c)
BLANK_FLAVOR = 9             # mensaje en blanco del banco 273 de HGSS
FIRST_FLAVOR = 10            # los mensajes 10-117 son descripciones en HGSS
LAST_FLAVOR = 117

# áreas del Mapa de Platino cuyas celdas no tienen cabecera en la matriz: mapa del que se toma el nombre
AREA_MAPS = {"mount_coronet": "mt_coronet_1f_south", "battle_frontier": "battle_frontier"}

# descripciones de Platino demasiado largas para las 2 líneas del Pokégear
SHORT_DESCRIPTIONS = {
    "route_203": "A path near a big city that keeps\nits relaxed, natural atmosphere.",
    "route_205_south": "A quiet stream and hilly terrain\nwith ledges for a fun adventure.",
    "route_207": "A road carved into the rugged, rocky\nterrain at the foot of Mt. Coronet.",
    "route_208": "A lush field of grass spreads from\nMt. Coronet’s sheer rock face.",
    "route_211": "A mountain path that tunnels through\nMt. Coronet.",
    "route_217": "Snow blows down from Mt. Coronet\ninto a harsh, ceaseless blizzard.",
    "route_209": "Streams wind past copses and grassy\npatches in a serene manner.",
    "route_210_south": "A narrow route lined with deep,\ntall grass.",
    "route_212_north": "A sturdy wall surrounds an estate\nthat takes up half of the road.",
    "route_214": "A road between Veilstone City and a\nlake. Wildly natural, or a mess.",
    "route_218": "A short road loved by fishing\nenthusiasts as a hidden spot.",
    "route_223": "A marine route full of jutting\nrocks and sandbars.",
    "route_224": "Fields, rocks, sea and sandbars:\nlike a miniature Sinnoh region.",
    "route_226": "A path that winds along sheer cliffs\nby the sea’s pounding waves.",
    "route_227": "A steep mountain path under\nfalling volcanic ash.",
    "route_228": "A rough path raked by a sandstorm\nblown in from the sea.",
    "route_229": "A seaside path through wildly\ngrowing trees and plants.",
    "floaroma_town": "A town of flower lovers, always\nperfumed with sweet flowers.",
    "solaceon_town": "A relaxed and casual town for\npeople and Pokémon to live in.",
    "survival_area": "A town where hot-blooded Trainers\nhone their battling skills.",
    "resort_area": "A town for Trainers who enjoy\nPokémon in ways other than battling.",
    "oreburgh_city": "A vibrant mining town blessed with\na precious natural resource.",
    "eternia_city": "An old city with vestiges of\nancient history.",
    "hearthome_city": "A friendly city where people and\nPokémon gather. A center of commerce.",
    "snowpoint_city": "A winter wonderland blanketed\nin thick snow.",
    "pokemon_league": "Trainers seeking to become the best\narrive here after a long journey.",
    "stark_mountain": "A rugged rock mountain blanketed\nby the volcanic ash it spews.",
    "battle_frontier": "Where the best Trainers gather to\ntest their skill.",
    "victory_road": "The last challenge before the\nPokémon League.",
}


def jasc(path):
    vals = path.read_text().split()[3:]
    return [tuple(int(v) for v in vals[i:i + 3]) for i in range(0, len(vals), 3)]


def nscr_entries(path):
    data = path.read_bytes()
    off = struct.unpack_from("<H", data, 12)[0] + 8
    width, height = struct.unpack_from("<HH", data, off)
    raw = data[off + 12:]
    return width // 8, [struct.unpack_from("<H", raw, 2 * i)[0] for i in range(len(raw) // 2)]


def platinum_map(tmap):
    """Imagen 256x192 del mapa de Platino como índices 0-31 (relieve 0-15, rutas 16-31)."""
    tiles = Image.open(tmap / "top_screen_map_tiles.png")
    px = tiles.load()
    tiles_w = tiles.width // 8
    out = [[0] * 256 for _ in range(192)]

    def draw(nscr, route_layer):
        width, entries = nscr_entries(tmap / nscr)
        for i, e in enumerate(entries):
            x0, y0 = (i % width) * 8, (i // width) * 8
            if y0 >= 192 or x0 >= 256:
                continue
            tile, bank = e & 0x3FF, e >> 12
            if route_layer and bank == 0:
                continue                    # recuadros verdes de la interfaz de Platino
            for y in range(8):
                for x in range(8):
                    sx = 7 - x if e & 0x400 else x
                    sy = 7 - y if e & 0x800 else y
                    c = px[(tile % tiles_w) * 8 + sx, (tile // tiles_w) * 8 + sy] // 17
                    if route_layer and (c == 0 or c == 15):
                        continue
                    out[y0 + y][x0 + x] = 16 * bank + c
    draw("top_screen_region_bg_tilemap.NSCR", False)
    draw("top_screen_region_map_tilemap.NSCR", True)
    return out


def build_image(tmap):
    """Mapa de Platino (data/sinnoh/pokegear_map/platinum_town_map.png: la zona de 216x168 del Mapa
    de la pantalla de arriba, con sus colores del juego) reescalado a 8x8 por celda."""
    ref = Image.open(OUT_DIR / "platinum_town_map.png").convert("RGB")
    q = ref.quantize(colors=32, method=Image.Quantize.MEDIANCUT)
    qpx = q.load()
    qpal = q.getpalette()[:96]
    img = Image.new("P", (WIDTH * 8, HEIGHT * 8), PALETTE_BASE)
    pal = [0, 0, 0] * 256
    pal[3 * PALETTE_BASE:3 * PALETTE_BASE + 96] = qpal
    img.putpalette(pal)
    px = img.load()
    border = qpx[0, ref.height - 1]     # color del borde (mar) para las casillas fuera del mapa
    for y in range(img.height):
        for x in range(img.width):
            px[x, y] = PALETTE_BASE + border
    for z in range(Z_MIN, Z_MAX + 1):
        for x in range(X_MIN, X_MAX + 1):
            # celda (x, z) de Platino: 7x7 píxeles centrados en (7x + 25, 7z - 34) de la pantalla;
            # la imagen empieza en el píxel (16, 0)
            sx0, sy0 = 7 * x + 22 - 16, 7 * z - 37
            col, row = x + COL_OFFSET, z + ROW_OFFSET
            for y in range(8):
                for xx in range(8):
                    rx = min(ref.width - 1, max(0, sx0 + xx * 7 // 8))
                    ry = min(ref.height - 1, max(0, sy0 + y * 7 // 8))
                    px[col * 8 + xx, row * 8 + y] = PALETTE_BASE + qpx[rx, ry]
    OUT_DIR.mkdir(exist_ok=True)
    img.save(OUT_DIR / "map.png")


def stem_of(header):
    return header.removeprefix("MAP_HEADER_").lower()


def rectangles(grid):
    """Cubre las celdas con el mismo valor con rectángulos (como mucho 15x15)."""
    done = set()
    rects = []
    for (x, z), value in sorted(grid.items(), key=lambda kv: (kv[0][1], kv[0][0])):
        if (x, z) in done:
            continue
        w = 1
        while w < 15 and grid.get((x + w, z)) == value and (x + w, z) not in done:
            w += 1
        h = 1
        while h < 15 and all(grid.get((x + i, z + h)) == value and (x + i, z + h) not in done
                             for i in range(w)):
            h += 1
        for i in range(w):
            for j in range(h):
                done.add((x + i, z + j))
        rects.append((x, z, w, h, value))
    return rects


def description(area):
    if area in SHORT_DESCRIPTIONS:
        return SHORT_DESCRIPTIONS[area]
    text = " ".join("".join(AREAS[area]["description"]["en_US"]).split())
    lines = textwrap.wrap(text, 38)
    if len(lines) > 2:   # solo la primera frase
        lines = textwrap.wrap(re.split(r"(?<!Mt)\. ", text)[0].rstrip(".") + ".", 38)
    assert len(lines) <= 2, (area, lines)
    return "\n".join(lines)


def main():
    global AREAS
    plat = pathlib.Path(sys.argv[1])
    build_image(plat / "res" / "graphics" / "town_map")

    tmdata = json.loads((plat / "res" / "town_map" / "town_map_data.json").read_text())
    AREAS = tmdata["areas"]
    zones = json.loads((SINNOH / "zones.json").read_text())["zones"]
    by_stem = {z["stem"]: z for z in zones}
    group = json.loads((SINNOH / "groups" / f"{MAIN_GROUP}.json").read_text())
    rows = [r for r, row in enumerate(group["maps"]) if any(m != "MAP_NONE" for m in row)]
    cols = [c for c in range(len(group["maps"][0])) if any(row[c] != "MAP_NONE" for row in group["maps"])]
    crop_row, crop_col = rows[0], cols[0]

    # mapa de HGSS de cada celda de la matriz principal
    cell_map = {}
    for z, row in enumerate(group["headers"]):
        for x, header in enumerate(row):
            zone = by_stem.get(stem_of(header))
            if zone:
                cell_map[(x, z)] = zone["hg_map"]

    # descripciones: área de Platino de cada celda (bloques del Mapa de Platino)
    cell_area = {(b["x"], b["z"]): b["area"] for b in tmdata["blocks"] if b["area"]}
    # celdas sin cabecera propia en la matriz (MAP_HEADER_EVERYWHERE) pero con área en el Mapa
    for cell, area in cell_area.items():
        if cell not in cell_map and area in AREA_MAPS:
            cell_map[cell] = by_stem[AREA_MAPS[area]]["hg_map"]
    flavor_of_area = {}
    messages = (REPO / "tools" / "sinnoh" / "pokegear_map_base.txt").read_text().split("\n")[:LAST_FLAVOR + 1]
    messages[1] = "Sinnoh"
    for i in range(FIRST_FLAVOR, LAST_FLAVOR + 1):
        messages[i] = messages[BLANK_FLAVOR]

    def flavor(area):
        if area is None or area not in AREAS:
            return BLANK_FLAVOR
        if area not in flavor_of_area:
            index = FIRST_FLAVOR + len(flavor_of_area)
            assert index <= LAST_FLAVOR
            flavor_of_area[area] = index
            messages[index] = description(area).replace("\n", "\\n")
        return flavor_of_area[area]

    visible = {k: v for k, v in cell_map.items() if X_MIN <= k[0] <= X_MAX and Z_MIN <= k[1] <= Z_MAX}
    specs = []
    for x, z, w, h, map_id in rectangles(visible):
        areas = collections.Counter(cell_area.get((x + i, z + j)) for i in range(w) for j in range(h))
        areas.pop(None, None)
        area = areas.most_common(1)[0][0] if areas else None
        specs.append((map_id, x + COL_OFFSET, z + ROW_OFFSET, w, h, flavor(area)))
    assert len(specs) <= 255, len(specs)

    # mapas fuera de la matriz principal: celda de la entrada desde el exterior más cercano
    entrances = collections.defaultdict(list)   # mapa destino -> [(mapa origen, x, z)]
    for zone in zones:
        for wx, wz, _, dest, _ in zone.get("warps", []):
            if dest != 4095:
                entrances[dest].append((zone, wx, wz))
    position = {}
    queue = collections.deque()
    for zone in zones:
        if zone["group"] == MAIN_GROUP:
            queue.append(zone["hg_map"])
    outside = set(queue)
    while queue:
        src = queue.popleft()
        for zone in zones:
            if zone["hg_map"] in position or zone["hg_map"] in outside:
                continue
            for origin, wx, wz in entrances[zone["hg_map"]]:
                if origin["hg_map"] == src:
                    if origin["group"] == MAIN_GROUP:
                        cell = (wx // 32, wz // 32)
                    else:
                        cell = position[src]
                    position[zone["hg_map"]] = cell
                    queue.append(zone["hg_map"])
                    break

    def clamp(cell):
        return (min(X_MAX, max(X_MIN, cell[0])), min(Z_MAX, max(Z_MIN, cell[1])))

    lines = [
        "// Generado por tools/sinnoh/sync_pokegear_map.py: mapa de Sinnoh del Pokégear.",
        "#pragma once",
        f"#define SHG_PGMAP_WIDTH {WIDTH}",
        f"#define SHG_PGMAP_HEIGHT {HEIGHT}",
        f"#define SHG_PGMAP_COL_OFFSET {COL_OFFSET}",
        f"#define SHG_PGMAP_ROW_OFFSET {ROW_OFFSET}",
        f"#define SHG_PGMAP_X_MIN {X_MIN}",
        f"#define SHG_PGMAP_X_MAX {X_MAX}",
        f"#define SHG_PGMAP_Z_MIN {Z_MIN}",
        f"#define SHG_PGMAP_Z_MAX {Z_MAX}",
        f"#define SHG_PGMAP_CROP_COL {crop_col}   // la matriz de HGSS empieza en esta celda de Platino",
        f"#define SHG_PGMAP_CROP_ROW {crop_row}",
        f"#define SHG_PGMAP_TEXT_BANK_IMM {TEXT_BANK >> 3}",
        f"#define SHG_PGMAP_NUM_SPECS {len(specs)}",
        "",
        "// mapa, columna y fila del fondo, ancho y alto, descripción (mismo formato que HGSS)",
        "static const struct ShgPokegearMapSpec sShgPokegearMapSpecs[SHG_PGMAP_NUM_SPECS] = {",
    ]
    for map_id, col, row, w, h, fl in specs:
        lines.append(f"    {{ {map_id}, {col}, {row}, {w} | ({h} << 4), {fl}, 0, {{0}}, 0, 0, 0, 0 }},")
    lines += ["};", "",
              "// mapa de HGSS de cada celda de la matriz principal de Sinnoh (0 = ninguno)",
              f"static const u16 sShgSinnohCells[{len(group['headers'])}][{len(group['headers'][0])}] = {{"]
    for z, row in enumerate(group["headers"]):
        lines.append("    { " + ", ".join(str(cell_map.get((x, z), 0)) for x in range(len(row))) + " },")
    lines += ["};", "",
              "// mapas fuera de la matriz principal: celda de Platino de su entrada desde fuera",
              "static const struct ShgPokegearMapPos sShgPokegearMapPositions[] = {"]
    for map_id in sorted(position):
        x, z = clamp(position[map_id])
        lines.append(f"    {{ {map_id}, {x}, {z} }},")
    lines += ["};", ""]
    (SINNOH / "pokegear_map.h").write_text("\n".join(lines))

    # puntos de Volar y de reaparición (Pokémon Center) de Platino (src/spawn_locations.c)
    spawn_src = (plat / "src" / "spawn_locations.c").read_text()
    spawns = []
    for m in re.finditer(r"\{ MAP_HEADER_(\w+), (0x[0-9A-F]+|\d+), (0x[0-9A-F]+|\d+), MAP_HEADER_(\w+), "
                         r"(0x[0-9A-F]+|\d+), (0x[0-9A-F]+|\d+), (0x[01]|\d), (0x[01]|\d), (\w+) \}", spawn_src):
        black, bx, bz, fly, fx, fz, is_warp, _, _ = m.groups()
        black_zone, fly_zone = by_stem.get(black.lower()), by_stem.get(fly.lower())
        if not fly_zone:
            continue
        spawns.append(dict(black=black_zone["hg_map"] if black_zone else 0, bx=int(bx, 0), bz=int(bz, 0),
                           fly=fly_zone["hg_map"], fx=int(fx, 0) - crop_col * 32, fz=int(fz, 0) - crop_row * 32,
                           warp=int(is_warp, 0) if black_zone else 0))
    flypoints = []
    for i, sp in enumerate(spawns):
        if any(f["fly"] == sp["fly"] for f in flypoints):
            continue
        cells = [c for c, v in cell_map.items() if v == sp["fly"]]
        xs, zs = [c[0] for c in cells], [c[1] for c in cells]
        flypoints.append(dict(fly=sp["fly"], flag=SINNOH_FLYPOINT_BASE + i, x=min(xs) + COL_OFFSET,
                              y=min(zs) + ROW_OFFSET - 2, w=max(xs) - min(xs) + 1, h=max(zs) - min(zs) + 1))
    assert len(flypoints) <= 27 and len(spawns) <= 31
    extra = [
        "// reaparición y Volar en Sinnoh (spawn_locations.c de Platino; coordenadas de la matriz de HGSS)",
        f"#define SHG_NUM_SINNOH_SPAWNS {len(spawns)}",
        "static const struct ShgSpawn sShgSinnohSpawns[SHG_NUM_SINNOH_SPAWNS] = {",
    ]
    for sp in spawns:
        extra.append(f"    {{ {sp['black']}, {sp['bx']}, {sp['bz']}, {sp['fly']}, {sp['fx']}, {sp['fz']}, {sp['warp']} }},")
    extra += ["};", "",
              "// puntos de Volar del mapa del Pokégear (= MapFlypointParam de HGSS; 27 como en HGSS)",
              "static const struct ShgFlypoint sShgSinnohFlypoints[27] = {"]
    for f in flypoints:
        extra.append(f"    {{ {f['fly']}, {f['fly']}, 0x{f['flag']:02X}, 0xFF, {f['x']}, {f['y']}, 0, 0, "
                     f"{f['w']} | ({f['h']} << 4), 0, 0 }},")
    for _ in range(27 - len(flypoints)):
        extra.append("    { 0, 0, 0x5F, 0xFF, 0, 0, 0, 0, 0, 0, 0 },   // sin usar (bandera que nunca se pone)")
    extra += ["};", ""]
    (SINNOH / "pokegear_map.h").write_text((SINNOH / "pokegear_map.h").read_text() + "\n".join(extra))

    text_dir = REPO / "data" / "text"
    events = json.loads((SINNOH / "events.json").read_text())
    assert max(events["text_banks"]) < FIRST_FREE_BANK, "los textos de los mapas llegan a los del Pokégear"
    for bank in range(FIRST_FREE_BANK, TEXT_BANK):
        (text_dir / f"{bank}.txt").write_text("\n")
    (text_dir / f"{TEXT_BANK}.txt").write_text("\n".join(messages) + "\n")
    print(f"mapa {WIDTH}x{HEIGHT}, {len(specs)} zonas, {len(flavor_of_area)} descripciones, "
          f"{len(position)} mapas interiores; matriz recortada desde ({crop_col}, {crop_row})")


if __name__ == "__main__":
    main()

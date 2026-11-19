#!/usr/bin/env python3
"""
Prepara en data/sinnoh/ todo lo que el importador necesita para meter Sinnoh en HGSS, sacado de
un checkout del decomp de Platino (https://github.com/pret/pokeplatinum).

Uso:
    python3 tools/sinnoh/sync_from_pokeplatinum.py /ruta/a/pokeplatinum

Genera (y se versiona en la repo, así que compilar no requiere pokeplatinum):
  data/sinnoh/zones.json            una entrada por cabecera de Sinnoh importada, con su ID de HGSS,
                                    nombre de lugar, tipo de mapa, música, área, matriz y warps
  data/sinnoh/groups/*.json         matrices de mapas (exterior de Sinnoh e interiores)
  data/sinnoh/land_data/*.bin       terreno de Platino
  data/sinnoh/area_data, map_textures, props/...   texturas y edificios
  include/superhearthgold_maps.h    número total de cabeceras (para src/shg_map_headers.c)
  data/scr_seq/include/sinnoh_maps.inc   constantes MAP_SHG_* para los scripts

Los ajustes a mano (NPCs, scripts propios de una zona...) van en data/sinnoh/zone_overrides.json,
que este script no toca.
"""
import json
import pathlib
import re
import shutil
import sys

REPO = pathlib.Path(__file__).resolve().parents[2]
DEST = REPO / "data" / "sinnoh"

NUM_HG_HEADERS = 540          # cabeceras de HGSS; las de Sinnoh empiezan detrás
MAP_HEADER_DYNAMIC = 4095     # mismo valor en Platino y en HGSS ("volver al último warp")

# Cabeceras de Platino que no se importan: dependen de sistemas que HGSS no tiene (Subsuelo,
# Mundo Distorsión, Frente Batalla, Wi-Fi, concursos), son variantes de la historia que no se
# usan sin la trama, o no se usan en Platino.
EXCLUDE = re.compile(r"""^(
    everywhere | nothing |
    underground .* | distortion_world .* | turnback_cave_giratina_room |
    spear_pillar_distorted | spear_pillar_dialga | spear_pillar_palkia |
    communication_club .* | record_mixing_room | global_terminal .* | union_room .* |
    wifi_plaza_entrance |
    battle_tower .* | battle_arcade | battle_castle | battle_factory | battle_hall |
    battleground | contest_hall_stage .* |
    eterna_city_dp_gym | hearthome_city_dp_gym .* | pastoria_city_dp_great_marsh |
    lake_verity_low_water | lake_acuity_low_water | lake_valor_drained |
    unknown_ .* | unused_ .*
)$""", re.X)

PLAT_MAP_TYPES = {  # Platino -> (tipo de mapa, cámara, modo del seguidor) de HGSS
    "MAP_TYPE_TOWN_CITY": ("MAP_TYPE_CITY_TOWN", 0, "ALLOW"),
    "MAP_TYPE_OUTDOORS": ("MAP_TYPE_ROUTE", 0, "ALLOW"),
    "MAP_TYPE_CAVE": ("MAP_TYPE_CAVE", 0, "ALLOW"),
    "MAP_TYPE_INDOORS": ("MAP_TYPE_INTERIOR", 4, "HEIGHT_RESTRICT"),
}
PLAT_WEATHER_TO_HG = {  # nombres de Platino -> valores de HGSS (include/constants/weather.h)
    "OVERWORLD_WEATHER_RAINING": 1, "OVERWORLD_WEATHER_HEAVY_RAIN": 2,
    "OVERWORLD_WEATHER_THUNDERSTORM": 3, "OVERWORLD_WEATHER_SNOWING": 5,
    "OVERWORLD_WEATHER_HEAVY_SNOW": 6, "OVERWORLD_WEATHER_BLIZZARD": 6,
    "OVERWORLD_WEATHER_SANDSTORM": 7, "OVERWORLD_WEATHER_FOG": 9, "OVERWORLD_WEATHER_DEEP_FOG": 10,
    "OVERWORLD_WEATHER_DARK_FLASH": 11,
    "OVERWORLD_WEATHER_SNOWPOINT_CITY": 5, "OVERWORLD_WEATHER_ROUTE_216": 5,
    "OVERWORLD_WEATHER_ROUTE_217": 6, "OVERWORLD_WEATHER_ACUITY_LAKEFRONT": 5,
    "OVERWORLD_WEATHER_ROUTE_212_SOUTH": 1,
}
# Los fondos de combate de Platino y HGSS usan la misma numeración (0..22).
PLAT_BATTLE_BGS = [
    "PLAIN", "WATER", "CITY", "FOREST", "MOUNTAIN", "SNOW", "INDOORS_1", "INDOORS_2", "INDOORS_3",
    "CAVE_1", "CAVE_2", "CAVE_3", "AARON", "BERTHA", "FLINT", "LUCIAN", "CYNTHIA",
    "DISTORTION_WORLD", "BATTLE_TOWER", "BATTLE_FACTORY", "BATTLE_ARCADE", "BATTLE_CASTLE",
    "BATTLE_HALL",
]


def camel_to_snake(name):
    return re.sub(r"(?<=[a-z0-9])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])|(?<=[A-Za-z])(?=[0-9])", "_", name).upper()


def load_hg_mapsecs():
    """MAPSEC_* de HGSS desde asm/include/map_sections.inc de hg-engine."""
    secs = {}
    for line in (REPO / "asm" / "include" / "map_sections.inc").read_text().splitlines():
        m = re.match(r"\.equ (MAPSEC_\w+), (\d+)", line.strip())
        if m:
            secs[m.group(1)] = int(m.group(2))
    return secs


MAPSEC_ALIASES = {"TEAM_GALACTIC_ETERNA_BUILDING": "TG_ETERNA_BLDG", "VICTORY_ROAD": "VICTORY_ROAD_S"}


def mapsec_for(location_name, secs):
    base = camel_to_snake(location_name.removeprefix("LocationNames_Text_"))
    base = MAPSEC_ALIASES.get(base, base)
    for cand in (f"MAPSEC_{base}", f"MAPSEC_{base.replace('_', '')}"):
        if cand in secs:
            return secs[cand], True
    return secs.get("MAPSEC_MYSTERY_ZONE", 0), False


def main():
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    plat = pathlib.Path(sys.argv[1])
    field = plat / "res" / "field"
    maps_dir = field / "maps"

    # orden oficial de las cabeceras de Platino (para que los IDs nuevos sean estables)
    enum = (plat / "include" / "constants" / "fieldmap.h").read_text()
    enum = enum[enum.index("enum MapHeaderID"):]
    plat_order = re.findall(r"^\s*(MAP_HEADER_\w+)", enum, re.M)
    stems = [h.removeprefix("MAP_HEADER_").lower() for h in plat_order]
    stems = [s for s in stems if (maps_dir / s / "header.json").exists() and not EXCLUDE.match(s)]

    hg_id = {s: NUM_HG_HEADERS + i for i, s in enumerate(stems)}
    secs = load_hg_mapsecs()

    # warps de todas las cabeceras importadas, para traducir los IDs de warp a índices
    events = {s: json.loads((maps_dir / s / "events.json").read_text()) for s in stems}
    warp_index = {s: {w.get("id", str(i)): i for i, w in enumerate(ev.get("warp_events", []))}
                  for s, ev in events.items()}

    groups = {g["id"]: g for g in json.loads((maps_dir / "groups.json").read_text())}

    zones, used_groups, area_ids, skipped_warps, unnamed = [], set(), set(), 0, set()
    for s in stems:
        h = json.loads((maps_dir / s / "header.json").read_text())
        map_type, camera, follow = PLAT_MAP_TYPES.get(h["mapType"], ("MAP_TYPE_INTERIOR", 4, "HEIGHT_RESTRICT"))
        bg = h["battleBackground"].removeprefix("BACKGROUND_")
        mapsec, found = mapsec_for(h["locationName"], secs)
        if not found:
            unnamed.add(h["locationName"])
        warps = []
        for w in events[s].get("warp_events", []):
            dest = w["dest_header_id"]
            dest_stem = dest.removeprefix("MAP_HEADER_").lower()
            if dest == "MAP_HEADER_DYNAMIC":
                dest_id, dest_warp = MAP_HEADER_DYNAMIC, 0
            elif dest_stem in hg_id:
                dest_id = hg_id[dest_stem]
                dw = w.get("dest_warp_id", 0)
                dest_warp = dw if isinstance(dw, int) else warp_index[dest_stem].get(dw, 0)
            else:
                # destino no importado: vuelve al último warp en vez de romper el orden de la lista
                dest_id, dest_warp = MAP_HEADER_DYNAMIC, 0
                skipped_warps += 1
            warps.append([w["x"], w["z"], w.get("y", 0), dest_id, dest_warp])
        zones.append({
            "stem": s,
            "hg_map": hg_id[s],
            "group": h["mapGroup"],
            "area": h["areaData"],
            "mapsec": mapsec,
            "map_type": map_type,
            "camera": camera,
            "follow": follow,
            "battle_bg": PLAT_BATTLE_BGS.index(bg) if bg in PLAT_BATTLE_BGS else 0,
            "weather": PLAT_WEATHER_TO_HG.get(h["weather"], 0),
            "music_day": h["musicDay"].removesuffix("_sseq"),
            "music_night": h["musicNight"].removesuffix("_sseq"),
            "bike": h["isBikeAllowed"], "escape_rope": h["isEscapeRopeAllowed"], "fly": h["isFlyAllowed"],
            "warps": warps,
        })
        used_groups.add(h["mapGroup"])
        area_ids.add(h["areaData"])

    # --- recursos -------------------------------------------------------------------------
    for sub in ["groups", "land_data", "area_data", "map_textures", "props/model_sets",
                "props/texture_sets", "props/models", "matrix", "headers"]:
        d = DEST / sub
        if d.exists():
            shutil.rmtree(d)
        if sub not in ("matrix", "headers"):  # carpetas de una versión anterior
            d.mkdir(parents=True)

    land_ids = set()
    for gid in sorted(used_groups):
        g = groups[gid]
        (DEST / "groups" / f"{gid}.json").write_text(json.dumps(g, indent=1))
        for row in g["maps"]:
            for m in row:
                if m != "MAP_NONE":
                    land_ids.add(int(m.split("_")[1]))
    for i in sorted(land_ids):
        shutil.copy(field / "mapmodels" / "data" / f"map_data_{i:03d}.bin", DEST / "land_data")

    tex_sets, prop_sets = set(), set()
    for a in sorted(area_ids):
        area = json.loads((field / "area_data" / f"{a}.json").read_text())
        (DEST / "area_data" / f"{a}.json").write_text(json.dumps(area, indent=2))
        tex_sets.add(area["mapTextureSet"])
        prop_sets.add(area["mapPropSet"])
    for t in sorted(tex_sets):
        shutil.copy(field / "mapmodels" / "texture_sets" / f"{t}.nsbtx", DEST / "map_textures")
    # iluminación de las áreas (import_sinnoh.py la pasa al formato de texto de HGSS)
    (DEST / "lighting").mkdir(exist_ok=True)
    for f in (field / "lighting").glob("lighting_set_*.json"):
        shutil.copy(f, DEST / "lighting")

    order = (field / "props" / "models" / "map_prop_models.order").read_text().split()
    (DEST / "props" / "models" / "map_prop_models.order").write_text("\n".join(order) + "\n")
    shutil.copy(plat / "res" / "prebuilt" / "fielddata" / "build_model" / "build_model_matshp.dat", DEST / "props")
    used_models = set()
    for p in sorted(prop_sets):
        shutil.copy(field / "props" / "model_sets" / f"{p}.json", DEST / "props" / "model_sets")
        tex = p.replace("prop_model_set", "prop_texture_set")
        shutil.copy(field / "props" / "texture_sets" / f"{tex}.nsbtx", DEST / "props" / "texture_sets")
        for m in json.loads((field / "props" / "model_sets" / f"{p}.json").read_text())["mapPropModels"]:
            used_models.add(m.removesuffix("_nsbmd") + ".nsbmd")
    for m in sorted(used_models):
        shutil.copy(field / "props" / "models" / m, DEST / "props" / "models")

    # animaciones de edificios (puertas, fuentes, molinos...): lista por modelo y archivos
    anim_dir = DEST / "props" / "animations"
    if anim_dir.exists():
        shutil.rmtree(anim_dir)
    anim_dir.mkdir(parents=True)
    shutil.copy(plat / "res" / "prebuilt" / "arc" / "bm_anime_list.narc", DEST / "props")
    for f in sorted((field / "props" / "animations").glob("prop_animation_*.nsb*")):
        shutil.copy(f, anim_dir)

    (DEST / "zones.json").write_text(json.dumps(
        {"_comment": "Generado por tools/sinnoh/sync_from_pokeplatinum.py; los ajustes a mano van en zone_overrides.json.",
         "zones": zones}, indent=1, ensure_ascii=False) + "\n")

    # --- constantes para C y para los scripts ---------------------------------------------
    total = NUM_HG_HEADERS + len(zones)
    (REPO / "include" / "superhearthgold_maps.h").write_text(
        "// Generado por tools/sinnoh/sync_from_pokeplatinum.py\n"
        "#ifndef SUPERHEARTHGOLD_MAPS_H\n#define SUPERHEARTHGOLD_MAPS_H\n\n"
        f"#define SHG_NUM_MAP_HEADERS {total}\n\n"
        + "".join(f"#define MAP_SHG_{z['stem'].upper()} {z['hg_map']}\n" for z in zones)
        + "\n#endif\n")
    (REPO / "data" / "scr_seq" / "include" / "sinnoh_maps.inc").write_text(
        "// Generado por tools/sinnoh/sync_from_pokeplatinum.py: IDs de HGSS de los mapas de Sinnoh\n"
        + "".join(f".equ MAP_SHG_{z['stem'].upper()}, {z['hg_map']}\n" for z in zones))

    print(f"{len(zones)} cabeceras (IDs {NUM_HG_HEADERS}-{total - 1}), {len(used_groups)} matrices, "
          f"{len(land_ids)} terrenos, {len(area_ids)} áreas, {len(tex_sets)} texturas de mapa, "
          f"{len(prop_sets)} sets de edificios, {len(used_models)} modelos; "
          f"{skipped_warps} warps a mapas no importados")
    if unnamed:
        print("Sin nombre de lugar en HGSS (se usa Zona Misteriosa):", ", ".join(sorted(unnamed)))


if __name__ == "__main__":
    main()

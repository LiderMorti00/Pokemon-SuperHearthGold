#!/usr/bin/env python3
"""
Copia a data/sinnoh/ los recursos de Sinnoh que necesita el importador, sacados de un
checkout del decomp de Platino (https://github.com/pret/pokeplatinum).

Uso:
    python3 tools/sinnoh/sync_from_pokeplatinum.py /ruta/a/pokeplatinum

Solo hace falta ejecutarlo para traer mapas nuevos; el resultado se versiona en la repo,
así que compilar no requiere tener pokeplatinum.
"""
import json
import pathlib
import shutil
import sys

# Cabeceras de Platino cuyos mapas exteriores se importan (ver data/sinnoh/zones.json).
REPO = pathlib.Path(__file__).resolve().parents[2]
DEST = REPO / "data" / "sinnoh"


def main():
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    src = pathlib.Path(sys.argv[1]) / "res" / "field"
    zones = json.loads((DEST / "zones.json").read_text())

    groups = json.loads((src / "maps" / "groups.json").read_text())
    overworld = next(g for g in groups if g["id"] == "TownsAndRoutes")
    wanted = {z["platinum_header"] for z in zones["zones"]}

    # matriz principal de Sinnoh (cabeceras, alturas y terreno por celda)
    (DEST / "matrix").mkdir(parents=True, exist_ok=True)
    (DEST / "matrix" / "towns_and_routes.json").write_text(json.dumps(overworld, indent=1))

    # terreno de las celdas que pertenecen a las zonas importadas
    land_ids = set()
    for r, row in enumerate(overworld["headers"]):
        for c, header in enumerate(row):
            if header in wanted and overworld["maps"][r][c] != "MAP_NONE":
                land_ids.add(int(overworld["maps"][r][c].split("_")[1]))
    land_dir = DEST / "land_data"
    land_dir.mkdir(exist_ok=True)
    for i in sorted(land_ids):
        shutil.copy(src / "mapmodels" / "data" / f"map_data_{i:03d}.bin", land_dir)

    # cabeceras y datos de área de cada zona
    area_ids = set()
    (DEST / "headers").mkdir(exist_ok=True)
    for z in zones["zones"]:
        stem = z["platinum_header"].removeprefix("MAP_HEADER_").lower()
        header = json.loads((src / "maps" / stem / "header.json").read_text())
        (DEST / "headers" / f"{stem}.json").write_text(json.dumps(header, indent=2))
        area_ids.add(int(header["areaData"].split("_")[-1]))

    (DEST / "area_data").mkdir(exist_ok=True)
    tex_sets, prop_sets = set(), set()
    for a in sorted(area_ids):
        area = json.loads((src / "area_data" / f"area_data_{a:03d}.json").read_text())
        (DEST / "area_data" / f"area_data_{a:03d}.json").write_text(json.dumps(area, indent=2))
        tex_sets.add(area["mapTextureSet"])
        prop_sets.add(area["mapPropSet"])

    (DEST / "map_textures").mkdir(exist_ok=True)
    for t in sorted(tex_sets):
        shutil.copy(src / "mapmodels" / "texture_sets" / f"{t}.nsbtx", DEST / "map_textures")

    (DEST / "props" / "model_sets").mkdir(parents=True, exist_ok=True)
    (DEST / "props" / "texture_sets").mkdir(parents=True, exist_ok=True)
    (DEST / "props" / "models").mkdir(parents=True, exist_ok=True)
    order = (src / "props" / "models" / "map_prop_models.order").read_text().split()
    (DEST / "props" / "models" / "map_prop_models.order").write_text("\n".join(order) + "\n")
    used_models = set()
    for p in sorted(prop_sets):
        shutil.copy(src / "props" / "model_sets" / f"{p}.json", DEST / "props" / "model_sets")
        tex = p.replace("prop_model_set", "prop_texture_set")
        shutil.copy(src / "props" / "texture_sets" / f"{tex}.nsbtx", DEST / "props" / "texture_sets")
        for m in json.loads((src / "props" / "model_sets" / f"{p}.json").read_text())["mapPropModels"]:
            used_models.add(m.removesuffix("_nsbmd") + ".nsbmd")
    shutil.copy(pathlib.Path(sys.argv[1]) / "res" / "prebuilt" / "fielddata" / "build_model" / "build_model_matshp.dat",
                DEST / "props")
    for m in sorted(used_models):
        shutil.copy(src / "props" / "models" / m, DEST / "props" / "models")

    print(f"{len(land_ids)} mapas de terreno, {len(area_ids)} áreas, {len(tex_sets)} texturas de mapa, "
          f"{len(prop_sets)} sets de edificios, {len(used_models)} modelos de edificio")


if __name__ == "__main__":
    main()

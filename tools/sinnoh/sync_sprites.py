#!/usr/bin/env python3
"""
Sprites de mapa de Platino para los objetos de Sinnoh.

Uso:
    python3 tools/sinnoh/sync_sprites.py /ruta/a/pokeplatinum /ruta/a/pokeheartgold

Los sprites de Platino (OBJ_EVENT_GFX_*) con índice < 146 son los mismos que en HGSS (vienen de
Diamante y Perla), salvo los que HGSS quitó de su tabla. A partir del 146 los índices ya no
coinciden. Este script decide para cada sprite de Platino qué sprite de HGSS se usa:

  - el mismo índice, si HGSS lo tiene y es < 146;
  - un sprite de HGSS equivalente (Pokémon -> sprites de Pokémon acompañante de hg-engine, etc.);
  - un sprite NPC nuevo convertido del PNG de Platino (Alto Mando, recepcionistas, guías de
    gimnasio...). hg-engine los añade con la etiqueta 7000 + n (NEW_NPC_ENTRY).

Genera:
  data/graphics/overworlds/custom/NNNN.png/.json/NNNN-man3.pal   sprites nuevos (2_NNNN en a/0/8/1)
  data/sinnoh/npc_overworlds.h                                   entradas para overworld_table.c
  data/sinnoh/sprites.json                                       sprite de Platino -> sprite de HGSS
"""
import json
import pathlib
import re
import sys

from PIL import Image

REPO = pathlib.Path(__file__).resolve().parents[2]
OW_DIR = REPO / "data" / "graphics" / "overworlds"
CUSTOM = OW_DIR / "custom"
TEMPLATE = "0010"            # man3: NPC normal de 16 fotogramas de 32x32
TEMPLATE_NAME = "man3"
NEW_NPC_TAG_START = 7000
MON_OVERWORLD_TAG_START = 2500
SAME_INDEX_LIMIT = 146

# sprites de Platino que se sustituyen por uno de HGSS (nombre del sprite de HGSS)
HG_EQUIVALENT = {
    "POKECENTER_NURSE": "SPRITE_PCWOMAN1",
    "CYNTHIA": "SPRITE_CHAMPION",
    "SWIMMER_M": "SPRITE_GSSWIMMERM",
    "SWIMMER_F": "SPRITE_GSSWIMMERW",
    "POKEBALL": "SPRITE_MONSTARBALL",
    "INVISIBLE": "SPRITE_STOP",
    "MOSS_ROCK": "SPRITE_ROCK",
    "ICE_ROCK": "SPRITE_ROCK",
    "PROF_OAK": "SPRITE_OOKIDO",
    "BABY_IN_PRAM": None,   # sin equivalente; se convierte
}
# sprites de Pokémon de Platino que no se llaman igual que el acompañante de HGSS
POKEMON_RENAMES = {"GIRATINA_ALTERED": "GIRATINA", "PIKACHU_UNUSED": "PIKACHU", "ROTOM_HEAT": "ROTOM_HEAT"}
# objetos sin sprite: los carteles son modelos 3D (se colocan como edificios), el resto no se usa
NOT_SPRITES = {"MAP_SIGNPOST", "MAILBOX", "SIGNBOARD", "ARROW_SIGNPOST", "GYM_SIGNPOST",
               "TRAINER_TIPS_SIGNPOST", "BOOK", "ELITE_FOUR_ROOM_DOOR", "WALL_BLOCKING_ROTOMS_ROOM",
               "BERRY_SOIL", "BERRY_SPROUT", "VENT", "BOLLARD", "SNOWBALL", "GALACTIC_HQ_DOOR",
               "CAVE_PAINTING", "BRIEFCASE",
               # trama de Platino (no se importa)
               "CYRUS", "MARS", "SATURN", "JUPITER", "CHARON", "GRUNT_M", "GRUNT_F", "BARRY", "LOOKER",
               "MOM", "UNUSED_MAN", "UNUSED_RECEPTIONIST", "MYSTERY_GIFT_DELIVERYMAN"}


def hg_sprite_table(hg):
    names = {k: int(v) for k, v in re.findall(r"#define (SPRITE_\w+)\s+(\d+)",
                                               (hg / "include/constants/sprites.h").read_text())}
    in_table = set(re.findall(r"\.short (SPRITE_\w+), MMODEL",
                              (hg / "asm/overlay_01_sprite_data.s").read_text()))
    return {k: v for k, v in names.items() if k in in_table}


def convert_png(src, dst_stem):
    """PNG de Platino (16 fotogramas, nombre.1-16 en orden) -> formato de hg-engine con los nombres
    y el diccionario de la plantilla man3 (los fotogramas se guardan sin deduplicar)."""
    im = Image.open(src)
    if im.mode != "P" or im.size != (32, 512):
        return False
    im.save(f"{dst_stem}.png")
    template = json.loads((OW_DIR / f"{TEMPLATE}.json").read_text())
    for name, frame in template["frames"].items():
        frame["frame"] = int(name.split(".")[1]) - 1
    pathlib.Path(f"{dst_stem}.json").write_text(json.dumps(template, indent="\t") + "\n")
    pal = im.getpalette()[:48]
    pal += [0] * (48 - len(pal))
    lines = ["JASC-PAL", "0100", "16"] + [f"{pal[i]} {pal[i + 1]} {pal[i + 2]}" for i in range(0, 48, 3)]
    pathlib.Path(f"{dst_stem}-{TEMPLATE_NAME}.pal").write_text("\r\n".join(lines) + "\r\n")
    return True


def main():
    plat = pathlib.Path(sys.argv[1] if len(sys.argv) > 1 else "/home/claude/src/pokeplatinum")
    hg = pathlib.Path(sys.argv[2] if len(sys.argv) > 2 else "/home/claude/src/pokeheartgold")
    gfx = (plat / "generated" / "object_events_gfx.txt").read_text().split()
    table = hg_sprite_table(hg)
    # hg-engine cambió los sprites de Pokémon: ahora son las etiquetas 2500 + especie
    engine_src = re.sub(r"//.*", "", (REPO / "src" / "field" / "overworld_table.c").read_text())
    engine_tags = {int(t) for t in re.findall(r"\.tag = (\d+)", engine_src)}
    species_ids = {k: int(v) for k, v in re.findall(r"#define (SPECIES_\w+)\s+(\d+)",
                                                   (REPO / "include" / "constants" / "species.h").read_text())}
    mon_tags = {sp: MON_OVERWORLD_TAG_START + species_ids[sp]
                for sp in re.findall(r"MON_FOLLOWER_ENTRY\((SPECIES_\w+)", engine_src) if sp in species_ids}
    table = {k: v for k, v in table.items() if v in engine_tags}
    hg_ids = set(table.values())
    npc_dir = plat / "res" / "graphics" / "field_sprites" / "npc"

    CUSTOM.mkdir(parents=True, exist_ok=True)
    for f in CUSTOM.glob("*"):
        f.unlink()

    mapping, new = {}, []
    for i, full in enumerate(gfx):
        name = full.removeprefix("OBJ_EVENT_GFX_")
        if not name or name in NOT_SPRITES:
            continue
        if i < SAME_INDEX_LIMIT and i in hg_ids and name not in HG_EQUIVALENT:
            mapping[i] = i
            continue
        if HG_EQUIVALENT.get(name):
            mapping[i] = table[HG_EQUIVALENT[name]]
            continue
        species = "SPECIES_" + POKEMON_RENAMES.get(name, name)
        if species in mon_tags:
            mapping[i] = mon_tags[species]
            continue
        png = npc_dir / f"{name.lower()}.png"
        if png.exists() and convert_png(png, CUSTOM / f"{len(new):04d}"):
            mapping[i] = NEW_NPC_TAG_START + len(new)
            new.append(name)

    lines = ["// Generado por tools/sinnoh/sync_sprites.py: sprites de NPC de Platino que HGSS no tiene.",
             f"#define SHG_NEW_NPC_COUNT ({len(new)})", "#define SHG_NEW_NPC_ENTRIES \\"]
    lines += [f"    NEW_NPC_ENTRY({n}) /* {name} */ \\" for n, name in enumerate(new)]
    lines.append("")
    (REPO / "data" / "sinnoh" / "npc_overworlds.h").write_text("\n".join(lines) + "\n")
    (REPO / "data" / "sinnoh" / "sprites.json").write_text(json.dumps(
        {"_comment": "Generado por tools/sinnoh/sync_sprites.py: índice OBJ_EVENT_GFX de Platino -> sprite de HGSS",
         "new_npcs": new, "map": {str(k): v for k, v in sorted(mapping.items())}}, indent=1) + "\n")
    print(f"{len(mapping)} sprites de Platino con equivalente; {len(new)} sprites nuevos: {', '.join(new)}")


if __name__ == "__main__":
    main()

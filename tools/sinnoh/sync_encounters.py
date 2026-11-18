#!/usr/bin/env python3
"""
Convierte los Pokémon salvajes de Sinnoh (encounters.json del decomp de Platino) al formato de
HGSS de hg-engine.

Uso:
    python3 tools/sinnoh/sync_encounters.py /ruta/a/pokeplatinum

Genera:
  data/sinnoh/encounters.h     entradas de EncounterData que data/Encounters.c incluye al final
  data/sinnoh/encounters.json  mapa de Sinnoh -> tabla de encuentros (lo usa el importador)

Mañana, día y noche: en Platino hay una lista de 12 huecos de hierba y los huecos 3 y 4 (índices
2 y 3) cambian según sea de día o de noche. HGSS tiene tres listas completas (mañana, día y noche),
así que mañana y día llevan la variante de día de Platino y noche la de noche.

Niveles: Sinnoh es contenido de postgame (después de vencer a Red), así que los niveles de
Platino (2-70) se escalan a 51-85 con nivel = 50 + nivel_platino / 2.

La cabecera de mapa guarda la tabla en un byte (0xFF = sin encuentros) y HGSS usa 0-141, así que
las tablas de Sinnoh van de la 142 a la 254; las tablas idénticas se comparten.
"""
import json
import pathlib
import sys

REPO = pathlib.Path(__file__).resolve().parents[2]
FIRST_BANK = 142
LAST_BANK = 254


def scale(level):
    return 0 if level == 0 else min(100, 50 + (level + 1) // 2)


def slot(e):
    if e["species"] == "SPECIES_NONE":
        return (0, 0, "SPECIES_NONE")
    return (scale(e["level_min"]), scale(e["level_max"]), e["species"])


def convert(enc):
    land = enc.get("land_encounters", [])
    base = [e["species"] for e in land] + ["SPECIES_NONE"] * (12 - len(land))
    levels = [scale(e["level"]) for e in land] + [0] * (12 - len(land))
    day, night = list(base), list(base)
    for i, sp in enumerate(enc.get("day", [])[:2]):
        if sp != "SPECIES_NONE" and base[2 + i] != "SPECIES_NONE":
            day[2 + i] = sp
    for i, sp in enumerate(enc.get("night", [])[:2]):
        if sp != "SPECIES_NONE" and base[2 + i] != "SPECIES_NONE":
            night[2 + i] = sp
    has_land = any(s != "SPECIES_NONE" for s in base)
    fish = lambda key: [slot(e) for e in enc.get(key, [])][:5] + [(0, 0, "SPECIES_NONE")] * (5 - len(enc.get(key, [])[:5]))
    return {
        "rateWalk": enc.get("land_rate", 0) if has_land else 0,
        "rateSurf": enc.get("surf_rate", 0),
        "rateOldRod": enc.get("old_rod_rate", 0),
        "rateGoodRod": enc.get("good_rod_rate", 0),
        "rateSuperRod": enc.get("super_rod_rate", 0),
        "levels": levels, "morning": day, "day": day, "night": night,
        "surf": fish("surf_encounters"), "old": fish("old_rod_encounters"),
        "good": fish("good_rod_encounters"), "super": fish("super_rod_encounters"),
    }


def c_entry(bank, t, comment):
    def species_list(lst):
        return "\n".join(f"                {s}," for s in lst)

    def slots(lst):
        return "\n".join(f"            {{ {a}, {b}, {s} }}," for a, b, s in lst)
    return f"""    // {comment}
    [{bank}] = {{
        .rateWalk = {t['rateWalk']},
        .rateSurf = {t['rateSurf']},
        .rateRockSmash = 0,
        .rateOldRod = {t['rateOldRod']},
        .rateGoodRod = {t['rateGoodRod']},
        .rateSuperRod = {t['rateSuperRod']},
        .landSlots = {{
            .levels = {{ {', '.join(map(str, t['levels']))} }},
            .speciesMorning = {{
{species_list(t['morning'])}
            }},
            .speciesDay = {{
{species_list(t['day'])}
            }},
            .speciesNight = {{
{species_list(t['night'])}
            }},
        }},
        .hoennSoundSpecies = {{ SPECIES_NONE, SPECIES_NONE }},
        .sinnohSoundSpecies = {{ SPECIES_NONE, SPECIES_NONE }},
        .surfSlots = {{
{slots(t['surf'])}
        }},
        .rockSmashSlots = {{
            {{ 0, 0, SPECIES_NONE }},
            {{ 0, 0, SPECIES_NONE }},
        }},
        .oldRodSlots = {{
{slots(t['old'])}
        }},
        .goodRodSlots = {{
{slots(t['good'])}
        }},
        .superRodSlots = {{
{slots(t['super'])}
        }},
        .landSwarm = SPECIES_NONE,
        .surfSwarm = SPECIES_NONE,
        .nightFish = SPECIES_NONE,
        .fishSwarm = SPECIES_NONE,
    }},
"""


def main():
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    maps_dir = pathlib.Path(sys.argv[1]) / "res" / "field" / "maps"
    zones = json.loads((REPO / "data" / "sinnoh" / "zones.json").read_text())["zones"]

    tables, by_key, zone_bank = [], {}, {}
    for z in zones:
        path = maps_dir / z["stem"] / "encounters.json"
        if not path.exists():
            continue
        t = convert(json.loads(path.read_text()))
        if not (t["rateWalk"] or t["rateSurf"] or t["rateOldRod"] or t["rateGoodRod"] or t["rateSuperRod"]):
            continue
        key = json.dumps(t, sort_keys=True)
        if key not in by_key:
            by_key[key] = FIRST_BANK + len(tables)
            tables.append((by_key[key], t, [z["stem"]]))
        else:
            next(x for x in tables if x[0] == by_key[key])[2].append(z["stem"])
        zone_bank[z["stem"]] = by_key[key]
    if FIRST_BANK + len(tables) - 1 > LAST_BANK:
        sys.exit(f"{len(tables)} tablas no caben entre {FIRST_BANK} y {LAST_BANK}")

    out = ["// Generado por tools/sinnoh/sync_encounters.py: Pokémon salvajes de Sinnoh (Platino)",
           "// con niveles de postgame. Se incluye al final del array de data/Encounters.c.", ""]
    for bank, t, stems in tables:
        out.append(c_entry(bank, t, ", ".join(stems[:4]) + (" ..." if len(stems) > 4 else "")))
    (REPO / "data" / "sinnoh" / "encounters.h").write_text("\n".join(out))
    (REPO / "data" / "sinnoh" / "encounters.json").write_text(json.dumps(
        {"_comment": "Generado por tools/sinnoh/sync_encounters.py: mapa -> tabla de encuentros",
         "banks": zone_bank}, indent=1) + "\n")
    print(f"{len(zone_bank)} mapas con Pokémon salvajes, {len(tables)} tablas "
          f"({FIRST_BANK}-{FIRST_BANK + len(tables) - 1})")


if __name__ == "__main__":
    main()

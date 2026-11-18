#!/usr/bin/env python3
"""
Convierte los entrenadores de Sinnoh (decomp de Platino) al formato de hg-engine.

Uso:
    python3 tools/sinnoh/sync_trainers.py /ruta/a/pokeplatinum

Genera:
  data/sinnoh/trainers.h            entradas de sTrainerData que data/Trainers.c incluye al final
  data/sinnoh/trainer_scrdefs.inc   una entrada por entrenador en el script de entrenadores (2_953)
  data/sinnoh/trainers.json         NPCs entrenador de cada mapa y entrenadores de gimnasio y Liga

IDs: hg-engine usa 0-737 y la entrada 739 del script de entrenadores es especial, así que los de
Sinnoh empiezan en el 741 (ver SHG_FIRST_TRAINER en src/shg_trainer_flags.c).

Sin la trama de Platino: no se importan los reclutas ni los comandantes del Equipo Galaxia, ni los
combates contra el rival.

Niveles: postgame. Los entrenadores normales usan nivel = 50 + nivel_platino / 2 y los movimientos
que aprenden por nivel (los fijos de Platino están pensados para niveles bajos). Líderes, Alto Mando
y Campeona usan sus equipos de revancha de Platino (niveles 61-78) con sus movimientos.
"""
import json
import pathlib
import re
import sys

REPO = pathlib.Path(__file__).resolve().parents[2]
FIRST_ID = 741
STD_NPC_TRAINER = 3000
TRAINER_TYPE_NORMAL = 1

CLASS_MAP = {
    "ACE_TRAINER_FEMALE": "ACE_TRAINER_F", "ACE_TRAINER_MALE": "ACE_TRAINER_M",
    "ACE_TRAINER_SNOW_FEMALE": "ACE_TRAINER_F", "ACE_TRAINER_SNOW_MALE": "ACE_TRAINER_M",
    "BREEDER_FEMALE": "PKMN_BREEDER_F", "BREEDER_MALE": "PKMN_BREEDER_M",
    "CYCLIST_FEMALE": "CYCLIST_F", "CYCLIST_MALE": "CYCLIST_M",
    "POKEFAN_FEMALE": "POKEFAN", "POKEFAN_MALE": "POKEFAN_M",
    "PSYCHIC_FEMALE": "PSYCHIC_F", "PSYCHIC_MALE": "PSYCHIC_M",
    "RANGER_FEMALE": "PKMN_RANGER_F", "RANGER_MALE": "PKMN_RANGER_M",
    "SCHOOL_KID_FEMALE": "SCHOOL_KID_F", "SCHOOL_KID_MALE": "SCHOOL_KID_M",
    "SKIER_FEMALE": "SKIER", "SKIER_MALE": "SKIER",
    "SWIMMER_FEMALE": "SWIMMER_F", "SWIMMER_MALE": "SWIMMER_M",
    "TUBER_FEMALE": "TUBER_F", "TUBER_MALE": "TUBER_M",
    "LEADER_WAKE": "LEADER_CRASHER_WAKE",
    # HGSS no tiene clases para el Alto Mando de Sinnoh: se usan las de Johto (cambia el nombre de
    # la clase y el sprite del combate, el nombre del entrenador sí es el de Sinnoh)
    "ELITE_FOUR_AARON": "ELITE_FOUR_WILL", "ELITE_FOUR_BERTHA": "ELITE_FOUR_KAREN",
    "ELITE_FOUR_FLINT": "ELITE_FOUR_BRUNO", "ELITE_FOUR_LUCIAN": "ELITE_FOUR_KOGA",
    "BELLE_AND_PA": "YOUNG_COUPLE", "SIS_AND_BRO": "TWINS", "INTERVIEWERS": "REPORTER",
    "MAID": "WAITRESS",
}
EXCLUDED_CLASSES = {"GALACTIC_GRUNT_MALE", "GALACTIC_GRUNT_FEMALE", "GALACTIC_BOSS", "COMMANDER_MARS",
                    "COMMANDER_JUPITER", "COMMANDER_SATURN", "RIVAL", "PLAYER_MALE", "DP_PLAYER_MALE",
                    "DP_PLAYER_FEMALE"}
AI_MAP = {"AI_FLAG_BASIC": "F_PRIORITIZE_SUPER_EFFECTIVE", "AI_FLAG_EVAL_ATTACK": "F_EVALUATE_ATTACKS",
          "AI_FLAG_EXPERT": "F_EXPERT_ATTACKS", "AI_FLAG_SETUP_FIRST_TURN": "F_PRIORITIZE_STATUS_MOVES",
          "AI_FLAG_RISKY": "F_RISKY_ATTACKS", "AI_FLAG_PRIORITIZE_EXTREMES": "F_PRIORITIZE_DAMAGE"}
MSG_MAP = {
    "TRMSG_PRE_BATTLE": "TRMSG_INTRO", "TRMSG_DEFEAT": "TRMSG_LOSE", "TRMSG_POST_BATTLE": "TRMSG_AFTER",
    "TRMSG_PRE_DOUBLE_BATTLE_1": "TRMSG_DBL_INTRO_1", "TRMSG_DOUBLE_BATTLE_DEFEAT_1": "TRMSG_DBL_LOSE_1",
    "TRMSG_POST_DOUBLE_BATTLE_1": "TRMSG_DBL_AFTER_1", "TRMSG_DOUBLE_BATTLE_NOT_ENOUGH_POKEMON_1": "TRMSG_DBL_1POKE_1",
    "TRMSG_PRE_DOUBLE_BATTLE_2": "TRMSG_DBL_INTRO_2", "TRMSG_DOUBLE_BATTLE_DEFEAT_2": "TRMSG_DBL_LOSE_2",
    "TRMSG_POST_DOUBLE_BATTLE_2": "TRMSG_DBL_AFTER_2", "TRMSG_DOUBLE_BATTLE_NOT_ENOUGH_POKEMON_2": "TRMSG_DBL_1POKE_2",
    "TRMSG_LAST_BATTLER": "TRMSG_LAST_POKE", "TRMSG_LAST_BATTLER_HALF_HP": "TRMSG_LAST_POKE_HALF",
    "TRMSG_FIRST_DAMAGE": "TRMSG_HIT_POKE_FIRST_TIME",
}
MOVE_RENAMES = {"MOVE_FAINT_ATTACK": "MOVE_FEINT_ATTACK", "MOVE_HI_JUMP_KICK": "MOVE_HIGH_JUMP_KICK"}
# Líderes, Alto Mando y Campeona (combates por script, no NPC con vista)
GYM_LEADERS = ["leader_roark", "leader_gardenia", "leader_fantina", "leader_maylene",
               "leader_wake", "leader_byron", "leader_candice", "leader_volkner"]
LEAGUE = ["elite_four_aaron", "elite_four_bertha", "elite_four_flint", "elite_four_lucian", "champion_cynthia"]


def scale(level):
    return min(100, 50 + (level + 1) // 2)


def c_string(lines):
    text = "".join(lines)
    return text.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\\\n").replace("\r", "\\\\r").replace("\f", "\\\\f")


def main():
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    plat = pathlib.Path(sys.argv[1])
    tr_dir = plat / "res" / "trainers" / "data"
    maps_dir = plat / "res" / "field" / "maps"
    gfx_order = (plat / "generated" / "object_events_gfx.txt").read_text().split()
    move_types = (plat / "generated" / "movement_types.txt").read_text().split()
    hg_classes = set(re.findall(r"#define (TRAINERCLASS_\w+)", (REPO / "include" / "constants" / "trainerclass.h").read_text()))
    hg_items = set(re.findall(r"#define (ITEM_\w+)", (REPO / "include" / "constants" / "item.h").read_text()))
    zones = json.loads((REPO / "data" / "sinnoh" / "zones.json").read_text())["zones"]
    dirs = {"DIR_NORTH": 0, "DIR_SOUTH": 1, "DIR_WEST": 2, "DIR_EAST": 3}

    ids, entries, skipped = {}, [], set()

    def add_trainer(stem, move_sets=False):
        if stem in ids:
            return ids[stem]
        path = tr_dir / f"{stem}.json"
        if not path.exists():
            skipped.add(stem)
            return None
        t = json.loads(path.read_text())
        cls = t["class"].removeprefix("TRAINER_CLASS_")
        if cls in EXCLUDED_CLASSES:
            skipped.add(stem)
            return None
        hg_cls = "TRAINERCLASS_" + CLASS_MAP.get(cls, cls)
        if hg_cls not in hg_classes:
            sys.exit(f"clase sin equivalente en HGSS: {cls} ({stem})")
        tid = FIRST_ID + len(entries)
        ids[stem] = tid
        party = []
        for p in t["party"]:
            item = p.get("item") or "ITEM_NONE"
            item = item if item in hg_items else "ITEM_NONE"
            moves = p.get("moves") if move_sets else None
            party.append((p["species"], scale(p["level"]) if not move_sets else p["level"],
                          min(255, int(p.get("iv_scale", 0) * 255 / 255)), item, moves))
        ttype = ["TRAINER_DATA_TYPE_ITEMS"] + (["TRAINER_DATA_TYPE_MOVES"] if move_sets else [])
        ai = " | ".join(AI_MAP[a] for a in t["ai_flags"] if a in AI_MAP) or "0"
        items = [i if i in hg_items else "ITEM_NONE" for i in (t.get("items") or [])][:4]
        items += ["ITEM_NONE"] * (4 - len(items))
        msgs = [(MSG_MAP[m["type"]], c_string(m["en_US"])) for m in t.get("messages", []) if m["type"] in MSG_MAP]
        entries.append((tid, t["name"], hg_cls, " | ".join(ttype), items, ai,
                        "DOUBLE_BATTLE" if t["double_battle"] else "SINGLE_BATTLE", party, msgs, stem))
        return tid

    # NPCs entrenador de los mapas importados
    objects = {}
    for z in zones:
        ev = json.loads((maps_dir / z["stem"] / "events.json").read_text())
        for o in ev.get("object_events", []):
            tr = o.get("trainer")
            if not tr:
                continue
            tid = add_trainer(tr["id"].removeprefix("TRAINER_").lower())
            if tid is None:
                continue
            objects.setdefault(z["stem"], []).append({
                "trainer": tid, "graphics_id": gfx_order.index(o["graphics_id"]),
                "movement_type": move_types.index(o["movement_type"]),
                "trainer_type": TRAINER_TYPE_NORMAL, "sight": tr.get("sight_range", 0),
                "script": STD_NPC_TRAINER + tid - 1, "dir": dirs[o["initial_dir"]],
                "range_x": o.get("movement_range_x", 0), "range_z": o.get("movement_range_z", 0),
                "x": o["x"], "z": o["z"], "y": o.get("y", 0)})
    # Líderes, Alto Mando y Campeona: los equipos de revancha de Platino (niveles 61-78),
    # con sus movimientos, encajan con el postgame
    leaders = {s: add_trainer(s + "_rematch", move_sets=True) for s in GYM_LEADERS}
    league = {s: add_trainer(s + "_rematch", move_sets=True) for s in LEAGUE}

    # --- salida ---------------------------------------------------------------------------
    out = ["// Generado por tools/sinnoh/sync_trainers.py: entrenadores de Sinnoh (Platino).",
           "// Se incluye al final de sTrainerData en data/Trainers.c.", ""]
    # huecos entre el último entrenador de hg-engine (737) y el primero de Sinnoh: entradas vacías
    # (trainerdatagen necesita un nombre en todas)
    for tid in range(738, FIRST_ID):
        out += [f"    [{tid}] = {{", '        .name = "-",', "        .data = {",
                "            .trainerType = TRAINER_DATA_TYPE_NOTHING,",
                "            .trainerClass = TRAINERCLASS_PKMN_TRAINER_ETHAN,",
                "            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },",
                "            .aiFlags = 0,", "            .battleType = SINGLE_BATTLE,", "        },", "    },", ""]
    for tid, name, cls, ttype, items, ai, battle, party, msgs, stem in entries:
        out.append(f"    [{tid}] = {{ // {stem}")
        out.append(f'        .name = "{name}",')
        out.append("        .data = {")
        out.append(f"            .trainerType = {ttype},")
        out.append(f"            .trainerClass = {cls},")
        out.append(f"            .items = {{ {', '.join(items)} }},")
        out.append(f"            .aiFlags = {ai},")
        out.append(f"            .battleType = {battle},")
        out.append("        },")
        out.append("        .party = {")
        for species, level, ivs, item, moves in party:
            out.append("            {")
            out.append(f"                .ivs = {ivs},")
            out.append("                .abilitySlot = TRAINER_POKEMON_ABILITY_1,")
            out.append(f"                .level = {level},")
            out.append(f"                .species = {species},")
            out.append(f"                .item = {item},")
            if moves:
                mv = (moves + ["MOVE_NONE"] * 4)[:4]
                mv = [MOVE_RENAMES.get(m, m) or "MOVE_NONE" for m in mv]
                out.append(f"                .moves = {{ {', '.join(mv)} }},")
            out.append("                .ballSeal = 0,")
            out.append("            },")
        out.append("        },")
        if msgs:
            out.append("        .text = {")
            for typ, text in msgs:
                out.append(f'            {{ .type = {typ}, .text = "{text}" }},')
            out.append("        },")
        out.append("    },")
        out.append("")
    (REPO / "data" / "sinnoh" / "trainers.h").write_text("\n".join(out))

    last = FIRST_ID + len(entries) - 1
    # trainerdatagen solo exporta los textos de los entrenadores listados en sTrainerTextOrder
    (REPO / "data" / "sinnoh" / "trainer_text_order.h").write_text(
        "// Generado por tools/sinnoh/sync_trainers.py: se incluye al final de sTrainerTextOrder.\n"
        + "".join(f"    {n},\n" for n in range(FIRST_ID, last + 1)))
    scrdefs = ["// Generado por tools/sinnoh/sync_trainers.py: una entrada por entrenador de Sinnoh",
               "// (el script de un entrenador es 3000 + ID - 1, es decir, la entrada ID - 1)."]
    for n in range(740, last):
        scrdefs.append(f"/* Trainer {n} */ scrdef scr_seq_0953_normalTrainer")
    (REPO / "data" / "sinnoh" / "trainer_scrdefs.inc").write_text("\n".join(scrdefs) + "\n")

    (REPO / "data" / "sinnoh" / "trainers.json").write_text(json.dumps(
        {"_comment": "Generado por tools/sinnoh/sync_trainers.py", "first_id": FIRST_ID, "last_id": last,
         "leaders": leaders, "league": league, "objects": objects}, indent=1) + "\n")
    print(f"{len(entries)} entrenadores (IDs {FIRST_ID}-{last}) en {len(objects)} mapas; "
          f"no importados: {len(skipped)}")


if __name__ == "__main__":
    main()

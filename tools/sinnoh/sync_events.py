#!/usr/bin/env python3
"""
NPCs, carteles y objetos de Sinnoh: convierte los eventos y scripts de Platino a HGSS.

Uso:
    python3 tools/sinnoh/sync_events.py /ruta/a/pokeplatinum

Necesita lo que generan sync_from_pokeplatinum.py, sync_trainers.py y sync_sprites.py.

Genera, para cada mapa de Sinnoh con algo que hacer:
  data/scr_seq/scr_seq_NNNNN_sinnoh_<mapa>.s   scripts del mapa (archivos 965 en adelante)
  data/text/NNNN.txt                           textos del mapa (bancos 855 en adelante)
y data/sinnoh/events.json con los objetos, eventos de fondo (carteles y objetos ocultos), carteles
3D, archivo de scripts y banco de textos de cada mapa (lo usa import_sinnoh.py).

Los scripts de Platino se traducen a los comandos de HGSS que hacen lo mismo: mensajes, menús sí/no,
regalos de objetos, tiendas, gritos, hora del día, sexo del jugador... Lo que depende de la trama de
Platino (Equipo Galaxia, rival, Poké-reloj, Subsuelo, concursos...) se evalúa como si la historia de
Platino ya hubiera terminado: el juego empieza en Sinnoh en el postgame.

Flags: las que los scripts de NPC ponen (objetos regalados, "ya he hablado contigo"...), las de los
objetos del suelo y las de los objetos ocultos son flags ampliadas de 0x1000 en adelante
(src/shg_flags.c). Las flags locales de mapa de Platino pasan a las flags temporales de HGSS.
"""
import json
import pathlib
import re
import sys

REPO = pathlib.Path(__file__).resolve().parents[2]
SINNOH = REPO / "data" / "sinnoh"
SCR_DIR = REPO / "data" / "scr_seq"
TEXT_DIR = REPO / "data" / "text"
HEADER = (REPO / "tools" / "sinnoh" / "script_header.s").read_text()

SCRIPT_FILE_START = 965
TEXT_BANK_START = 855
EXT_FLAG_BASE, EXT_FLAG_COUNT = 0x1000, 768
HG_TEMP_FLAG_BASE, HG_NUM_TEMP_FLAGS = 0x4000, 64
MAX_NPC_MSG = 255          # npc_msg lleva el número de mensaje en un byte
STD_NPC_TRAINER = 3000

GFX_POKEBALL = "OBJ_EVENT_GFX_POKEBALL"
SIGN_MODELS = {             # carteles: modelos 3D en Platino; aquí son edificios (ver import_sinnoh.py)
    "OBJ_EVENT_GFX_MAP_SIGNPOST": "map_signpost", "OBJ_EVENT_GFX_SIGNBOARD": "signboard",
    "OBJ_EVENT_GFX_ARROW_SIGNPOST": "arrow_signpost", "OBJ_EVENT_GFX_GYM_SIGNPOST": "gym_signpost",
    "OBJ_EVENT_GFX_TRAINER_TIPS_SIGNPOST": "trainer_tips", "OBJ_EVENT_GFX_MAILBOX": "mailbox",
}
SERVICE_SCRIPTS = {"OBJ_EVENT_GFX_POKECENTER_NURSE": "scr_seq_shg_nurse",
                   "OBJ_EVENT_GFX_CASHIER_F": "scr_seq_shg_mart", "OBJ_EVENT_GFX_CASHIER_M": "scr_seq_shg_mart"}
# NPCs que no se importan aunque estén visibles: enlaces Wi-Fi/inalámbricos de los Centros Pokémon
SKIP_GFX = {"OBJ_EVENT_GFX_TEALA", "OBJ_EVENT_GFX_WIFI_PLAZA_ATTENDANT_F", "OBJ_EVENT_GFX_WIFI_PLAZA_ATTENDANT_M"}
SKIP_SCRIPT_RE = re.compile(r"Union|WiFi|Wifi|GTS|Colosseum|Underground|Contest|Poketch|Villa|SuperContest"
                            r"|Battleground|FightArea|Frontier|Ribbon|PalPark|Journal|Seal", re.I)
INCLUDES = {"scr_seq_shg_canalave_": "shg_canalave.inc", "scr_seq_shg_gym_": "shg_gyms.inc",
            "scr_seq_shg_nurse": "shg_services.inc", "scr_seq_shg_mart": "shg_services.inc",
            "scr_seq_shg_league_guard": "shg_league.inc", "scr_seq_shg_e4_": "shg_league.inc",
            "scr_seq_shg_cynthia": "shg_league.inc"}

CONSTS = {"TRUE": 1, "FALSE": 0, "MENU_YES": 0, "MENU_NO": 1, "GENDER_MALE": 0, "GENDER_FEMALE": 1,
          "DIR_NORTH": 0, "DIR_SOUTH": 1, "DIR_WEST": 2, "DIR_EAST": 3,
          "TIMEOFDAY_MORNING": 0, "TIMEOFDAY_DAY": 1, "TIMEOFDAY_TWILIGHT": 2, "TIMEOFDAY_NIGHT": 3,
          "TIMEOFDAY_LATE_NIGHT": 4}
OPS = {"Eq": ("eq", lambda a, b: a == b), "Ne": ("ne", lambda a, b: a != b), "Lt": ("lt", lambda a, b: a < b),
       "Le": ("le", lambda a, b: a <= b), "Gt": ("gt", lambda a, b: a > b), "Ge": ("ge", lambda a, b: a >= b)}
BG_DIRS = {"BG_EVENT_DIR_NORTH": 0, "BG_EVENT_DIR_EAST": 1, "BG_EVENT_DIR_WEST": 2, "BG_EVENT_DIR_SOUTH": 3,
           "BG_EVENT_DIR_ALL": 4, "BG_EVENT_DIR_WEST_EAST": 4, "BG_EVENT_DIR_NORTH_SOUTH": 4}
DIRS = {"DIR_NORTH": 0, "DIR_SOUTH": 1, "DIR_WEST": 2, "DIR_EAST": 3}
DYN_POOL = ["VAR_SPECIAL_x8008", "VAR_SPECIAL_x8009", "VAR_SPECIAL_x800A", "VAR_SPECIAL_x800B"]


# --- lectura de Platino -----------------------------------------------------------------------------

def parse_script_file(path):
    """{etiqueta: [(comando, [args])]} y el orden de las etiquetas."""
    labels, order, cur = {}, [], None
    if not path.exists():
        return labels, order
    for raw in path.read_text().split("\n"):
        line = raw.split("//")[0].strip()
        if not line or line.startswith(("#", ".include", "ScriptEntry")):
            continue
        m = re.match(r"^(\w+):$", line)
        if m:
            cur = m.group(1)
            labels[cur] = []
            order.append(cur)
            continue
        if cur is None or line.startswith("."):
            continue
        cmd, _, rest = line.partition(" ")
        args = [a.strip() for a in rest.split(",")] if rest.strip() else []
        labels[cur].append((cmd, args))
    return labels, order


def text_bank_name(path):
    if not path.exists():
        return None
    for m in re.finditer(r'#include "res/text/bank/(\w+)\.h"', path.read_text()):
        if m.group(1) not in ("menu_entries", "common_strings", "location_names"):
            return m.group(1)
    return None


def load_texts(plat, bank):
    if bank is None:
        return {}
    path = plat / "res" / "text" / f"{bank}.json"
    if not path.exists():
        return {}
    out = {}
    for m in json.loads(path.read_text())["messages"]:
        t = m.get("en_US", "")
        out[m["id"]] = "".join(t) if isinstance(t, list) else t
    return out


def hg_text(t):
    """Texto de Platino -> línea de data/text (\\n salto, \\r continuar, \\f nueva caja)."""
    t = t.rstrip("\r\n")
    t = re.sub(r"\{(CURSOR_X|PAUSE|SIZE|WAIT|YESNO) [^}]*\}", "", t)
    return t.replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r").replace("\x0c", "\\f")


def var_maxima(plat):
    """Valor máximo con el que se compara o se asigna cada variable de la trama de Platino: se supone
    que en el postgame todas tienen ese valor."""
    best = {}
    for p in (plat / "res" / "field" / "maps").glob("*/scripts.s"):
        for m in re.finditer(r"(?:GoToIf|CallIf)(?:Eq|Ne|Lt|Le|Gt|Ge) (VAR_\w+), (\d+)|SetVar (VAR_\w+), (\d+)",
                             p.read_text()):
            var, val = (m.group(1), m.group(2)) if m.group(1) else (m.group(3), m.group(4))
            best[var] = max(best.get(var, 0), int(val))
    return best


def hidden_item_table(plat):
    out = {}
    for m in re.finditer(r"HIDDEN_ITEM_ENTRY\((\w+),\s*(\d+),\s*\d+,\s*(\w+)\)",
                         (plat / "include" / "data" / "field" / "hidden_items.h").read_text()):
        out[m.group(3)] = (m.group(1), int(m.group(2)))
    return out


def visible_item_table(plat):
    labels, _ = parse_script_file(plat / "res" / "field" / "scripts" / "visible_items.s")
    out = {}
    for name, body in labels.items():
        vals = {a[0]: a[1] for c, a in body if c == "SetVar" and len(a) == 2}
        if "VAR_0x8008" in vals:
            out[name] = (vals["VAR_0x8008"], int(vals.get("VAR_0x8009", "1"), 0))
    return out


def hg_items():
    return set(re.findall(r"#define (ITEM_\w+)", (REPO / "include" / "constants" / "item.h").read_text()))


def item_name(name, known):
    """Nombre de objeto de Platino -> hg-engine (MT01 -> MT001, BLACKGLASSES -> BLACK_GLASSES...)."""
    if name in known:
        return name
    m = re.match(r"ITEM_(TM|HM)(\d+)$", name)
    if m and f"ITEM_{m.group(1)}{int(m.group(2)):03d}" in known:
        return f"ITEM_{m.group(1)}{int(m.group(2)):03d}"
    squash = {k.replace("_", ""): k for k in known}
    return squash.get(name.replace("_", ""))


# --- flags ------------------------------------------------------------------------------------------

class Flags:
    def __init__(self):
        self.ext = {}

    def ext_flag(self, name):
        if name not in self.ext:
            if len(self.ext) >= EXT_FLAG_COUNT:
                raise SystemExit("ERROR: no quedan flags ampliadas")
            self.ext[name] = EXT_FLAG_BASE + len(self.ext)
        return self.ext[name]

    def dynamic(self, name, dyn_names):
        """Flag de HGSS para una flag de Platino que los scripts cambian, o None si es de la trama."""
        m = re.match(r"FLAG_MAP_LOCAL_0x([0-9A-Fa-f]+)$", name)
        if m and int(m.group(1), 16) < HG_NUM_TEMP_FLAGS:
            return HG_TEMP_FLAG_BASE + int(m.group(1), 16)
        if name in dyn_names:
            return self.ext_flag(name)
        return None


# --- traducción de scripts --------------------------------------------------------------------------

class ScriptConverter:
    def __init__(self, labels, order, texts, items, local_ids, flags, dyn_flag_names, var_max):
        self.labels, self.order, self.texts = labels, order, texts
        self.items, self.local_ids, self.flags = items, local_ids, flags
        self.dyn_flag_names, self.var_max = dyn_flag_names, var_max
        self.msgs = []           # textos usados, en orden
        self.msg_index = {}
        self.out = []
        self.done, self.pending = set(), []

    # -- utilidades
    def msg(self, tid):
        if tid not in self.texts:
            return None
        if tid not in self.msg_index:
            if len(self.msgs) > MAX_NPC_MSG:
                return None
            self.msg_index[tid] = len(self.msgs)
            self.msgs.append(hg_text(self.texts[tid]))
        return self.msg_index[tid]

    def label(self, plat):
        if plat not in self.labels:
            return None
        if plat not in self.done:
            self.done.add(plat)
            self.pending.append(plat)
        return f"P_{plat}"

    def entry(self, plat):
        lab = self.label(plat)
        while self.pending:
            self.emit_block(self.pending.pop(0))
        return lab

    def value(self, tok, state):
        if tok in state:
            return state[tok]
        if tok in CONSTS:
            return CONSTS[tok]
        try:
            return int(tok, 0)
        except ValueError:
            pass
        if tok.startswith("VAR_"):
            return self.var_max.get(tok, 0)
        return tok   # ITEM_X, SPECIES_X...

    def flag_static(self, name):
        # flags de la trama de Platino: el postgame las tiene puestas
        return True

    # -- un bloque (etiqueta de Platino)
    def emit_block(self, plat):
        out = self.out
        out.append(f"P_{plat}:")
        state, dyn = {}, {}
        terminated = False
        for cmd, a in self.labels[plat]:
            r = self.command(cmd, a, state, dyn)
            if r == "end":
                terminated = True
                break
        if not terminated:
            i = self.order.index(plat)
            nxt = self.order[i + 1] if i + 1 < len(self.order) else None
            lab = self.label(nxt) if nxt else None
            out.append(f"\tgoto {lab}" if lab else "\tend")
        out.append("")

    def dyn_target(self, var, dyn):
        if var == "VAR_RESULT":
            hg = "VAR_SPECIAL_RESULT"
        elif re.match(r"VAR_0x80[0-9A-F]{2}$", var) and int(var[4:], 16) <= 0x800B:
            hg = "VAR_SPECIAL_x" + var[6:]
        else:
            hg = DYN_POOL[len(dyn) % len(DYN_POOL)]
        dyn[var] = hg
        return hg

    def branch(self, kind, op, a, state, dyn, call):
        """GoToIf/CallIf con comparación. Devuelve "end" si el salto estático siempre se toma."""
        var, val, target = a[0], a[1], a[2]
        lab = None
        if var in dyn:
            v = self.value(val, state)
            if not isinstance(v, int):
                return None
            lab = self.label(target)
            if lab is None:
                return None
            self.out.append(f"\tcompare {dyn[var]}, {v}")
            self.out.append(f"\t{'call' if call else 'goto'}_if_{OPS[op][0]} {lab}")
            return None
        lhs, rhs = self.value(var, state), self.value(val, state)
        if not (isinstance(lhs, int) and isinstance(rhs, int)):
            taken = lhs == rhs if op == "Eq" else (lhs != rhs if op == "Ne" else False)
        else:
            taken = OPS[op][1](lhs, rhs)
        if taken:
            lab = self.label(target)
            if lab is None:
                return None
            self.out.append(f"\t{'call' if call else 'goto'} {lab}")
            return None if call else "end"
        return None

    def flag_branch(self, flag, want_set, target, call):
        hg = self.flags.dynamic(flag, self.dyn_flag_names)
        lab = self.label(target)
        if lab is None:
            return None
        if hg is not None:
            self.out.append(f"\t{'call' if call else 'goto'}_if_{'set' if want_set else 'unset'} {hg}, {lab}")
            return None
        if self.flag_static(flag) == want_set:
            self.out.append(f"\t{'call' if call else 'goto'} {lab}")
            return None if call else "end"
        return None

    def item_pair(self, state):
        item = self.value("VAR_0x8004", state)
        count = self.value("VAR_0x8005", state)
        item = item_name(item, self.items) if isinstance(item, str) else None
        return item, (count if isinstance(count, int) and count > 0 else 1)

    def message_box(self, tid, face=False):
        n = self.msg(tid)
        if n is None:
            return
        o = self.out
        o += ["\tplay_se SEQ_SE_DP_SELECT", "\tlockall"]
        if face:
            o.append("\tfaceplayer")
        o += [f"\tnpc_msg {n}", "\twait_button_or_walk_away", "\tclosemsg", "\treleaseall"]

    def command(self, cmd, a, state, dyn):
        o = self.out
        if cmd == "End":
            o.append("\tend")
            return "end"
        if cmd == "Return":
            o.append("\treturn")
            return "end"
        if cmd == "GoTo":
            lab = self.label(a[0])
            o.append(f"\tgoto {lab}" if lab else "\tend")
            return "end"
        if cmd == "Call":
            lab = self.label(a[0])
            if lab:
                o.append(f"\tcall {lab}")
            return None
        m = re.match(r"(GoTo|Call)If(Eq|Ne|Lt|Le|Gt|Ge)$", cmd)
        if m:
            return self.branch(m.group(1), m.group(2), a, state, dyn, m.group(1) == "Call")
        m = re.match(r"(GoTo|Call)If(Set|Unset)$", cmd)
        if m:
            return self.flag_branch(a[0], m.group(2) == "Set", a[1], m.group(1) == "Call")
        if cmd in ("GoToIfBadgeAcquired", "GoToIfDefeated", "GoToIfPokemonInParty"):
            lab = self.label(a[-1])
            if lab and cmd != "GoToIfPokemonInParty":
                o.append(f"\tgoto {lab}")
                return "end"
            return None
        if cmd in ("CheckBadgeAcquired", "CheckWonBattle", "CheckTrainerFlag"):
            state[a[-1]] = 1
            dyn.pop(a[-1], None)
            return None
        if cmd == "CheckItem":
            state[a[-1]] = 0
            dyn.pop(a[-1], None)
            return None
        if cmd == "GoToIfCannotFitItem":
            item = self.value(a[0], state)
            count = self.value(a[1], state)
            item = item_name(item, self.items) if isinstance(item, str) else None
            lab = self.label(a[3])
            if item and lab:
                o.append(f"\tgoto_if_no_item_space {item}, {count if isinstance(count, int) else 1}, {lab}")
            return None
        if cmd == "CanFitItem":
            item = self.value(a[0], state)
            count = self.value(a[1], state)
            item = item_name(item, self.items) if isinstance(item, str) else None
            if item:
                hg = self.dyn_target(a[2], dyn)
                o.append(f"\titem_vars {item}, {count if isinstance(count, int) else 1}")
                o.append(f"\thasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, {hg}")
            return None
        if cmd == "CallCommonScript":
            name = a[0]
            if name.startswith("CommonScript_AddItemQuantity") or name == "CommonScript_ObtainItem":
                item, count = self.item_pair(state)
                if item:
                    o.append(f"\tgiveitem_no_check {item}, {count}")
            elif name == "CommonScript_BagIsFull":
                o.append("\tcallstd std_bag_is_full")
            elif name == "CommonScript_PokecenterNurse":
                o += ["\tsetvar VAR_SPECIAL_x8007, 0", "\tcallstd std_nurse_joy"]
            elif name == "CommonScript_VendorGreetingGeneric":
                o.append("\tcallstd std_mart_intro")
            return None
        if cmd == "AddItem":
            item, count = self.item_pair(state) if a[0] == "VAR_0x8004" else (
                item_name(self.value(a[0], state), self.items) if isinstance(self.value(a[0], state), str) else None,
                self.value(a[1], state))
            if item:
                o.append(f"\tgiveitem {item}, {count if isinstance(count, int) else 1}, VAR_SPECIAL_RESULT")
            return None
        if cmd in ("PokeMartCommon", "PokeMartSpecialties", "PokeMartDecor", "PokeMartSeal"):
            o += ["\tholdmsg", "\tsetvar VAR_SPECIAL_x8004, 0", "\tcallstd std_pokemart"]
            return None
        if cmd in ("PokeMartCommonWithGreeting", "PokeMartSpecialtiesWithGreeting"):
            o += ["\tplay_se SEQ_SE_DP_SELECT", "\tlockall", "\tfaceplayer", "\tcallstd std_mart_intro",
                  "\tholdmsg", "\tsetvar VAR_SPECIAL_x8004, 0", "\tcallstd std_pokemart", "\treleaseall"]
            return None
        if cmd == "SetVar" and len(a) == 2:
            if a[1] in dyn:
                hg = self.dyn_target(a[0], dyn)
                if hg != dyn[a[1]]:
                    o.append(f"\tcopyvar {hg}, {dyn[a[1]]}")
            else:
                dyn.pop(a[0], None)
                state[a[0]] = self.value(a[1], state)
            return None
        if cmd == "AddVar" and len(a) == 2:
            v = self.value(a[0], state)
            if isinstance(v, int) and isinstance(self.value(a[1], state), int):
                state[a[0]] = v + self.value(a[1], state)
            return None
        if cmd in ("SetFlag", "ClearFlag"):
            hg = self.flags.dynamic(a[0], self.dyn_flag_names)
            if hg is not None:
                o.append(f"\t{'setflag' if cmd == 'SetFlag' else 'clearflag'} {hg}")
            return None
        if cmd == "ShowYesNoMenu":
            hg = self.dyn_target(a[0], dyn)
            o.append(f"\tyesno {hg}")
            return None
        if cmd == "GetPlayerGender":
            o.append(f"\tget_player_gender {self.dyn_target(a[0], dyn)}")
            return None
        if cmd == "GetTimeOfDay":
            o.append(f"\tGetTimePeriod {self.dyn_target(a[0], dyn)}")
            return None
        if cmd in ("GetRandom", "GetPlayerDir", "GetHour", "GetDayOfWeek", "GetPartyCount",
                   "GetFirstNonEggInParty", "CountPartyNonEggs", "GetPartyMonSpecies"):
            dyn.pop(a[0], None)
            state[a[0]] = 0
            return None
        if cmd == "NPCMessage":
            self.message_box(a[0], face=True)
            return None
        if cmd in ("EventMessage", "ShowMapSign", "ShowLandmarkSign", "ShowArrowSign", "ShowScrollingSign"):
            self.message_box(a[0])
            return None
        if cmd == "PokemonCryAndMessage":
            n = self.msg(a[1])
            if n is not None:
                o += ["\tplay_se SEQ_SE_DP_SELECT", "\tlockall", "\tfaceplayer", "\twait_se SEQ_SE_DP_SELECT",
                      f"\tplay_cry {a[0]}, 0", f"\tnpc_msg {n}", "\twait_cry", "\twait_button_or_walk_away",
                      "\tclosemsg", "\treleaseall"]
            return None
        if cmd in ("Message", "MessageNoSkip", "MessageInstant"):
            n = self.msg(a[0])
            if n is not None:
                o.append(f"\tnpc_msg {n}")
            return None
        simple = {"LockAll": "lockall", "ReleaseAll": "releaseall", "FacePlayer": "faceplayer",
                  "CloseMessage": "closemsg", "WaitButton": "wait_button_or_walk_away",
                  "WaitABPress": "wait_button", "WaitABXPadPress": "wait_button_or_walk_away",
                  "WaitCry": "wait_cry", "WaitFanfare": "wait_fanfare",
                  "CloseMessageWithoutErasing": "holdmsg"}
        if cmd in simple:
            o.append("\t" + simple[cmd])
            return None
        if cmd == "PlaySE":
            if a and a[0].startswith("SE_CONFIRM"):
                o.append("\tplay_se SEQ_SE_DP_SELECT")
            return None
        if cmd == "WaitSE":
            if a and a[0].startswith("SE_CONFIRM"):
                o.append("\twait_se SEQ_SE_DP_SELECT")
            return None
        if cmd == "PlayCry":
            o.append(f"\tplay_cry {a[0]}, 0")
            return None
        if cmd == "WaitTime":
            v = self.value(a[0], state)
            if isinstance(v, int):
                o.append(f"\twait {v}, VAR_SPECIAL_RESULT")
            return None
        if cmd == "BufferPlayerName":
            o.append(f"\tbuffer_players_name {a[0]}")
            return None
        if cmd == "BufferItemName" and len(a) == 2:
            v = self.value(a[1], state)
            item = item_name(v, self.items) if isinstance(v, str) else None
            if item:
                o.append(f"\tbuffer_item_name {a[0]}, {item}")
            return None
        if cmd == "RemoveObject":
            lid = self.local_ids.get(a[0])
            if lid is not None:
                o.append(f"\thide_person {lid}")
            return None
        o.append(f"\t// Platino: {cmd} {', '.join(a)}")
        return None


# --- mapas ------------------------------------------------------------------------------------------

def collect_dynamic_flags(plat, stems):
    """Flags que algún script de los mapas importados pone o quita (no las de ocultar objetos)."""
    names = set()
    for stem in stems:
        p = plat / "res" / "field" / "maps" / stem / "scripts.s"
        if p.exists():
            for m in re.finditer(r"(?:SetFlag|ClearFlag) (FLAG_\w+)", p.read_text()):
                if not m.group(1).startswith(("FLAG_HIDE_", "FLAG_MAP_LOCAL_", "FLAG_UNK_", "FLAG_ALT_MUSIC")):
                    names.add(m.group(1))
    return names


def main():
    plat = pathlib.Path(sys.argv[1] if len(sys.argv) > 1 else "/home/claude/src/pokeplatinum")
    maps_dir = plat / "res" / "field" / "maps"
    gfx_order = (plat / "generated" / "object_events_gfx.txt").read_text().split()
    move_types = (plat / "generated" / "movement_types.txt").read_text().split()
    zones = json.loads((SINNOH / "zones.json").read_text())["zones"]
    overrides = json.loads((SINNOH / "zone_overrides.json").read_text())
    trainers = json.loads((SINNOH / "trainers.json").read_text())["objects"]
    sprite_map = {int(k): v for k, v in json.loads((SINNOH / "sprites.json").read_text())["map"].items()}
    known_items = hg_items()
    var_max = var_maxima(plat)
    hidden_items = hidden_item_table(plat)
    visible_items = visible_item_table(plat)
    dyn_flag_names = collect_dynamic_flags(plat, [z["stem"] for z in zones])
    flags = Flags()

    # limpia lo generado antes
    old = json.loads((SINNOH / "events.json").read_text()) if (SINNOH / "events.json").exists() else {}
    for f in SCR_DIR.glob("scr_seq_*_sinnoh_*.s"):
        f.unlink()
    for bank in old.get("text_banks", []):
        (TEXT_DIR / f"{bank}.txt").unlink(missing_ok=True)

    result, text_banks = {}, []
    stats = {"npcs": 0, "items": 0, "hidden": 0, "signs": 0, "props": 0}
    for z in zones:
        stem = z["stem"]
        ev_path = maps_dir / stem / "events.json"
        ev = json.loads(ev_path.read_text()) if ev_path.exists() else {"object_events": [], "bg_events": []}
        scr_path = maps_dir / stem / "scripts.s"
        labels, order = parse_script_file(scr_path)
        texts = load_texts(plat, text_bank_name(scr_path))
        ov = overrides.get(stem, {})

        # 1) objetos: overrides, entrenadores y luego los de Platino
        objects = []
        taken = set()
        override_gfx = set()
        for o in ov.get("objects", []):
            objects.append(dict(o, source="override"))
            taken.add((o["x"], o["z"]))
            override_gfx.add(o["graphics_id"])
        for t in trainers.get(stem, []):
            objects.append(dict(t, source="trainer"))
            taken.add((t["x"], t["z"]))
        local_ids = {}
        props, bgs = [], []
        for o in ev.get("object_events", []):
            if o.get("trainer_type", "TRAINER_TYPE_NONE") != "TRAINER_TYPE_NONE":
                continue
            g = o["graphics_id"]
            pos = (o["x"], o["z"])
            script = o.get("script", "")
            base = {"movement_type": move_types.index(o["movement_type"]) if o["movement_type"] in move_types else 0,
                    "dir": DIRS.get(o["initial_dir"], 0), "x": o["x"], "z": o["z"], "y": o.get("y", 0),
                    "range_x": o.get("movement_range_x", 0), "range_z": o.get("movement_range_z", 0)}
            if g == GFX_POKEBALL and script in visible_items:
                item, count = visible_items[script]
                item = item_name(item, known_items)
                if not item or pos in taken:
                    continue
                flag = flags.ext_flag(o["hidden_flag"])
                objects.append(dict(base, graphics_id=gfx_order.index(g), flag=flag, item=(item, count),
                                    source="item"))
                taken.add(pos)
                stats["items"] += 1
                continue
            if o.get("hidden_flag", "0") != "0" or g in SKIP_GFX or pos in taken:
                continue
            if g in SIGN_MODELS:
                props.append({"model": SIGN_MODELS[g], "x": o["x"], "z": o["z"], "y": o.get("y", 0)})
                if script in labels:
                    bgs.append({"plat_script": script, "type": 0, "dir": 4, "x": o["x"], "z": o["z"],
                                "y": o.get("y", 0)})
                stats["props"] += 1
                continue
            idx = gfx_order.index(g) if g in gfx_order else -1
            if idx not in sprite_map or idx in override_gfx:
                continue
            if g in SERVICE_SCRIPTS:
                objects.append(dict(base, graphics_id=idx, script=SERVICE_SCRIPTS[g], source="service"))
            else:
                if script not in labels or SKIP_SCRIPT_RE.search(script):
                    continue
                objects.append(dict(base, graphics_id=idx, plat_script=script, source="npc"))
                stats["npcs"] += 1
            local_ids[o["id"]] = len(objects) - 1
            taken.add(pos)

        # 2) eventos de fondo: carteles y objetos ocultos
        for b in ev.get("bg_events", []):
            entry = {"type": 0, "dir": BG_DIRS.get(b.get("player_facing_dir"), 4),
                     "x": b["x"], "z": b["z"], "y": b.get("y", 0)}
            if "hidden_item" in b:
                item = hidden_items.get(b["hidden_item"])
                name = item_name(item[0], known_items) if item else None
                if name:
                    bgs.append(dict(entry, dir=4, hidden=(name, item[1], flags.ext_flag(b["hidden_item"]))))
                    stats["hidden"] += 1
            elif b.get("script") in labels and not SKIP_SCRIPT_RE.search(b["script"]):
                bgs.append(dict(entry, plat_script=b["script"]))

        # 3) scripts
        conv = ScriptConverter(labels, order, texts, known_items, local_ids, flags, dyn_flag_names, var_max)
        scrdefs, bodies = [], []
        includes = set()

        def add_entry(label_name):
            scrdefs.append(label_name)
            return len(scrdefs)

        for o in objects:
            src = o["source"]
            if src == "trainer":
                continue
            if src == "item":
                item, count = o["item"]
                n = add_entry(f"scr_item_{len(scrdefs)}")
                bodies += [f"scr_item_{n - 1}:", f"\tsetvar VAR_SPECIAL_x8008, {item}",
                           f"\tsetvar VAR_SPECIAL_x8009, {count}", "\tcallstd std_itemball_variadic", "\tend", ""]
                o["script"] = n
            elif src == "npc":
                lab = conv.entry(o["plat_script"])
                o["script"] = add_entry(lab) if lab else 0
            elif isinstance(o.get("script"), str):
                for prefix, inc in INCLUDES.items():
                    if o["script"].startswith(prefix):
                        includes.add(inc)
                o["script"] = add_entry(o["script"])
        final_bgs = []
        for b in bgs:
            if "hidden" in b:
                item, count, flag = b.pop("hidden")
                n = add_entry(f"scr_hidden_{len(scrdefs)}")
                bodies += [f"scr_hidden_{n - 1}:", f"\tgoto_if_set {flag}, scr_hidden_{n - 1}_end",
                           "\tplay_se SEQ_SE_DP_SELECT", "\tlockall",
                           f"\tgoto_if_no_item_space {item}, {count}, scr_hidden_{n - 1}_full",
                           f"\tsetflag {flag}", f"\tgiveitem_no_check {item}, {count}", "\tclosemsg",
                           "\treleaseall", "\tend",
                           f"scr_hidden_{n - 1}_full:", "\tcallstd std_bag_is_full", "\tclosemsg", "\treleaseall",
                           f"scr_hidden_{n - 1}_end:", "\tend", ""]
                b["script"] = n
            else:
                lab = conv.entry(b.pop("plat_script"))
                if not lab:
                    continue
                b["script"] = add_entry(lab)
            final_bgs.append(b)

        has_content = scrdefs or any(o["source"] == "trainer" for o in objects)
        zone_out = {"objects": [], "bgs": final_bgs, "props": props}
        for o in objects:
            gfx = o["graphics_id"]
            # índice de Platino -> sprite de HGSS (los valores fuera de la lista de Platino ya son de HGSS)
            hg_gfx = sprite_map.get(gfx, 11) if gfx < len(gfx_order) else gfx
            zone_out["objects"].append({
                "graphics_id": hg_gfx,
                "movement_type": o.get("movement_type", 0), "trainer_type": o.get("trainer_type", 0),
                "sight": o.get("sight", 0), "script": o.get("script", 0) or 0, "dir": o.get("dir", 0),
                "range_x": o.get("range_x", 0), "range_z": o.get("range_z", 0),
                "x": o["x"], "z": o["z"], "y": o.get("y", 0), "flag": o.get("flag", 0)})
        if scrdefs:
            file_no = SCRIPT_FILE_START + len(text_banks)
            bank = TEXT_BANK_START + len(text_banks)
            text_banks.append(bank)
            zone_out["scripts"], zone_out["msgs"] = file_no, bank
            src = [HEADER, f"// {stem}: generado por tools/sinnoh/sync_events.py a partir de Platino.", "",
                   ".data", ""]
            src += [f"scrdef {s}" for s in scrdefs] + ["scrdef_end", ""]
            src += bodies + conv.out
            src += [f'#include "data/scr_seq/include/{inc}"' for inc in sorted(includes)]
            (SCR_DIR / f"scr_seq_{file_no:05d}_sinnoh_{stem}.s").write_text("\n".join(src) + "\n")
            lines = conv.msgs or ["-"]
            (TEXT_DIR / f"{bank}.txt").write_text("\n".join(lines) + "\n", encoding="utf-8")
        if has_content or props:
            result[stem] = zone_out
    out = {"_comment": "Generado por tools/sinnoh/sync_events.py: objetos, eventos de fondo, carteles, "
                       "scripts (archivo) y textos (banco) de cada mapa de Sinnoh.",
           "text_banks": text_banks, "ext_flags": dict(sorted(flags.ext.items(), key=lambda kv: kv[1])),
           "zones": result}
    (SINNOH / "events.json").write_text(json.dumps(out, indent=1, ensure_ascii=False) + "\n")
    signs = SINNOH / "props" / "signs"
    signs.mkdir(parents=True, exist_ok=True)
    for model in SIGN_MODELS.values():
        (signs / f"{model}.nsbmd").write_bytes(
            (plat / "res" / "graphics" / "field_effects" / f"{model}.nsbmd").read_bytes())
    print(f"{len(text_banks)} mapas con scripts (archivos {SCRIPT_FILE_START}-{SCRIPT_FILE_START + len(text_banks) - 1}),"
          f" {stats['npcs']} NPCs, {stats['items']} objetos, {stats['hidden']} objetos ocultos, "
          f"{stats['props']} carteles; {len(flags.ext)} flags ampliadas")


if __name__ == "__main__":
    main()

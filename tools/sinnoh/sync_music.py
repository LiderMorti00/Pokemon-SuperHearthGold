#!/usr/bin/env python3
"""
Prepara en data/sinnoh/sound/ la música de Sinnoh (sacada del decomp de Platino) para meterla en
el SDAT de HGSS.

Uso:
    python3 tools/sinnoh/sync_music.py /ruta/a/pokeplatinum

Necesita la herramienta nitrosfx de pokeplatinum (tools/nitrosfx; si no está compilada se compila
con gcc) y rom.nds en la raíz de la repo.

Por qué cada canción lleva su propio banco de instrumentos:
  * las canciones de campo de Platino usan BANK_BGM_FIELD/BANK_BGM_DUNGEON, que tiran de
    WAVE_ARC_BASIC de Platino (458 KB) más un archivo pequeño de ondas propio;
  * HGSS tiene siempre cargado su propio WAVE_ARC_BASIC (431 KB, distinto del de Platino) y el
    montón de sonido es de 780 KB, así que no caben los dos;
  * cada canción usa solo unos pocos instrumentos. Se genera un banco por canción con solo esos
    instrumentos; las ondas que son idénticas en el BASIC de HGSS se toman de ahí y el resto sale
    de WAVE_ARC_PL_BASIC, marcado como "carga individual" para que solo se carguen las ondas usadas.

Resultado: data/sinnoh/sound/*.sseq, *.sbnk, *.swar y music.json, que el importador
(tools/sinnoh/import_sinnoh.py) añade al SDAT en cada compilación.
"""
import hashlib
import json
import pathlib
import shutil
import struct
import subprocess
import sys
import tempfile

REPO = pathlib.Path(__file__).resolve().parents[2]
DEST = REPO / "data" / "sinnoh" / "sound"
PREFIX = "PL_"
# Memoria de ondas que puede ocupar una canción. Con una canción de HGSS cargada quedan unos 165 KB
# libres en el montón de sonido. Se deja la música en 120 KB de ondas para que sobren unos 40 KB
# (gritos de Pokémon, efectos). Las canciones que lo superan usan el BASIC de Platino a la mitad
# de frecuencia, que ocupa la mitad.
BUDGET = 120_000


def swar_entries(b):
    d = b.find(b"DATA")
    count = struct.unpack_from("<I", b, d + 8 + 32)[0]
    offs = [struct.unpack_from("<I", b, d + 8 + 36 + 4 * i)[0] for i in range(count)] + [len(b)]
    return [b[offs[i]:offs[i + 1]] for i in range(count)]


def wave_key(e):
    t, loop, rate, time, ls, ll = struct.unpack_from("<BBHHHI", e, 0)
    return hashlib.md5(e[:12] + e[12:12 + (ls + ll) * 4]).hexdigest()


def wav_chunks(b):
    chunks, j = {}, 12
    while j < len(b):
        cid, sz = b[j:j + 4], struct.unpack_from("<I", b, j + 4)[0]
        chunks[cid] = b[j + 8:j + 8 + sz]
        j += 8 + sz + (sz & 1)
    return chunks


def half_rate_wav(pcm16_wav):
    """WAV PCM de 16 bits a la mitad de frecuencia (media de cada par de muestras), con el bucle
    del chunk smpl ajustado."""
    c = wav_chunks(pcm16_wav)
    fmt = list(struct.unpack_from("<HHIIHH", c[b"fmt "], 0))
    samples = struct.unpack(f"<{len(c[b'data']) // 2}h", c[b"data"])
    half = [(samples[i] + samples[i + 1]) // 2 for i in range(0, len(samples) - 1, 2)] or list(samples[:1])
    fmt[2] //= 2
    fmt[3] = fmt[2] * 2
    data = struct.pack(f"<{len(half)}h", *half)
    out = b"fmt " + struct.pack("<I", 16) + struct.pack("<HHIIHH", *fmt)
    out += b"data" + struct.pack("<I", len(data)) + data
    if b"smpl" in c:
        smpl = bytearray(c[b"smpl"])
        head = list(struct.unpack_from("<9I", smpl, 0))
        head[2] = head[2] * 2  # periodo de muestra (ns)
        struct.pack_into("<9I", smpl, 0, *head)
        for k in range(head[7]):
            loop = list(struct.unpack_from("<6I", smpl, 36 + 24 * k))
            loop[2] //= 2
            loop[3] //= 2
            struct.pack_into("<6I", smpl, 36 + 24 * k, *loop)
        out += b"smpl" + struct.pack("<I", len(smpl)) + bytes(smpl)
    return b"RIFF" + struct.pack("<I", 4 + len(out)) + b"WAVE" + out


def midi_programs(path):
    import mido
    m = mido.MidiFile(str(path), clip=True)
    progs = {0}
    for t in m.tracks:
        for msg in t:
            if msg.type == "program_change":
                progs.add(msg.program)
    return progs


def trimmed_bank(lines, programs, basic_remap, basic_slot=2):
    """Banco con solo los programas usados. Las ondas del archivo 0 (BASIC de Platino) pasan al
    BASIC de HGSS (archivo 0) si existe una idéntica, o a WAVE_ARC_PL_BASIC (archivo 2)."""
    out, nulls, cur = [], [], None
    for line in lines:
        if not line.strip():
            out.append(line)
            continue
        if not line.startswith("\t"):
            cur = int(line.split(",")[0])
            if cur not in programs:
                # nitrosfx toma una entrada vacía que va justo detrás de un instrumento como
                # "igual que el anterior", así que las vacías van todas al principio (como en Platino)
                nulls.append(f"{cur}, NULL")
                continue
        elif cur not in programs:
            continue
        parts = [p.strip() for p in line.split(",")]
        field = None
        if line.startswith("\t") and parts[0] == "1":
            field = 1
        elif not line.startswith("\t") and len(parts) > 3 and parts[1] == "Single":
            field = 2
        if field is not None and parts[field + 1] == "0":
            wave = int(parts[field])
            hg_index = basic_remap.get(wave)
            if hg_index is not None:
                parts[field] = str(hg_index)
            else:
                parts[field + 1] = str(basic_slot)
        text = ", ".join(parts)
        if not line.startswith("\t") and parts[1] == "NULL":
            nulls.append(text)
            continue
        out.append(("\t" + text) if line.startswith("\t") else text)
    return nulls + [l for l in out if l.strip()]


def main():
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    plat = pathlib.Path(sys.argv[1])
    sound = plat / "res" / "sound"
    nitrosfx = plat / "tools" / "nitrosfx" / "nitrosfx"
    if not nitrosfx.exists():
        src = list((plat / "tools" / "nitrosfx").glob("*.c"))
        subprocess.run(["gcc", "-O2", "-w", *map(str, src), "-o", str(nitrosfx), "-lm"], check=True)

    def nsfx(a, b):
        subprocess.run([str(nitrosfx), str(a), str(b)], check=True, stdout=subprocess.DEVNULL)

    if DEST.exists():
        shutil.rmtree(DEST)
    DEST.mkdir(parents=True)
    tmp = pathlib.Path(tempfile.mkdtemp())

    # BASIC de HGSS sacado del SDAT de rom.nds
    import ndspy.rom
    rom = ndspy.rom.NintendoDSRom.fromFile(str(REPO / "rom.nds"))
    (tmp / "gs.sdat").write_bytes(rom.getFileByName("data/sound/gs_sound_data.sdat"))
    subprocess.run([sys.executable, str(REPO / "tools" / "SDATTool.py"), "-u", str(tmp / "gs.sdat"), str(tmp / "gs")],
                   check=True, stdout=subprocess.DEVNULL)
    hg_basic = swar_entries((tmp / "gs" / "Files" / "WAVARC" / "WAVE_ARC_BASIC.swar").read_bytes())
    hg_keys = {}
    for i, e in enumerate(hg_basic):
        hg_keys.setdefault(wave_key(e), i)

    info = json.loads((sound / "pl_sound_data.json").read_text())
    seq_info = {s.get("name"): s for s in info["seqInfo"]}
    bank_info = {b.get("name"): b for b in info["bankInfo"]}

    zones = json.loads((REPO / "data" / "sinnoh" / "zones.json").read_text())["zones"]
    wanted = sorted({z["music_day"] for z in zones} | {z["music_night"] for z in zones})
    wanted = [s for s in wanted if s in seq_info and seq_info[s].get("bank")]

    # archivos de ondas de Platino que hacen falta
    wavarcs = {"WAVE_ARC_BASIC"}
    for s in wanted:
        wavarcs.update(w for w in bank_info[seq_info[s]["bank"]]["waves"] if w)
    pl_basic = None
    for w in sorted(wavarcs):
        out = DEST / f"{w.replace('WAVE_ARC_', 'WAVE_ARC_' + PREFIX)}.swar"
        nsfx(sound / "WAVARC" / w, out)
        if w == "WAVE_ARC_BASIC":
            pl_basic = swar_entries(out.read_bytes())
    basic_remap = {i: hg_keys[wave_key(e)] for i, e in enumerate(pl_basic) if wave_key(e) in hg_keys}

    # BASIC de Platino a la mitad de frecuencia, para las canciones que no caben (ver BUDGET)
    lite_dir = tmp / "lite"
    lite_dir.mkdir()
    for wav in sorted((sound / "WAVARC" / "WAVE_ARC_BASIC").glob("*.wav")):
        nsfx(wav, tmp / "x.swav")
        subprocess.run([str(nitrosfx), str(tmp / "x.swav"), str(tmp / "x.wav"), "-pcm16"], check=True,
                       stdout=subprocess.DEVNULL)
        (lite_dir / wav.name).write_bytes(half_rate_wav((tmp / "x.wav").read_bytes()))
    nsfx(lite_dir, DEST / f"WAVE_ARC_{PREFIX}BASIC_LITE.swar")
    second_waves = {w: swar_entries((DEST / f"{w.replace('WAVE_ARC_', 'WAVE_ARC_' + PREFIX)}.swar").read_bytes())
                    for w in wavarcs if w != "WAVE_ARC_BASIC"}

    def wave_bytes(bank, programs):
        """Memoria de ondas que necesita una canción (las del BASIC de HGSS ya están cargadas)."""
        need = set()
        cur = None
        for line in (sound / "BANK" / f"{bank['name']}.txt").read_text().replace("\r", "").split("\n"):
            if not line.strip():
                continue
            if not line.startswith("\t"):
                cur = int(line.split(",")[0])
            if cur not in programs:
                continue
            parts = [p.strip() for p in line.split(",")]
            f = 1 if line.startswith("\t") and parts[0] == "1" else (2 if len(parts) > 3 and parts[1] == "Single" else None)
            if f is not None:
                need.add((int(parts[f + 1]), int(parts[f])))
        total = 0
        for slot, wave in need:
            if slot == 0 and wave not in basic_remap:
                total += len(pl_basic[wave])
            elif slot == 1:
                total += len(second_waves[bank["waves"][1]][wave])
        return total

    music = {"_comment": "Generado por tools/sinnoh/sync_music.py", "sequences": [], "banks": [],
             "wavarcs": [], "map": {}}
    for w in sorted(wavarcs):
        name = w.replace("WAVE_ARC_", "WAVE_ARC_" + PREFIX)
        music["wavarcs"].append({"name": name, "file": f"{name}.swar", "single_load": True})
    music["wavarcs"].append({"name": f"WAVE_ARC_{PREFIX}BASIC_LITE", "file": f"WAVE_ARC_{PREFIX}BASIC_LITE.swar",
                             "single_load": True})
    lite_songs = []

    for s in wanted:
        si = seq_info[s]
        bank = bank_info[si["bank"]]
        programs = midi_programs(sound / "SEQ" / f"{s}.mid")
        # nitrosfx espera finales de línea CRLF, como los .txt de pokeplatinum
        lines = (sound / "BANK" / f"{si['bank']}.txt").read_text().replace("\r", "").split("\n")
        bank_name = f"BANK_{PREFIX}{s.removeprefix('SEQ_')}"
        lite = wave_bytes(bank, programs) > BUDGET
        if lite:
            lite_songs.append(s)
        (tmp / f"{bank_name}.txt").write_bytes(
            "\r\n".join(trimmed_bank(lines, programs, basic_remap, 3 if lite else 2)).encode())
        nsfx(tmp / f"{bank_name}.txt", DEST / f"{bank_name}.sbnk")
        second = bank["waves"][1]
        music["banks"].append({"name": bank_name, "file": f"{bank_name}.sbnk",
                               "wa": ["WAVE_ARC_BASIC",
                                      second.replace("WAVE_ARC_", "WAVE_ARC_" + PREFIX) if second else "",
                                      f"WAVE_ARC_{PREFIX}BASIC", f"WAVE_ARC_{PREFIX}BASIC_LITE"]})
        seq_name = f"SEQ_{PREFIX}{s.removeprefix('SEQ_')}"
        nsfx(sound / "SEQ" / f"{s}.mid", DEST / f"{seq_name}.sseq")
        music["sequences"].append({"name": seq_name, "file": f"{seq_name}.sseq", "bank": bank_name,
                                   "volume": si["volume"], "channel_priority": si["channelPriority"],
                                   "player_priority": si["playerPriority"], "player": si["player"]})
        music["map"][s] = seq_name

    (DEST / "music.json").write_text(json.dumps(music, indent=1) + "\n")
    shutil.rmtree(tmp)
    size = sum(p.stat().st_size for p in DEST.iterdir())
    if lite_songs:
        print("Con instrumentos a media frecuencia (no caben enteros):", ", ".join(lite_songs))
    print(f"{len(music['sequences'])} canciones, {len(music['wavarcs'])} archivos de ondas, "
          f"{len(basic_remap)} ondas compartidas con el BASIC de HGSS; {size // 1024} KB")


if __name__ == "__main__":
    main()

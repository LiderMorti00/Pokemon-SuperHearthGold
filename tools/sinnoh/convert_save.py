#!/usr/bin/env python3
"""
Adapta una partida guardada de Pokémon SuperHearthGold anterior a las flags ampliadas.

Uso:
    python3 tools/sinnoh/convert_save.py vieja.sav nueva.sav

Las flags ampliadas (src/shg_flags.c) añaden 96 bytes al final del bloque «misc» del guardado,
así que los bloques que van detrás se desplazan y el juego ya no reconoce las partidas de antes.
Este script inserta esos 96 bytes (a cero) en las dos copias de la partida y recalcula el pie
(tamaño y CRC) del primer bloque. El segundo bloque (cajas del PC) no cambia.
"""
import struct
import sys

MAGIC = 0x20060623
SLOTS = (0x00000, 0x40000)
MISC_END = 9748 + 1708      # desplazamiento + tamaño del bloque misc antiguo dentro del bloque 0
EXTRA = 96
OLD_SIZE = 0xFFA0


def crc16(data):
    crc = 0xFFFF
    for b in data:
        crc ^= b << 8
        for _ in range(8):
            crc = ((crc << 1) ^ 0x1021) & 0xFFFF if crc & 0x8000 else (crc << 1) & 0xFFFF
    return crc


def main():
    src, dst = sys.argv[1], sys.argv[2]
    data = bytearray(open(src, "rb").read())
    for base in SLOTS:
        count, size, magic, slot, crc = struct.unpack_from("<IIIHH", data, base + OLD_SIZE - 16)
        if magic != MAGIC or size != OLD_SIZE or slot != 0:
            print(f"copia en 0x{base:x}: no es una partida antigua válida, se deja igual")
            continue
        body = data[base:base + OLD_SIZE - 16]
        body = body[:MISC_END] + bytes(EXTRA) + body[MISC_END:]
        new_size = OLD_SIZE + EXTRA
        footer = struct.pack("<IIIHH", count, new_size, MAGIC, 0, crc16(body))
        data[base:base + new_size] = body + footer
        print(f"copia en 0x{base:x}: convertida")
    open(dst, "wb").write(data)


if __name__ == "__main__":
    main()

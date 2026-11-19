"""
Texturas Nitro (bloque TEX0 de los NSBTX/NSBMD): leer y fusionar.

Lo usa import_sinnoh.py para añadir las texturas de los carteles de Platino (que vienen dentro de sus
NSBMD) a los conjuntos de texturas de edificios de las áreas de Sinnoh: HGSS dibuja los edificios
con las texturas del área y busca cada textura por su nombre en el diccionario del NSBTX.

Formato (NitroSDK, NNSG3dResTex):
  TEX0  u32 'TEX0', u32 tamaño
  0x08  u32 vramKey, u16 tamaño texturas >> 3, u16 desplazamiento diccionario de texturas,
        u16 flag, u16 relleno, u32 desplazamiento datos de texturas
  0x18  u32 vramKey, u16 tamaño 4x4 >> 3, u16 desplazamiento info 4x4, u16 flag, u16 relleno,
        u32 desplazamiento datos 4x4, u32 desplazamiento índices de paleta 4x4
  0x2C  u32 vramKey, u16 tamaño paletas >> 3, u16 flag, u32 desplazamiento diccionario de paletas,
        u32 desplazamiento datos de paletas
  diccionario de texturas (entradas de 8 bytes: texImageParam, extra), diccionario de paletas
  (entradas de 4 bytes: desplazamiento >> 3, flags) y los datos.
"""
import struct

FMT_4X4 = 5
HEADER = "<4sI IHHHHI IHHHHII IHHII"


# --- diccionarios (árbol Patricia de NitroSDK) -----------------------------------------------------

def read_dict(data, off):
    """[(nombre de 16 bytes, datos de la entrada)]"""
    num = data[off + 1]
    ofs_entry = struct.unpack_from("<H", data, off + 6)[0]
    unit, ofs_name = struct.unpack_from("<HH", data, off + ofs_entry)
    entries = []
    for i in range(num):
        e = data[off + ofs_entry + 4 + unit * i: off + ofs_entry + 4 + unit * (i + 1)]
        name = data[off + ofs_entry + ofs_name + 16 * i: off + ofs_entry + ofs_name + 16 * (i + 1)]
        entries.append((name, e))
    return entries


def _bit(name, b):
    return (name[b >> 3] >> (b & 7)) & 1


def build_dict(entries, unit):
    """Diccionario con árbol Patricia. Búsqueda del SDK: x = nodo 0, y = hijo izquierdo; mientras
    x.refBit > y.refBit, baja por el bit refBit del nombre (bit b = byte b >> 3, bit b & 7)."""
    nodes = [[127, 0, 0, 0]]          # refBit, izquierdo, derecho, entrada
    keys = {0: bytes(16)}             # nombre de cada nodo (el nodo 0 es la cabeza, nombre nulo)
    for idx, (name, _) in enumerate(entries):
        p, t = 0, nodes[0][1]
        while nodes[p][0] > nodes[t][0]:
            p, t = t, nodes[t][2] if _bit(name, nodes[t][0]) else nodes[t][1]
        other = keys[t]
        if other == name:
            raise ValueError(f"nombre repetido en el diccionario: {name}")
        i = next(b for b in range(126, -1, -1) if _bit(name, b) != _bit(other, b))
        p, t = 0, nodes[0][1]
        while nodes[p][0] > nodes[t][0] and nodes[t][0] > i:
            p, t = t, nodes[t][2] if _bit(name, nodes[t][0]) else nodes[t][1]
        x = len(nodes)
        node = [i, 0, 0, idx]
        if _bit(name, i):
            node[2], node[1] = x, t
        else:
            node[1], node[2] = x, t
        nodes.append(node)
        keys[x] = name
        if p == 0:
            nodes[0][1] = x
        elif _bit(name, nodes[p][0]):
            nodes[p][2] = x
        else:
            nodes[p][1] = x
    tree = b"".join(struct.pack("<4B", *n) for n in nodes)
    ofs_entry = 8 + len(tree)
    entry_part = struct.pack("<HH", unit, 4 + unit * len(entries))
    entry_part += b"".join(e for _, e in entries) + b"".join(n for n, _ in entries)
    size = ofs_entry + len(entry_part)
    head = struct.pack("<BBHHH", 0, len(entries), size, 8, ofs_entry)
    return head + tree + entry_part


# --- TEX0 ----------------------------------------------------------------------------------------

def find_tex0(nitro):
    """Desplazamiento del bloque TEX0 dentro de un archivo BTX0/BMD0."""
    nblocks = struct.unpack_from("<H", nitro, 14)[0]
    for i in range(nblocks):
        off = struct.unpack_from("<I", nitro, 16 + 4 * i)[0]
        if nitro[off:off + 4] == b"TEX0":
            return off
    return None


def parse_tex0(nitro):
    t = find_tex0(nitro)
    if t is None:
        return None
    h = struct.unpack_from(HEADER, nitro, t)
    (_, _, _, tex_size, tex_dict, _, _, tex_data,
     _, c_size, c_info, _, _, c_data, c_idx,
     _, pal_size, pal_flag, pal_dict, pal_data) = h
    textures = read_dict(nitro, t + tex_dict)
    palettes = read_dict(nitro, t + pal_dict)
    return {
        "tex": nitro[t + tex_data: t + tex_data + (tex_size << 3)],
        "c4x4": nitro[t + c_data: t + c_data + (c_size << 3)],
        "c4x4_idx": nitro[t + c_idx: t + c_idx + (c_size << 2)],
        "pal": nitro[t + pal_data: t + pal_data + (pal_size << 3)],
        "textures": textures, "palettes": palettes, "pal_flag": pal_flag,
    }


def _shift_texture(entry, tex_shift, c4x4_shift):
    param, extra = struct.unpack("<II", entry)
    fmt = (param >> 26) & 7
    shift = c4x4_shift if fmt == FMT_4X4 else tex_shift
    off = (param & 0xFFFF) + (shift >> 3)
    if off > 0xFFFF:
        raise ValueError("demasiados datos de textura")
    return struct.pack("<II", (param & ~0xFFFF) | off, extra)


def _shift_palette(entry, shift):
    off, flags = struct.unpack("<HH", entry)
    return struct.pack("<HH", off + (shift >> 3), flags)


def _pad8(b):
    return b + bytes(-len(b) % 8)


def merge_into_btx(btx, extra_tex):
    """Devuelve el NSBTX `btx` con las texturas y paletas de `extra_tex` (resultado de parse_tex0)
    añadidas. Las que ya existen con el mismo nombre no se tocan."""
    base = parse_tex0(btx)
    names_t = {n for n, _ in base["textures"]}
    names_p = {n for n, _ in base["palettes"]}
    tex = _pad8(base["tex"])
    c4x4 = _pad8(base["c4x4"])
    c4x4_idx = base["c4x4_idx"] + bytes(len(c4x4) // 2 - len(base["c4x4_idx"]))
    pal = _pad8(base["pal"])
    textures = list(base["textures"])
    palettes = list(base["palettes"])
    for n, e in extra_tex["textures"]:
        if n not in names_t:
            textures.append((n, _shift_texture(e, len(tex), len(c4x4))))
    for n, e in extra_tex["palettes"]:
        if n not in names_p:
            palettes.append((n, _shift_palette(e, len(pal))))
    tex += _pad8(extra_tex["tex"])
    c4x4 += _pad8(extra_tex["c4x4"])
    c4x4_idx += extra_tex["c4x4_idx"] + bytes(len(c4x4) // 2 - len(c4x4_idx) - len(extra_tex["c4x4_idx"]))
    pal += _pad8(extra_tex["pal"])

    tex_dict = build_dict(textures, 8)
    pal_dict = build_dict(palettes, 4)
    header_size = 0x3C
    o_tex_dict = header_size
    o_pal_dict = o_tex_dict + len(tex_dict)
    o_tex = _align(o_pal_dict + len(pal_dict), 8)
    o_c4x4 = o_tex + len(tex)
    o_c4x4_idx = o_c4x4 + len(c4x4)
    o_pal = _align(o_c4x4_idx + len(c4x4_idx), 8)
    size = o_pal + len(pal)
    block = bytearray(size)
    struct.pack_into(HEADER, block, 0, b"TEX0", size,
                     0, len(tex) >> 3, o_tex_dict, 0, 0, o_tex,
                     0, len(c4x4) >> 3, 0x3C, 0, 0, o_c4x4, o_c4x4_idx,
                     0, len(pal) >> 3, base["pal_flag"], o_pal_dict, o_pal)
    block[o_tex_dict:o_tex_dict + len(tex_dict)] = tex_dict
    block[o_pal_dict:o_pal_dict + len(pal_dict)] = pal_dict
    block[o_tex:o_tex + len(tex)] = tex
    block[o_c4x4:o_c4x4 + len(c4x4)] = c4x4
    block[o_c4x4_idx:o_c4x4_idx + len(c4x4_idx)] = c4x4_idx
    block[o_pal:o_pal + len(pal)] = pal

    # el NSBTX de HGSS solo tiene el bloque TEX0
    t = find_tex0(btx)
    head = bytearray(btx[:t])
    total = len(head) + len(block)
    struct.pack_into("<I", head, 8, total)
    return bytes(head) + bytes(block)


def _align(n, a):
    return n + (-n % a)

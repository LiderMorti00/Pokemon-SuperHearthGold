/*
 * Pokémon SuperHearthGold: caja de medallas de Platino en Sinnoh.
 *
 * En Johto y Kanto la ficha de entrenador es la de HGSS. En Sinnoh (mapas 540 en adelante):
 *  - las medallas que se marcan son las 8 de Sinnoh (flags FLAG_SHG_BADGE_*);
 *  - la pantalla de medallas usa el fondo, los sprites y las posiciones de la caja de Platino
 *    (archivos 78-91 de a/0/4/9, ver import_sinnoh.py). La ficha (y el personaje) siguen siendo
 *    los de HGSS.
 *
 * ShgTrainerCardBadges sustituye a la función de arm9 que copia las medallas a los datos de la
 * ficha (0x0206940C). ShgTrainerCardSetBanks sustituye a una función del overlay 51 (la ficha)
 * que se ejecuta antes de cargar los gráficos: si estamos en Sinnoh, cambia en RAM los números de
 * archivo que carga el overlay y la tabla de posiciones de las medallas.
 */
#include "../include/types.h"
#include "../include/save.h"

#define SHG_FIRST_SINNOH_MAP 540
#define FLAG_SHG_BADGE_COAL  1032   // ver data/scr_seq/include/superhearthgold.inc

void *LONG_CALL Save_VarsFlags_Get(void *saveData);
BOOL LONG_CALL Save_VarsFlags_CheckFlagInArray(void *varsFlags, u16 flag);
void LONG_CALL IC_InvalidateRange(void *start, u32 size);
void LONG_CALL DC_FlushRange(void *start, u32 size);

// orden de Platino de las medallas (huecos de la caja): Lignito, Bosque, Adoquín, Ciénaga,
// Reliquia, Mina, Carámbano, Faro; flags 1032-1039 en el orden de los gimnasios de este juego
static const u16 sSinnohBadgeFlags[8] = {
    FLAG_SHG_BADGE_COAL, FLAG_SHG_BADGE_COAL + 1, FLAG_SHG_BADGE_COAL + 3, FLAG_SHG_BADGE_COAL + 4,
    FLAG_SHG_BADGE_COAL + 2, FLAG_SHG_BADGE_COAL + 5, FLAG_SHG_BADGE_COAL + 6, FLAG_SHG_BADGE_COAL + 7,
};

// posiciones de Platino (esquina superior izquierda del sprite de 64x64) + 32: centro
static const u32 sSinnohBadgePos[8][2] = {
    { 24 + 32, 40 + 32 }, { 80 + 32, 40 + 32 }, { 136 + 32, 40 + 32 }, { 192 + 32, 40 + 32 },
    { 24 + 32, 72 + 32 }, { 80 + 32, 72 + 32 }, { 136 + 32, 72 + 32 }, { 192 + 32, 72 + 32 },
};

u8 gShgSinnohCard;

void LONG_CALL ShgTrainerCardBadges(void *profile, u8 *fieldSystem, u8 *card)
{
    void *saveData = *(void **)(fieldSystem + 0xC);
    u32 mapId = **(u32 **)(fieldSystem + 0x20);
    u16 bits = 0;

    for (int i = 0; i < 8; i++) {
        *(u32 *)(card + 0x48 + 4 * i) &= ~1;
    }
    gShgSinnohCard = (mapId >= SHG_FIRST_SINNOH_MAP);
    if (gShgSinnohCard) {
        void *varsFlags = Save_VarsFlags_Get(saveData);
        for (int i = 0; i < 8; i++) {
            if (Save_VarsFlags_CheckFlagInArray(varsFlags, sSinnohBadgeFlags[i])) {
                bits |= 1 << i;
            }
        }
    } else {
        for (int i = 0; i < 16; i++) {
            if (PlayerProfile_TestBadgeFlag(profile, i)) {
                bits |= 1 << i;
            }
        }
    }
    *(u16 *)(card + 6) |= bits;
}

// archivos de a/0/4/9 añadidos por import_sinnoh.py
#define CASE_CHAR       78
#define CASE_SCREEN     79
#define CASE_BACKGROUND 80
#define CASE_PALETTE    81
#define BADGE_CHAR      82
#define BADGE_CELLS     83
#define BADGE_PALETTES  84   // 84-91

static void PatchImm8(u32 addr, u8 value)
{
    *(u8 *)addr = value;   // instrucción thumb "movs r1, #imm8": el byte bajo es el inmediato
    DC_FlushRange((void *)(addr & ~31), 32);
    IC_InvalidateRange((void *)(addr & ~31), 32);
}

static void PatchThumb(u32 addr, u16 instr)
{
    *(u16 *)addr = instr;
    DC_FlushRange((void *)(addr & ~31), 32);
    IC_InvalidateRange((void *)(addr & ~31), 32);
}

void LONG_CALL ShgTrainerCardSetBanks(void)
{
    if (gShgSinnohCard) {
        PatchImm8(0x021E650E, CASE_CHAR);        // gráficos del fondo (43)
        PatchImm8(0x021E6546, CASE_SCREEN);      // pantalla de medallas con Kanto (52)
        PatchImm8(0x021E6560, CASE_SCREEN);      // pantalla de medallas (51)
        PatchImm8(0x021E6578, CASE_BACKGROUND);  // fondo de detrás (50)
        PatchImm8(0x021E639E, CASE_PALETTE);     // paleta de la pantalla (28)
        PatchImm8(0x021E7B68, 0);                // sin fila de Kanto HGSS baja las medallas 40 px
        PatchThumb(0x021E6588, 0xE01E);          // sin el emblema de Johto/Kanto con 8/16 medallas
        u8 *sprites = (u8 *)0x021E7FC4;          // gráficos, paleta, celdas y animaciones
        sprites[0] = BADGE_CHAR;
        sprites[2] = BADGE_CELLS;
        u32 *palettes = (u32 *)0x021E7FDC;
        u32 *positions = (u32 *)0x021E801C;
        for (int i = 0; i < 8; i++) {
            palettes[i] = BADGE_PALETTES + i;
            positions[2 * i] = sSinnohBadgePos[i][0];
            positions[2 * i + 1] = sSinnohBadgePos[i][1];
        }
        DC_FlushRange((void *)0x021E7FC0, 0x100);
    }
    // cuerpo original: copia la configuración de bancos de VRAM y la aplica
    u32 banks[10];
    const u32 *src = (const u32 *)0x021E7EA8;
    for (int i = 0; i < 10; i++) {
        banks[i] = src[i];
    }
    GfGfx_SetBanks(banks);
}

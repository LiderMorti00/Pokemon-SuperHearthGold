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
void LONG_CALL GfGfx_EngineATogglePlanes(u32 planes, u32 enable);
BOOL LONG_CALL System_GetTouchNew(void);
void LONG_CALL PlaySE(u16 se);
void LONG_CALL String_Delete(void *string);
void LONG_CALL FontID_Release(u32 fontId);
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
static u8 gShgLidOpen;

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
        // como en Platino, la ficha va en la pantalla de arriba y la caja en la táctil
        PatchThumb(0x021E6246, 0x4381);          // ov51_021E6238: "orrs r0, r1" -> "bics r1, r0"
        PatchThumb(0x021E6248, 0x8011);          //   "strh r0, [r2]" -> "strh r1, [r2]" (POWCNT)
        PatchThumb(0x021E6A58, 0x2200);          // A no abre la firma (se firma en la táctil)
        PatchThumb(0x021E6BB0, 0x2300);          // el fondo de HGSS (BG3) se desplaza: la tapa no
        PatchThumb(0x021E6BBC, 0x2300);
        u8 *lidTemplate = (u8 *)0x021E7E54;      // plantilla del BG3: la tapa, 256 colores, delante
        lidTemplate[17] = 1;
        lidTemplate[21] = 0;
        DC_FlushRange((void *)0x021E7E40, 0x40);
        gShgLidOpen = FALSE;
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

#define SEQ_SE_DP_CARD11       1688
#define SEQ_SE_DP_SELECT       1500
#define SEQ_SE_GS_GEARCANCEL   (0x25 << 6)
#define GX_PLANEMASK_BG3       8
#define REG_POWCNT1            (*(vu16 *)0x04000304)
#define GSYSTEM_TOUCH_X        (*(u16 *)(0x021D110C + 0x60))
#define GSYSTEM_TOUCH_Y        (*(u16 *)(0x021D110C + 0x62))

BOOL LONG_CALL TouchscreenHitbox_TouchNewIsIn(const void *hitbox);

/*
 * Sustituye a ov51_021E6AAC (táctil de la ficha). En Sinnoh la táctil es la caja: el botón de
 * abajo abre y cierra la tapa con las caras de los líderes. En Johto y Kanto es el original.
 */
int LONG_CALL ShgTrainerCardTouch(u8 *app, int *touched)
{
    if (!System_GetTouchNew()) {
        return 0;
    }
    if (gShgSinnohCard) {
        u16 x = GSYSTEM_TOUCH_X, y = GSYSTEM_TOUCH_Y;
        if (x >= 112 && x < 144 && y >= 152 && y < 184) {
            gShgLidOpen = !gShgLidOpen;
            GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG3, !gShgLidOpen);
            PlaySE(SEQ_SE_DP_CARD11);
        }
        return 0;
    }
    if (TouchscreenHitbox_TouchNewIsIn((void *)0x021E7DB8)) {
        *touched = 1;
        PlaySE(SEQ_SE_GS_GEARCANCEL);
        return 5;
    }
    if (*(u32 *)(app + 0x30F4) != 0 && !((app[0x343A] >> 1) & 1)
        && TouchscreenHitbox_TouchNewIsIn((void *)0x021E7DBC)) {
        *touched = 1;
        PlaySE(SEQ_SE_DP_SELECT);
        return 4;
    }
    if (TouchscreenHitbox_TouchNewIsIn((void *)0x021E7DC0)) {
        app[0xD1 << 6] = (u8)GSYSTEM_TOUCH_X;
        app[(0xD1 << 6) + 1] = (u8)GSYSTEM_TOUCH_Y;
        *touched = 1;
        return 3;
    }
    return 0;
}

/*
 * Sustituye a ov51_021E6038 (al cerrar la ficha libera los textos): además vuelve a poner la
 * pantalla principal arriba si estaba la ficha de Sinnoh.
 */
void LONG_CALL ShgTrainerCardFreeStrings(u8 *app)
{
    for (int i = 0; i < 14; i++) {
        String_Delete(*(void **)(app + 0x33EC + 4 * i));
    }
    static const u16 sStrings[] = { 0x33E8, 0x33E4, 0x33E0, 0x33DC, 0x33D8, 0x33CC, 0x33D4, 0x33D0, 0x33C8 };
    for (u32 i = 0; i < sizeof(sStrings) / sizeof(sStrings[0]); i++) {
        String_Delete(*(void **)(app + sStrings[i]));
    }
    DestroyMsgData(*(MsgData **)(app + 0x33C4));
    FontID_Release(4);
    if (gShgSinnohCard) {
        REG_POWCNT1 |= 0x8000;
    }
}

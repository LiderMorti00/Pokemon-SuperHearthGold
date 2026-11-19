/*
 * Pokémon SuperHearthGold: mapa de Sinnoh en el Pokégear.
 *
 * El mapa del Pokégear de HGSS (overlay 101) dibuja una casilla por celda de la matriz del mundo
 * y sabe dónde está el jugador por las coordenadas de matriz que le pasa el campo. En Sinnoh:
 *  - ShgPokegearArgs* (sustituyen a FieldSystem_InitPokegearArgs_Phone/Map) calculan la posición
 *    del jugador en el mapa de Sinnoh: en la matriz principal, por su posición; en interiores y
 *    mapas sueltos, por la entrada desde fuera (tabla generada por sync_pokegear_map.py);
 *  - ShgPokegearMapInit (sustituye a PokegearMap_Init) cambia en RAM los gráficos, la paleta, el
 *    tamaño del mapa, el banco de textos (nombre de la región y descripciones) y la lista de
 *    zonas del mapa, y quita lo que solo tiene sentido en Johto y Kanto.
 */
#include "../include/types.h"

struct ShgPokegearMapSpec {   // = PokegearMapLocationSpec de HGSS
    u16 mapId;
    u8 x;
    u8 y;
    u16 size;                 // ancho:4, alto:4, desplazamientos del objeto:4+4
    u8 flavorText;
    u8 thumbnail;
    u8 unused[4];
    u8 srcX, srcY, destWidth, destHeight;
};

struct ShgPokegearMapPos {
    u16 mapId;
    u8 x;
    u8 z;
};

struct ShgSpawn {
    u16 blackoutMap, blackoutX, blackoutZ;
    u16 flyMap, flyX, flyZ;
    u8 isBlackoutSpawn;
};

struct ShgFlypoint {          // = MapFlypointParam de HGSS (14 bytes)
    u16 mapIdForName;
    u16 mapIdForWarp;
    u8 flypoint;
    u8 mask;
    u8 x, y;
    u8 maskSrcX, maskSrcY;
    u8 size;                  // ancho:4, alto:4
    u8 maskDestSize, maskDestPos;
};

#include "../data/sinnoh/pokegear_map.h"

#define SHG_FIRST_SINNOH_MAP 540

void LONG_CALL IC_InvalidateRange(void *start, u32 size);
void LONG_CALL DC_FlushRange(void *start, u32 size);
u32 LONG_CALL PlayerAvatar_GetXCoord(void *playerAvatar);
u32 LONG_CALL PlayerAvatar_GetZCoord(void *playerAvatar);
void LONG_CALL FieldSystem_InitPokegearArgs(void *fieldSystem, u8 *args, BOOL isMap);

u8 gShgSinnohGear;

static void Patch16(u32 addr, u16 value)
{
    *(u16 *)addr = value;
    DC_FlushRange((void *)(addr & ~31), 32);
    IC_InvalidateRange((void *)(addr & ~31), 32);
}

static BOOL ShgSinnohCell(u16 mapId, u8 *fieldSystem, int *x, int *z)
{
    // ¿mapa de la matriz principal? (la celda de la matriz en la que está el jugador tiene ese mapa)
    void *playerAvatar = *(void **)(fieldSystem + 0x40);
    int px = PlayerAvatar_GetXCoord(playerAvatar) / 32 + SHG_PGMAP_CROP_COL;
    int pz = PlayerAvatar_GetZCoord(playerAvatar) / 32 + SHG_PGMAP_CROP_ROW;
    if (pz >= 0 && px >= 0 && pz < (int)(sizeof(sShgSinnohCells) / sizeof(sShgSinnohCells[0]))
        && px < (int)(sizeof(sShgSinnohCells[0]) / sizeof(u16)) && sShgSinnohCells[pz][px] == mapId) {
        *x = px;
        *z = pz;
        return TRUE;
    }
    for (u32 i = 0; i < sizeof(sShgPokegearMapPositions) / sizeof(sShgPokegearMapPositions[0]); i++) {
        if (sShgPokegearMapPositions[i].mapId == mapId) {
            *x = sShgPokegearMapPositions[i].x;
            *z = sShgPokegearMapPositions[i].z;
            return TRUE;
        }
    }
    return FALSE;
}

static void ShgFixPokegearArgs(u8 *fieldSystem, u8 *args)
{
    u16 mapId = **(u32 **)(fieldSystem + 0x20);
    int x, z;
    gShgSinnohGear = (mapId >= SHG_FIRST_SINNOH_MAP);
    if (!gShgSinnohGear) {
        return;
    }
    if (!ShgSinnohCell(mapId, fieldSystem, &x, &z)) {
        x = 5;   // Pueblo Hojaverde/Ciudad Jubileo, por si acaso
        z = 23;
    }
    if (x < SHG_PGMAP_X_MIN) x = SHG_PGMAP_X_MIN;
    if (x > SHG_PGMAP_X_MAX) x = SHG_PGMAP_X_MAX;
    if (z < SHG_PGMAP_Z_MIN) z = SHG_PGMAP_Z_MIN;
    if (z > SHG_PGMAP_Z_MAX) z = SHG_PGMAP_Z_MAX;
    args[0x22] = x + SHG_PGMAP_COL_OFFSET;          // matrixXCoord: columna del mapa
    args[0x23] = z + SHG_PGMAP_ROW_OFFSET - 2;      // matrixYCoord: el mapa le suma 2
    *(u16 *)(args + 0x12) = sShgSinnohCells[z][x] ? sShgSinnohCells[z][x] : mapId;
}

void LONG_CALL ShgPokegearArgsPhone(void *fieldSystem, u8 *args)
{
    FieldSystem_InitPokegearArgs(fieldSystem, args, FALSE);
    ShgFixPokegearArgs(fieldSystem, args);
}

void LONG_CALL ShgPokegearArgsMap(void *fieldSystem, u8 *args)
{
    FieldSystem_InitPokegearArgs(fieldSystem, args, TRUE);
    ShgFixPokegearArgs(fieldSystem, args);
}

// archivos de a/1/4/4 añadidos por import_sinnoh.py
#define PGMAP_SINNOH_CHAR    70
#define PGMAP_SINNOH_SCREEN  71
#define PGMAP_SINNOH_PALETTE 72   // 72-77, uno por cada carcasa del Pokégear

void *LONG_CALL ShgOverlayManager_GetArgs(void *man);
void *LONG_CALL ShgOverlayManager_CreateAndGetData(void *man, u32 size, u32 heapId);
BOOL LONG_CALL Overlay_Load(u32 overlayId, u32 loadType);
BOOL LONG_CALL ShgHeap_Create(u32 parent, u32 child, u32 size);
void LONG_CALL ShgMemset(void *dest, int value, u32 size);

typedef void (*PokegearMapInitInternal)(u8 *mapApp);
static void ShgSinnohMapPatches(void);
static void ShgSinnohMapFields(u8 *mapApp);

/* Sustituye a PokegearMap_Init (overlay 101, 0x021E7740). */
BOOL LONG_CALL ShgPokegearMapInit(void *man, int *state UNUSED)
{
    void *pokegear = ShgOverlayManager_GetArgs(man);
    Overlay_Load(0x1A, 2);
    ShgHeap_Create(3, 0x5B, 0x30000);
    u8 *mapApp = ShgOverlayManager_CreateAndGetData(man, 0x9F4, 0x5B);
    ShgMemset(mapApp, 0, 0x9F4);
    *(void **)(mapApp + 0x10) = pokegear;
    *(u32 *)(mapApp + 0x00) = 0x5B;

    if (gShgSinnohGear) {
        ShgSinnohMapPatches();
    }

    ((PokegearMapInitInternal)(0x021E78EC | 1))(mapApp);

    if (gShgSinnohGear) {
        ShgSinnohMapFields(mapApp);
    } else {
        *(u32 *)(mapApp + 0x214) = 0x021F7372;                // sLocationSpecs de HGSS
        mapApp[0x136] = 100;
    }
    return TRUE;
}

/* ---------------------------------------------------------------------------------------------
 * Volar y reaparición en Sinnoh.
 *
 * HGSS tiene una tabla de 30 puntos (sSpawnMaps, 0x020F9E80) con el Centro Pokémon donde se
 * reaparece, el punto de llegada de Volar y una bandera por punto (0x9B0 + n, como mucho 38).
 * Los puntos de Sinnoh son los de Platino: identificadores 0x41 en adelante y banderas ampliadas
 * 0x12E0 + (n - 0x40). Se sustituyen las funciones que leen la tabla.
 * ------------------------------------------------------------------------------------------- */

#define HG_SPAWN_COUNT     30
#define SINNOH_SPAWN_BASE  0x41    // identificador del primer punto de Sinnoh
#define SINNOH_FLYPOINT_BASE 0x40  // n.º de bandera de Volar del primer punto de Sinnoh
#define SINNOH_FLYPOINT_FLAG 0x12E0

struct HgSpawn {
    u16 flags;                 // bandera:8, reaparición:1, Volar:1
    u16 deathMap;
    u16 deathXY;
    u16 flyMap, flyX, flyY;
    u16 specMap, specX, specY;
};
#define sHgSpawns ((const struct HgSpawn *)0x020F9E80)

struct ShgLocation {
    int mapId;
    int warpId;
    int x;
    int y;
    int direction;
};

void *LONG_CALL Save_VarsFlags_Get(void *saveData);
BOOL LONG_CALL ShgFlagAction(void *varsFlags, u32 action, u32 flag);

static const struct ShgSpawn *SinnohSpawn(int id)
{
    int i = id - SINNOH_SPAWN_BASE;
    return (i >= 0 && i < SHG_NUM_SINNOH_SPAWNS) ? &sShgSinnohSpawns[i] : NULL;
}

static const struct HgSpawn *HgSpawn(int id)
{
    if (id <= 0 || id > HG_SPAWN_COUNT) {
        id = 1;
    }
    return &sHgSpawns[id - 1];
}

void LONG_CALL ShgGetFlyWarpData(int id, struct ShgLocation *loc)
{
    const struct ShgSpawn *sp = SinnohSpawn(id);
    loc->warpId = -1;
    loc->direction = 1;
    if (sp) {
        loc->mapId = sp->flyMap;
        loc->x = sp->flyX;
        loc->y = sp->flyZ;
    } else {
        const struct HgSpawn *hg = HgSpawn(id);
        loc->mapId = hg->flyMap;
        loc->x = hg->flyX;
        loc->y = hg->flyY;
    }
}

void LONG_CALL ShgGetSpecialSpawnWarpData(int id, struct ShgLocation *loc)
{
    const struct ShgSpawn *sp = SinnohSpawn(id);
    loc->warpId = -1;
    loc->direction = 1;
    if (sp) {
        loc->mapId = sp->flyMap;
        loc->x = sp->flyX;
        loc->y = sp->flyZ;
    } else {
        const struct HgSpawn *hg = HgSpawn(id);
        loc->mapId = hg->specMap;
        loc->x = hg->specX;
        loc->y = hg->specY;
    }
}

void LONG_CALL ShgGetDeathWarpData(int id, struct ShgLocation *loc)
{
    const struct ShgSpawn *sp = SinnohSpawn(id);
    loc->warpId = -1;
    loc->direction = 0;
    if (sp) {
        loc->mapId = sp->blackoutMap;
        loc->x = sp->blackoutX;
        loc->y = sp->blackoutZ;
    } else {
        const struct HgSpawn *hg = HgSpawn(id);
        loc->mapId = hg->deathMap;
        loc->x = hg->deathXY & 0xFF;
        loc->y = hg->deathXY >> 8;
    }
}

int LONG_CALL ShgGetSpawnIdForDeathWarp(u16 mapId)
{
    for (int i = 0; i < HG_SPAWN_COUNT; i++) {
        if (sHgSpawns[i].deathMap == mapId && (sHgSpawns[i].flags & 0x100)) {
            return i + 1;
        }
    }
    for (int i = 0; i < SHG_NUM_SINNOH_SPAWNS; i++) {
        if (sShgSinnohSpawns[i].blackoutMap == mapId && sShgSinnohSpawns[i].isBlackoutSpawn) {
            return SINNOH_SPAWN_BASE + i;
        }
    }
    return 0;
}

int LONG_CALL ShgGetSpawnIdForFlyMap(u16 mapId)
{
    for (int i = 0; i < HG_SPAWN_COUNT; i++) {
        if (sHgSpawns[i].flyMap == mapId) {
            return i + 1;
        }
    }
    for (int i = 0; i < SHG_NUM_SINNOH_SPAWNS; i++) {
        if (sShgSinnohSpawns[i].flyMap == mapId) {
            return SINNOH_SPAWN_BASE + i;
        }
    }
    return 0;
}

/* Al entrar en un mapa: si es un punto de Volar, se marca. */
void LONG_CALL ShgFlypointFlagAction(u8 *fieldSystem, u16 mapId)
{
    void *varsFlags = Save_VarsFlags_Get(*(void **)(fieldSystem + 0xC));
    for (int i = 0; i < HG_SPAWN_COUNT; i++) {
        if (sHgSpawns[i].flyMap == mapId && (sHgSpawns[i].flags & 0x200)) {
            ShgFlagAction(varsFlags, 1, 0x9B0 + (sHgSpawns[i].flags & 0xFF));
            return;
        }
    }
    for (int i = 0; i < SHG_NUM_SINNOH_SPAWNS; i++) {
        if (sShgSinnohSpawns[i].flyMap == mapId) {
            ShgFlagAction(varsFlags, 1, SINNOH_FLYPOINT_FLAG + i);
            return;
        }
    }
}

/* Save_VarsFlags_FlypointFlagAction: banderas de Volar 0x9B0 + n, o ampliadas para Sinnoh. */
BOOL LONG_CALL ShgSaveFlypointFlagAction(void *varsFlags, u32 action, u32 n)
{
    if (n >= SINNOH_FLYPOINT_BASE) {
        return ShgFlagAction(varsFlags, action, SINNOH_FLYPOINT_FLAG + (n - SINNOH_FLYPOINT_BASE));
    }
    return ShgFlagAction(varsFlags, action, 0x9B0 + n);
}

/* --- mapa de Volar en Sinnoh (FlyMap_Init, overlay 101, 0x021ED7F8) -------------------------- */

#define PGMAP_SINNOH_FLY_PALETTE 78

void *LONG_CALL ShgHeap_Alloc(u32 heapId, u32 size);
void *LONG_CALL ShgSaveData_Pokegear_Get(void *saveData);
void *LONG_CALL ShgSave_PlayerData_GetOptionsAddr(void *saveData);
void *LONG_CALL ShgSave_PlayerData_GetProfile(void *saveData);

static void ShgSinnohMapPatches(void)
{
    Patch16(0x021E83A2, 0x2000 | PGMAP_SINNOH_CHAR);       // mapa del Pokégear: gráficos (10)
    Patch16(0x021E8422, 0x2100 | PGMAP_SINNOH_SCREEN);     //   mapa (11)
    Patch16(0x021E87BA, 0x3200 | PGMAP_SINNOH_PALETTE);    //   paleta: 20 + carcasa
    Patch16(0x021EE026, 0x2000 | PGMAP_SINNOH_CHAR);       // mapa de Volar: gráficos (10)
    Patch16(0x021EE120, 0x2100 | PGMAP_SINNOH_SCREEN);     //   mapa (11)
    Patch16(0x021EE09E, 0x2000 | PGMAP_SINNOH_FLY_PALETTE);//   paleta (63)
    // ov101_021EAF40: copia solo el mapa de Sinnoh, sin lo que se tapa o destapa de Johto/Kanto
    Patch16(0x021EAF4C, 0x2100 | SHG_PGMAP_WIDTH);
    Patch16(0x021EAF50, 0x2100 | SHG_PGMAP_HEIGHT);
    Patch16(0x021EAF7C, 0xB007);                           // add sp, #28
    Patch16(0x021EAF7E, 0xBDF0);                           // pop {r4-r7, pc}
    // banco de textos 273 -> 1208 ("movs r2, #151; ...; lsls r2, r2, #3")
    Patch16(0x021E85AE, 0x2200 | SHG_PGMAP_TEXT_BANK_IMM);
    Patch16(0x021E85B4, 0x00D2);
    Patch16(0x021EE236, 0x2200 | SHG_PGMAP_TEXT_BANK_IMM);    //   (lo mismo en el mapa de Volar)
    Patch16(0x021EE23C, 0x00D2);
    // Pokegear_RegionFromCoords (overlay 100): siempre "Johto" (en el banco nuevo, "Sinnoh")
    Patch16(0x021E5C50, 0x2002);
    Patch16(0x021E5C52, 0x4770);
    // puntos de Volar (gMapFlypointParams)
    u8 *flypoints = (u8 *)0x021F79B4;
    const u8 *src = (const u8 *)sShgSinnohFlypoints;
    for (u32 i = 0; i < sizeof(sShgSinnohFlypoints); i++) {
        flypoints[i] = src[i];
    }
    DC_FlushRange((void *)((u32)flypoints & ~31), sizeof(sShgSinnohFlypoints) + 64);
}

static void ShgSinnohMapFields(u8 *mapApp)
{
    mapApp[0x138] = (mapApp[0x138] & ~0x60) | (2 << 5);   // todo desbloqueado
    *(u16 *)(mapApp + 0x102) = SHG_PGMAP_WIDTH - 2;       // maxXscroll
    *(u16 *)(mapApp + 0x106) = SHG_PGMAP_HEIGHT - 3;      // maxYscroll
    *(const void **)(mapApp + 0x214) = sShgPokegearMapSpecs;
    mapApp[0x136] = SHG_PGMAP_NUM_SPECS;
}

typedef void (*FlyMapInitParam)(u8 *mapApp);

BOOL LONG_CALL ShgFlyMapInit(void *man, int *state UNUSED)
{
    u8 *args = ShgOverlayManager_GetArgs(man);
    Overlay_Load(0x64, 2);
    Overlay_Load(0x1A, 2);
    ShgHeap_Create(3, 0x5B, 0x40000);
    u8 *mapApp = ShgOverlayManager_CreateAndGetData(man, 0x9F4, 0x5B);
    ShgMemset(mapApp, 0, 0x9F4);
    u8 *pokegear = ShgHeap_Alloc(0x5B, 0xCC);
    *(void **)(mapApp + 0x10) = pokegear;
    ShgMemset(pokegear, 0, 0xCC);
    *(u32 *)(mapApp + 0x00) = 0x5B;
    *(u32 *)(pokegear + 0x00) = 0x5B;
    *(void **)(pokegear + 0x20) = args;
    void *saveData = *(void **)(args + 0x24);
    *(void **)(pokegear + 0x24) = saveData;
    *(void **)(pokegear + 0x28) = ShgSaveData_Pokegear_Get(saveData);
    *(void **)(pokegear + 0x2C) = Save_VarsFlags_Get(saveData);
    *(void **)(pokegear + 0x30) = ShgSave_PlayerData_GetOptionsAddr(saveData);
    *(void **)(pokegear + 0x34) = ShgSave_PlayerData_GetProfile(saveData);
    if (gShgSinnohGear) {
        ShgSinnohMapPatches();
    }
    ((FlyMapInitParam)(0x021ED980 | 1))(mapApp);
    if (gShgSinnohGear) {
        ShgSinnohMapFields(mapApp);
    } else {
        *(u32 *)(mapApp + 0x214) = 0x021F7372;
        mapApp[0x136] = 100;
    }
    return TRUE;
}

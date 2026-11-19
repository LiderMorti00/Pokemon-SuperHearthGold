/*
 * Pokémon SuperHearthGold: flags ampliadas.
 *
 * HGSS solo tiene 2912 flags guardadas y casi todas están en uso. Las flags 0x1000-0x12FF se
 * guardan en el bloque «misc» ampliado de hg-engine (SAVE_MISC_DATA.shgFlags) y sirven para los
 * objetos, objetos ocultos y NPCs de Sinnoh (ver tools/sinnoh/sync_events.py).
 *
 * Sustituye a Save_VarsFlags_GetFlagAddr (0x0205045C), que usan todas las comprobaciones de flags
 * (scripts, objetos ocultos por flag, entrenadores...).
 */
#include "../include/types.h"
#include "../include/save.h"

#define SHG_EXT_FLAG_BASE   0x1000
#define SHG_EXT_FLAG_COUNT  768
#define NUM_FLAGS           2912
#define TEMP_FLAG_BASE      0x4000
#define NUM_TEMP_FLAGS      64
#define VARS_FLAGS_FLAGS_OFFSET 0x2E0  // SaveVarsFlags.flags (después de 0x170 variables)

static u8 *const sTempFlags = (u8 *)0x021D4170;

u8 *LONG_CALL ShgGetFlagAddr(u8 *varsFlags, u16 flagId)
{
    if (flagId == 0) {
        return NULL;
    }
    if (flagId >= SHG_EXT_FLAG_BASE && flagId < SHG_EXT_FLAG_BASE + SHG_EXT_FLAG_COUNT) {
        struct SAVE_MISC_DATA *misc = Sav2_Misc_get(SaveBlock2_get());
        return &misc->shgFlags[(flagId - SHG_EXT_FLAG_BASE) / 8];
    }
    if (flagId < TEMP_FLAG_BASE) {
        if (flagId / 8 >= NUM_FLAGS / 8) {
            return NULL;
        }
        return &varsFlags[VARS_FLAGS_FLAGS_OFFSET + flagId / 8];
    }
    if ((flagId - TEMP_FLAG_BASE) / 8 >= NUM_TEMP_FLAGS / 8) {
        return NULL;
    }
    return &sTempFlags[(flagId - TEMP_FLAG_BASE) / 8];
}

/*
 * Pokémon SuperHearthGold: banderas de "entrenador vencido" para los entrenadores de Sinnoh.
 *
 * HGSS guarda si un entrenador está vencido en la bandera 0x550 + ID. Por encima de los
 * entrenadores de HGSS solo quedan libres las banderas 0x832-0x95F (la 0x960 en adelante se usa),
 * es decir, hasta el ID 1039. Los entrenadores de Sinnoh con ID 1040 o más usan el bloque libre
 * 0x9D4-0xA9F (204 banderas sin uso en HGSS).
 *
 * Sustituye a TrainerFlagCheck/Set/Clear de arm9 (0x02040514, 0x0204052C, 0x02040544; ver "hooks").
 */
#include "../include/types.h"

#define SHG_TRAINER_FLAG_BASE    0x550
#define SHG_TRAINER_SPLIT        1040  // primer ID que ya no cabe en 0x550 + ID
#define SHG_TRAINER_FLAG_BASE_2  0x9D4
#define SHG_TRAINER_MAX          (SHG_TRAINER_SPLIT + 204)

void *LONG_CALL Save_VarsFlags_Get(void *saveData);
BOOL LONG_CALL Save_VarsFlags_CheckFlagInArray(void *varsFlags, u16 flag);
void LONG_CALL Save_VarsFlags_SetFlagInArray(void *varsFlags, u16 flag);
void LONG_CALL Save_VarsFlags_ClearFlagInArray(void *varsFlags, u16 flag);

static u16 ShgTrainerFlagId(u32 trainer)
{
    if (trainer < SHG_TRAINER_SPLIT || trainer >= SHG_TRAINER_MAX) {
        return SHG_TRAINER_FLAG_BASE + trainer;
    }
    return SHG_TRAINER_FLAG_BASE_2 + (trainer - SHG_TRAINER_SPLIT);
}

BOOL LONG_CALL ShgTrainerFlagCheck(void *saveData, u32 trainer)
{
    return Save_VarsFlags_CheckFlagInArray(Save_VarsFlags_Get(saveData), ShgTrainerFlagId(trainer));
}

void LONG_CALL ShgTrainerFlagSet(void *saveData, u32 trainer)
{
    Save_VarsFlags_SetFlagInArray(Save_VarsFlags_Get(saveData), ShgTrainerFlagId(trainer));
}

void LONG_CALL ShgTrainerFlagClear(void *saveData, u32 trainer)
{
    Save_VarsFlags_ClearFlagInArray(Save_VarsFlags_Get(saveData), ShgTrainerFlagId(trainer));
}

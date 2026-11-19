.include "asm/include/interop_macros.inc"

.include "asm/include/scriptmacros.inc"
.include "asm/include/flags.inc"
.include "asm/include/soundeffects.inc"
.include "asm/include/vars.inc"

.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"

.include "data/scr_seq/include/superhearthgold.inc"


// pastoria_city_northeast_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_PastoriaCityNortheastHouse_AceTrainerM
scrdef P_PastoriaCityNortheastHouse_BattleGirl
scrdef P_PastoriaCityNortheastHouse_Pachirisu
scrdef_end

P_PastoriaCityNortheastHouse_AceTrainerM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset 4164, P_PastoriaCityNortheastHouse_ExaminePokemon
	goto_if_unset 4165, P_PastoriaCityNortheastHouse_ExaminePokemon
	goto_if_unset 4166, P_PastoriaCityNortheastHouse_ExaminePokemon
	goto_if_unset 4167, P_PastoriaCityNortheastHouse_ExaminePokemon
	goto_if_unset 4168, P_PastoriaCityNortheastHouse_ExaminePokemon
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCityNortheastHouse_ExaminePokemon:
	npc_msg 1
	npc_msg 2
	call P_PastoriaCityNortheastHouse_ExamineStatCool
	call P_PastoriaCityNortheastHouse_ExamineStatBeauty
	call P_PastoriaCityNortheastHouse_ExamineStatCute
	call P_PastoriaCityNortheastHouse_ExamineStatSmart
	call P_PastoriaCityNortheastHouse_ExamineStatTough
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCityNortheastHouse_ExamineStatCool:
	goto_if_set 4164, P_PastoriaCityNortheastHouse_SetResultCoolFalse
	// Platino: GetPartyMonContestStat VAR_0x8000, CONTEST_TYPE_COOL, VAR_RESULT
	return

P_PastoriaCityNortheastHouse_ExamineStatBeauty:
	goto_if_set 4165, P_PastoriaCityNortheastHouse_SetResultBeautyFalse
	// Platino: GetPartyMonContestStat VAR_0x8000, CONTEST_TYPE_BEAUTY, VAR_RESULT
	return

P_PastoriaCityNortheastHouse_ExamineStatCute:
	goto_if_set 4166, P_PastoriaCityNortheastHouse_SetResultCuteFalse
	// Platino: GetPartyMonContestStat VAR_0x8000, CONTEST_TYPE_CUTE, VAR_RESULT
	return

P_PastoriaCityNortheastHouse_ExamineStatSmart:
	goto_if_set 4167, P_PastoriaCityNortheastHouse_SetResultSmartFalse
	// Platino: GetPartyMonContestStat VAR_0x8000, CONTEST_TYPE_SMART, VAR_RESULT
	return

P_PastoriaCityNortheastHouse_ExamineStatTough:
	goto_if_set 4168, P_PastoriaCityNortheastHouse_SetResultToughFalse
	// Platino: GetPartyMonContestStat VAR_0x8000, CONTEST_TYPE_TOUGH, VAR_RESULT
	return

P_PastoriaCityNortheastHouse_SetResultCoolFalse:
	return

P_PastoriaCityNortheastHouse_SetResultBeautyFalse:
	return

P_PastoriaCityNortheastHouse_SetResultCuteFalse:
	return

P_PastoriaCityNortheastHouse_SetResultSmartFalse:
	return

P_PastoriaCityNortheastHouse_SetResultToughFalse:
	return

P_PastoriaCityNortheastHouse_BattleGirl:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCityNortheastHouse_Pachirisu:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_PACHIRISU, 0
	npc_msg 5
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end


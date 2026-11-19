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


// route_210_grandma_wilma_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route210GrandmaWilmaHouse_Wilma
scrdef_end

P_Route210GrandmaWilmaHouse_Wilma:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4527, P_Route210GrandmaWilmaHouse_AskTeachDracoMeteor
	setflag 4527
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_Route210GrandmaWilmaHouse_DoComeBack
	goto P_Route210GrandmaWilmaHouse_CheckCanAnyMonLearn

P_Route210GrandmaWilmaHouse_AskTeachDracoMeteor:
	npc_msg 1
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_Route210GrandmaWilmaHouse_DoComeBack
	goto P_Route210GrandmaWilmaHouse_CheckCanAnyMonLearn

P_Route210GrandmaWilmaHouse_DoComeBack:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route210GrandmaWilmaHouse_CheckCanAnyMonLearn:
	goto P_Route210GrandmaWilmaHouse_CheckMonDragonType

P_Route210GrandmaWilmaHouse_CheckMonDragonType:
	// Platino: SubVar VAR_MAP_LOCAL_0x00, 1
	// Platino: GetPartyMonType VAR_0x8004, VAR_0x8005, VAR_MAP_LOCAL_0x00
	goto P_Route210GrandmaWilmaHouse_TryCheckNextMon

P_Route210GrandmaWilmaHouse_TryCheckNextMon:
	goto P_Route210GrandmaWilmaHouse_CheckMonDragonType


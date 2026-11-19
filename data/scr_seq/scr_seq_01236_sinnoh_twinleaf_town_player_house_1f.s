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


// twinleaf_town_player_house_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_TwinleafTownPlayerHouse1F_TV
scrdef P_TwinleafTownPlayerHouse1F_TV
scrdef P_TwinleafTownPlayerHouse1F_Refrigerator
scrdef P_TwinleafTownPlayerHouse1F_KitchenSink
scrdef P_TwinleafTownPlayerHouse1F_KitchenSink
scrdef P_TwinleafTownPlayerHouse1F_KitchenCounter
scrdef P_TwinleafTownPlayerHouse1F_KitchenCounter
scrdef P_TwinleafTownPlayerHouse1F_KitchenCounter
scrdef_end

P_TwinleafTownPlayerHouse1F_TV:
	GetTimePeriod VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_TwinleafTownPlayerHouse1F_CuteContestDigest
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_TwinleafTownPlayerHouse1F_SmartContestDigest
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq P_TwinleafTownPlayerHouse1F_SmartContestDigest
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq P_TwinleafTownPlayerHouse1F_ToughContestDigest
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq P_TwinleafTownPlayerHouse1F_ToughContestDigest
	end

P_TwinleafTownPlayerHouse1F_CuteContestDigest:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTownPlayerHouse1F_SmartContestDigest:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTownPlayerHouse1F_ToughContestDigest:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTownPlayerHouse1F_Refrigerator:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTownPlayerHouse1F_KitchenSink:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTownPlayerHouse1F_KitchenCounter:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end


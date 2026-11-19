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


// survival_area_south_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SurvivalAreaSouthHouse_BlackBelt
scrdef_end

P_SurvivalAreaSouthHouse_BlackBelt:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4728, P_SurvivalAreaSouthHouse_ExplainFacade
	npc_msg 0
	goto_if_no_item_space ITEM_TM042, 1, P_SurvivalAreaSouthHouse_BagIsFull
	giveitem_no_check ITEM_TM042, 1
	setflag 4728
	goto P_SurvivalAreaSouthHouse_ExplainFacade

P_SurvivalAreaSouthHouse_ExplainFacade:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SurvivalAreaSouthHouse_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end


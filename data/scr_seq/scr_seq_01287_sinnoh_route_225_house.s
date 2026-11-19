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


// route_225_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route225House_Worker
scrdef_end

P_Route225House_Worker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4755, P_Route225House_WellspringOfLife
	npc_msg 0
	goto_if_no_item_space ITEM_FRESH_WATER, 1, P_Route225House_BagIsFull
	giveitem_no_check ITEM_FRESH_WATER, 1
	setflag 4755
	goto P_Route225House_WellspringOfLife

P_Route225House_WellspringOfLife:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route225House_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end


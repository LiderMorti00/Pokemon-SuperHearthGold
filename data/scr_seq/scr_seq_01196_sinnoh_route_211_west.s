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


// route_211_west: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef P_Route211West_ArrowSignpostMtCoronet
scrdef P_Route211West_ArrowSignpostEternaCity
scrdef scr_hidden_3
scrdef scr_hidden_4
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_TM012
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_3:
	goto_if_set 4129, scr_hidden_3_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_GREAT_BALL, 1, scr_hidden_3_full
	setflag 4129
	giveitem_no_check ITEM_GREAT_BALL, 1
	closemsg
	releaseall
	end
scr_hidden_3_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_3_end:
	end

scr_hidden_4:
	goto_if_set 4130, scr_hidden_4_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MOON_STONE, 1, scr_hidden_4_full
	setflag 4130
	giveitem_no_check ITEM_MOON_STONE, 1
	closemsg
	releaseall
	end
scr_hidden_4_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_4_end:
	end

P_Route211West_ArrowSignpostMtCoronet:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route211West_ArrowSignpostEternaCity:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end


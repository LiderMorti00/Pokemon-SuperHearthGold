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


// route_208: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef P_Route208_BlackBelt
scrdef P_Route208_ArrowSignpostHearthomeCity
scrdef P_Route208_SignboardBerryMastersHouse
scrdef P_Route208_ArrowSignpostMtCoronet
scrdef P_Route208_TrainerTipsSignpost
scrdef scr_hidden_8
scrdef scr_hidden_9
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_ETHER
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_CARBOS
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_8:
	goto_if_set 4488, scr_hidden_8_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STAR_PIECE, 1, scr_hidden_8_full
	setflag 4488
	giveitem_no_check ITEM_STAR_PIECE, 1
	closemsg
	releaseall
	end
scr_hidden_8_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_8_end:
	end

scr_hidden_9:
	goto_if_set 4489, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_TINY_MUSHROOM, 1, scr_hidden_9_full
	setflag 4489
	giveitem_no_check ITEM_TINY_MUSHROOM, 1
	closemsg
	releaseall
	end
scr_hidden_9_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_9_end:
	end

P_Route208_BlackBelt:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4490, P_Route208_GoToRoute209
	npc_msg 0
	setvar VAR_SPECIAL_x8004, ITEM_ODD_KEYSTONE
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_ODD_KEYSTONE, 1, P_Route208_BagIsFull
	setflag 4490
	giveitem_no_check ITEM_ODD_KEYSTONE, 1
	closemsg
	releaseall
	end

P_Route208_GoToRoute209:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route208_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_Route208_ArrowSignpostHearthomeCity:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route208_SignboardBerryMastersHouse:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route208_ArrowSignpostMtCoronet:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route208_TrainerTipsSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end


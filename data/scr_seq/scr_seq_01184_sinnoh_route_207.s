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


// route_207: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef P_Route207_CyclistM
scrdef scr_item_4
scrdef scr_item_5
scrdef P_Route207_ArrowSignpostOreburghCity
scrdef P_Route207_ArrowSignpostMtCoronet
scrdef P_Route207_TrainerTipsSignpost
scrdef scr_hidden_9
scrdef scr_hidden_10
scrdef scr_hidden_11
scrdef scr_hidden_12
scrdef scr_hidden_13
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_POKE_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_REVIVE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_IRON
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_4:
	setvar VAR_SPECIAL_x8008, ITEM_SUPER_POTION
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_5:
	setvar VAR_SPECIAL_x8008, ITEM_TIMER_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_9:
	goto_if_set 4481, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_RARE_CANDY, 1, scr_hidden_9_full
	setflag 4481
	giveitem_no_check ITEM_RARE_CANDY, 1
	closemsg
	releaseall
	end
scr_hidden_9_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_9_end:
	end

scr_hidden_10:
	goto_if_set 4389, scr_hidden_10_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_RED_SHARD, 1, scr_hidden_10_full
	setflag 4389
	giveitem_no_check ITEM_RED_SHARD, 1
	closemsg
	releaseall
	end
scr_hidden_10_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_10_end:
	end

scr_hidden_11:
	goto_if_set 4482, scr_hidden_11_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_POKE_BALL, 1, scr_hidden_11_full
	setflag 4482
	giveitem_no_check ITEM_POKE_BALL, 1
	closemsg
	releaseall
	end
scr_hidden_11_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_11_end:
	end

scr_hidden_12:
	goto_if_set 4483, scr_hidden_12_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_GREAT_BALL, 1, scr_hidden_12_full
	setflag 4483
	giveitem_no_check ITEM_GREAT_BALL, 1
	closemsg
	releaseall
	end
scr_hidden_12_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_12_end:
	end

scr_hidden_13:
	goto_if_set 4484, scr_hidden_13_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_REVIVE, 1, scr_hidden_13_full
	setflag 4484
	giveitem_no_check ITEM_REVIVE, 1
	closemsg
	releaseall
	end
scr_hidden_13_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_13_end:
	end

P_Route207_CyclistM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4132, P_Route207_ChangeGearTakeARun
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route207_ChangeGearTakeARun:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route207_ArrowSignpostOreburghCity:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route207_ArrowSignpostMtCoronet:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route207_TrainerTipsSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end


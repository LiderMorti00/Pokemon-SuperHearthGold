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


// route_215: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef P_Route215_BlackBelt
scrdef scr_item_5
scrdef scr_item_6
scrdef P_Route215_ArrowSignpostWest
scrdef P_Route215_ArrowSignpostVeilstoneCity
scrdef P_Route215_TrainerTipsSignpost
scrdef scr_hidden_10
scrdef scr_hidden_11
scrdef scr_hidden_12
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_HYPER_POTION
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_FULL_HEAL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_MAX_ETHER
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_TM034
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_5:
	setvar VAR_SPECIAL_x8008, ITEM_FIST_PLATE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_HP_UP
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_10:
	goto_if_set 4599, scr_hidden_10_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_REVIVE, 1, scr_hidden_10_full
	setflag 4599
	giveitem_no_check ITEM_REVIVE, 1
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
	goto_if_set 4600, scr_hidden_11_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ULTRA_BALL, 1, scr_hidden_11_full
	setflag 4600
	giveitem_no_check ITEM_ULTRA_BALL, 1
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
	goto_if_set 4601, scr_hidden_12_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_IRON, 1, scr_hidden_12_full
	setflag 4601
	giveitem_no_check ITEM_IRON, 1
	closemsg
	releaseall
	end
scr_hidden_12_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_12_end:
	end

P_Route215_BlackBelt:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4602, P_Route215_PaybackIsHarsh
	npc_msg 0
	setvar VAR_SPECIAL_x8004, ITEM_TM066
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_TM066, 1, P_Route215_BagIsFull
	giveitem_no_check ITEM_TM066, 1
	setflag 4602
	goto P_Route215_PaybackIsHarsh

P_Route215_PaybackIsHarsh:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route215_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_Route215_ArrowSignpostWest:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route215_ArrowSignpostVeilstoneCity:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route215_TrainerTipsSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end


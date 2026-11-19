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


// route_213: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef scr_item_4
scrdef scr_item_5
scrdef scr_item_6
scrdef P_Route213_Fisherman
scrdef P_Route213_Beauty
scrdef P_Route213_Collector
scrdef P_Route213_ArrowSignpostPastoriaCity
scrdef P_Route213_SignboardDrFootstepsHouse
scrdef P_Route213_SignboardHotelGrandLake
scrdef scr_hidden_13
scrdef scr_hidden_14
scrdef scr_hidden_15
scrdef scr_hidden_16
scrdef scr_hidden_17
scrdef scr_hidden_18
scrdef scr_hidden_19
scrdef scr_hidden_20
scrdef scr_hidden_21
scrdef scr_hidden_22
scrdef scr_hidden_23
scrdef scr_hidden_24
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_TM040
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_YELLOW_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_MAX_REVIVE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_WATER_STONE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_4:
	setvar VAR_SPECIAL_x8008, ITEM_TM005
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_5:
	setvar VAR_SPECIAL_x8008, ITEM_PP_UP
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_PROTEIN
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_13:
	goto_if_set 4570, scr_hidden_13_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HP_UP, 1, scr_hidden_13_full
	setflag 4570
	giveitem_no_check ITEM_HP_UP, 1
	closemsg
	releaseall
	end
scr_hidden_13_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_13_end:
	end

scr_hidden_14:
	goto_if_set 4571, scr_hidden_14_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_BIG_PEARL, 1, scr_hidden_14_full
	setflag 4571
	giveitem_no_check ITEM_BIG_PEARL, 1
	closemsg
	releaseall
	end
scr_hidden_14_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_14_end:
	end

scr_hidden_15:
	goto_if_set 4572, scr_hidden_15_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PEARL, 1, scr_hidden_15_full
	setflag 4572
	giveitem_no_check ITEM_PEARL, 1
	closemsg
	releaseall
	end
scr_hidden_15_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_15_end:
	end

scr_hidden_16:
	goto_if_set 4573, scr_hidden_16_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HYPER_POTION, 1, scr_hidden_16_full
	setflag 4573
	giveitem_no_check ITEM_HYPER_POTION, 1
	closemsg
	releaseall
	end
scr_hidden_16_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_16_end:
	end

scr_hidden_17:
	goto_if_set 4574, scr_hidden_17_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PEARL, 1, scr_hidden_17_full
	setflag 4574
	giveitem_no_check ITEM_PEARL, 1
	closemsg
	releaseall
	end
scr_hidden_17_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_17_end:
	end

scr_hidden_18:
	goto_if_set 4575, scr_hidden_18_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PEARL, 1, scr_hidden_18_full
	setflag 4575
	giveitem_no_check ITEM_PEARL, 1
	closemsg
	releaseall
	end
scr_hidden_18_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_18_end:
	end

scr_hidden_19:
	goto_if_set 4454, scr_hidden_19_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_REVIVE, 1, scr_hidden_19_full
	setflag 4454
	giveitem_no_check ITEM_MAX_REVIVE, 1
	closemsg
	releaseall
	end
scr_hidden_19_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_19_end:
	end

scr_hidden_20:
	goto_if_set 4576, scr_hidden_20_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HEART_SCALE, 1, scr_hidden_20_full
	setflag 4576
	giveitem_no_check ITEM_HEART_SCALE, 1
	closemsg
	releaseall
	end
scr_hidden_20_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_20_end:
	end

scr_hidden_21:
	goto_if_set 4577, scr_hidden_21_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_BIG_PEARL, 1, scr_hidden_21_full
	setflag 4577
	giveitem_no_check ITEM_BIG_PEARL, 1
	closemsg
	releaseall
	end
scr_hidden_21_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_21_end:
	end

scr_hidden_22:
	goto_if_set 4578, scr_hidden_22_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HEART_SCALE, 1, scr_hidden_22_full
	setflag 4578
	giveitem_no_check ITEM_HEART_SCALE, 1
	closemsg
	releaseall
	end
scr_hidden_22_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_22_end:
	end

scr_hidden_23:
	goto_if_set 4579, scr_hidden_23_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_SUITE_KEY, 1, scr_hidden_23_full
	setflag 4579
	giveitem_no_check ITEM_SUITE_KEY, 1
	closemsg
	releaseall
	end
scr_hidden_23_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_23_end:
	end

scr_hidden_24:
	goto_if_set 4580, scr_hidden_24_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PEARL, 1, scr_hidden_24_full
	setflag 4580
	giveitem_no_check ITEM_PEARL, 1
	closemsg
	releaseall
	end
scr_hidden_24_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_24_end:
	end

P_Route213_Fisherman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route213_Beauty:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route213_Collector:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route213_ArrowSignpostPastoriaCity:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route213_SignboardDrFootstepsHouse:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route213_SignboardHotelGrandLake:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end


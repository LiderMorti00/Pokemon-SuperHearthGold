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


// route_222: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route222_Fisherman
scrdef scr_item_1
scrdef scr_item_2
scrdef P_Route222_RichBoy
scrdef scr_item_4
scrdef scr_item_5
scrdef P_Route222_ArrowSignpostSunyshoreCity
scrdef P_Route222_ArrowSignpostHotelGrandLake
scrdef P_Route222_SignboardPikachuFanClub
scrdef P_Route222_SignboardPokemonSizeContest
scrdef scr_hidden_10
scrdef scr_hidden_11
scrdef scr_hidden_12
scrdef scr_hidden_13
scrdef scr_hidden_14
scrdef scr_hidden_15
scrdef scr_hidden_16
scrdef scr_hidden_17
scrdef_end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_FULL_RESTORE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_CARBOS
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_4:
	setvar VAR_SPECIAL_x8008, ITEM_QUICK_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_5:
	setvar VAR_SPECIAL_x8008, ITEM_PP_UP
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_10:
	goto_if_set 4648, scr_hidden_10_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_FULL_RESTORE, 1, scr_hidden_10_full
	setflag 4648
	giveitem_no_check ITEM_FULL_RESTORE, 1
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
	goto_if_set 4453, scr_hidden_11_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PP_UP, 1, scr_hidden_11_full
	setflag 4453
	giveitem_no_check ITEM_PP_UP, 1
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
	goto_if_set 4649, scr_hidden_12_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_TINY_MUSHROOM, 1, scr_hidden_12_full
	setflag 4649
	giveitem_no_check ITEM_TINY_MUSHROOM, 1
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
	goto_if_set 4650, scr_hidden_13_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ULTRA_BALL, 1, scr_hidden_13_full
	setflag 4650
	giveitem_no_check ITEM_ULTRA_BALL, 1
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
	goto_if_set 4651, scr_hidden_14_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_BIG_MUSHROOM, 1, scr_hidden_14_full
	setflag 4651
	giveitem_no_check ITEM_BIG_MUSHROOM, 1
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
	goto_if_set 4652, scr_hidden_15_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PEARL, 1, scr_hidden_15_full
	setflag 4652
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
	goto_if_set 4653, scr_hidden_16_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HEART_SCALE, 1, scr_hidden_16_full
	setflag 4653
	giveitem_no_check ITEM_HEART_SCALE, 1
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
	goto_if_set 4654, scr_hidden_17_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HEART_SCALE, 1, scr_hidden_17_full
	setflag 4654
	giveitem_no_check ITEM_HEART_SCALE, 1
	closemsg
	releaseall
	end
scr_hidden_17_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_17_end:
	end

P_Route222_Fisherman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route222_RichBoy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4655, P_Route222_ExplainFling
	npc_msg 1
	goto_if_no_item_space ITEM_TM056, 1, P_Route222_BagIsFull
	giveitem_no_check ITEM_TM056, 1
	setflag 4655
	goto P_Route222_ExplainFling

P_Route222_ExplainFling:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route222_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_Route222_ArrowSignpostSunyshoreCity:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route222_ArrowSignpostHotelGrandLake:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route222_SignboardPikachuFanClub:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route222_SignboardPokemonSizeContest:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end


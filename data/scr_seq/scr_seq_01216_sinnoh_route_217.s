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


// route_217: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef P_Route217_IceRock
scrdef P_Route217_SnowpointNPCF
scrdef scr_item_5
scrdef scr_item_6
scrdef scr_item_7
scrdef P_Route217_ArrowSignpostLakeAcuity
scrdef scr_hidden_9
scrdef scr_hidden_10
scrdef scr_hidden_11
scrdef scr_hidden_12
scrdef scr_hidden_13
scrdef scr_hidden_14
scrdef scr_hidden_15
scrdef scr_hidden_16
scrdef scr_hidden_17
scrdef scr_hidden_18
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_HM08
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_IRON
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_TM007
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_5:
	setvar VAR_SPECIAL_x8008, ITEM_BLUE_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_7:
	setvar VAR_SPECIAL_x8008, ITEM_RARE_CANDY
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_9:
	goto_if_set 4616, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_IRON, 1, scr_hidden_9_full
	setflag 4616
	giveitem_no_check ITEM_IRON, 1
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
	goto_if_set 4617, scr_hidden_10_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_REVIVE, 1, scr_hidden_10_full
	setflag 4617
	giveitem_no_check ITEM_MAX_REVIVE, 1
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
	goto_if_set 4618, scr_hidden_11_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ULTRA_BALL, 1, scr_hidden_11_full
	setflag 4618
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
	goto_if_set 4619, scr_hidden_12_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_REVIVAL_HERB, 1, scr_hidden_12_full
	setflag 4619
	giveitem_no_check ITEM_REVIVAL_HERB, 1
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
	goto_if_set 4620, scr_hidden_13_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_REPEL, 1, scr_hidden_13_full
	setflag 4620
	giveitem_no_check ITEM_MAX_REPEL, 1
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
	goto_if_set 4621, scr_hidden_14_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ULTRA_BALL, 1, scr_hidden_14_full
	setflag 4621
	giveitem_no_check ITEM_ULTRA_BALL, 1
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
	goto_if_set 4622, scr_hidden_15_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PROTEIN, 1, scr_hidden_15_full
	setflag 4622
	giveitem_no_check ITEM_PROTEIN, 1
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
	goto_if_set 4623, scr_hidden_16_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_POTION, 1, scr_hidden_16_full
	setflag 4623
	giveitem_no_check ITEM_MAX_POTION, 1
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
	goto_if_set 4624, scr_hidden_17_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_FULL_HEAL, 1, scr_hidden_17_full
	setflag 4624
	giveitem_no_check ITEM_FULL_HEAL, 1
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
	goto_if_set 4625, scr_hidden_18_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_NUGGET, 1, scr_hidden_18_full
	setflag 4625
	giveitem_no_check ITEM_NUGGET, 1
	closemsg
	releaseall
	end
scr_hidden_18_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_18_end:
	end

P_Route217_IceRock:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route217_SnowpointNPCF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route217_ArrowSignpostLakeAcuity:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end


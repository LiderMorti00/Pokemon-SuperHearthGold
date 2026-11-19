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


// route_212_south: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef scr_item_4
scrdef scr_item_5
scrdef scr_item_6
scrdef P_Route212South_SchoolKidM
scrdef P_Route212South_Lady
scrdef P_Route212South_Collector
scrdef scr_item_10
scrdef scr_item_11
scrdef P_Route212South_ArrowSignpostPastoriaCity
scrdef P_Route212South_SignboardShardsWanted
scrdef P_Route212South_TrainerTipsSignpost
scrdef scr_hidden_15
scrdef scr_hidden_16
scrdef scr_hidden_17
scrdef scr_hidden_18
scrdef scr_hidden_19
scrdef scr_hidden_20
scrdef scr_hidden_21
scrdef scr_hidden_22
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_FULL_HEAL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_TM084
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_TM062
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_ZINC
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_4:
	setvar VAR_SPECIAL_x8008, ITEM_HYPER_POTION
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_5:
	setvar VAR_SPECIAL_x8008, ITEM_TM006
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_REVIVE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_10:
	setvar VAR_SPECIAL_x8008, ITEM_ELIXIR
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_11:
	setvar VAR_SPECIAL_x8008, ITEM_BLUE_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_15:
	goto_if_set 4555, scr_hidden_15_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_ETHER, 1, scr_hidden_15_full
	setflag 4555
	giveitem_no_check ITEM_MAX_ETHER, 1
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
	goto_if_set 4556, scr_hidden_16_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_DAWN_STONE, 1, scr_hidden_16_full
	setflag 4556
	giveitem_no_check ITEM_DAWN_STONE, 1
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
	goto_if_set 4557, scr_hidden_17_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_FULL_HEAL, 1, scr_hidden_17_full
	setflag 4557
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
	goto_if_set 4558, scr_hidden_18_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_RARE_CANDY, 1, scr_hidden_18_full
	setflag 4558
	giveitem_no_check ITEM_RARE_CANDY, 1
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
	goto_if_set 4559, scr_hidden_19_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HYPER_POTION, 1, scr_hidden_19_full
	setflag 4559
	giveitem_no_check ITEM_HYPER_POTION, 1
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
	goto_if_set 4560, scr_hidden_20_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_REPEL, 1, scr_hidden_20_full
	setflag 4560
	giveitem_no_check ITEM_MAX_REPEL, 1
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
	goto_if_set 4561, scr_hidden_21_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ULTRA_BALL, 1, scr_hidden_21_full
	setflag 4561
	giveitem_no_check ITEM_ULTRA_BALL, 1
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
	goto_if_set 4562, scr_hidden_22_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_BIG_MUSHROOM, 1, scr_hidden_22_full
	setflag 4562
	giveitem_no_check ITEM_BIG_MUSHROOM, 1
	closemsg
	releaseall
	end
scr_hidden_22_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_22_end:
	end

P_Route212South_SchoolKidM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route212South_Lady:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route212South_Collector:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route212South_ArrowSignpostPastoriaCity:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route212South_SignboardShardsWanted:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route212South_TrainerTipsSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end


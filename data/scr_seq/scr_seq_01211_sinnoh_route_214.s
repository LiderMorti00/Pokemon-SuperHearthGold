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


// route_214: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef scr_item_4
scrdef P_Route214_ArrowSignpostVeilstoneCity
scrdef P_Route214_ArrowSignpostLakeValor
scrdef scr_hidden_7
scrdef scr_hidden_8
scrdef scr_hidden_9
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_RARE_CANDY
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_MAX_REPEL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_RED_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_BIG_ROOT
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_4:
	setvar VAR_SPECIAL_x8008, ITEM_MAGMARIZER
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_7:
	goto_if_set 4590, scr_hidden_7_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_CARBOS, 1, scr_hidden_7_full
	setflag 4590
	giveitem_no_check ITEM_CARBOS, 1
	closemsg
	releaseall
	end
scr_hidden_7_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_7_end:
	end

scr_hidden_8:
	goto_if_set 4591, scr_hidden_8_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_BIG_MUSHROOM, 1, scr_hidden_8_full
	setflag 4591
	giveitem_no_check ITEM_BIG_MUSHROOM, 1
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
	goto_if_set 4592, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_RAZOR_FANG, 1, scr_hidden_9_full
	setflag 4592
	giveitem_no_check ITEM_RAZOR_FANG, 1
	closemsg
	releaseall
	end
scr_hidden_9_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_9_end:
	end

P_Route214_ArrowSignpostVeilstoneCity:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route214_ArrowSignpostLakeValor:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end


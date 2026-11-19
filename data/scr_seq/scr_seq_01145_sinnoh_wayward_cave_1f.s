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


// wayward_cave_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef scr_hidden_4
scrdef scr_hidden_5
scrdef scr_hidden_6
scrdef scr_hidden_7
scrdef scr_hidden_8
scrdef scr_hidden_9
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_TM026
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_TM032
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_REVIVE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_ESCAPE_ROPE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_4:
	goto_if_set 4387, scr_hidden_4_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_YELLOW_SHARD, 1, scr_hidden_4_full
	setflag 4387
	giveitem_no_check ITEM_YELLOW_SHARD, 1
	closemsg
	releaseall
	end
scr_hidden_4_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_4_end:
	end

scr_hidden_5:
	goto_if_set 4388, scr_hidden_5_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_GREAT_BALL, 1, scr_hidden_5_full
	setflag 4388
	giveitem_no_check ITEM_GREAT_BALL, 1
	closemsg
	releaseall
	end
scr_hidden_5_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_5_end:
	end

scr_hidden_6:
	goto_if_set 4389, scr_hidden_6_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_RED_SHARD, 1, scr_hidden_6_full
	setflag 4389
	giveitem_no_check ITEM_RED_SHARD, 1
	closemsg
	releaseall
	end
scr_hidden_6_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_6_end:
	end

scr_hidden_7:
	goto_if_set 4390, scr_hidden_7_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_GREEN_SHARD, 1, scr_hidden_7_full
	setflag 4390
	giveitem_no_check ITEM_GREEN_SHARD, 1
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
	goto_if_set 4391, scr_hidden_8_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_SUPER_POTION, 1, scr_hidden_8_full
	setflag 4391
	giveitem_no_check ITEM_SUPER_POTION, 1
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
	goto_if_set 4392, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_BLUE_SHARD, 1, scr_hidden_9_full
	setflag 4392
	giveitem_no_check ITEM_BLUE_SHARD, 1
	closemsg
	releaseall
	end
scr_hidden_9_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_9_end:
	end


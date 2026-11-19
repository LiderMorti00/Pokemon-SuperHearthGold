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


// stark_mountain_room_2: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef scr_item_4
scrdef scr_item_5
scrdef scr_item_6
scrdef scr_item_7
scrdef scr_hidden_8
scrdef scr_hidden_9
scrdef scr_hidden_10
scrdef scr_hidden_11
scrdef scr_hidden_12
scrdef scr_hidden_13
scrdef scr_hidden_14
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_TM050
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_CALCIUM
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_MAX_REVIVE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_RARE_CANDY
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_4:
	setvar VAR_SPECIAL_x8008, ITEM_IRON_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_5:
	setvar VAR_SPECIAL_x8008, ITEM_MAX_ELIXIR
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_NUGGET
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_7:
	setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_8:
	goto_if_set 4373, scr_hidden_8_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STARDUST, 1, scr_hidden_8_full
	setflag 4373
	giveitem_no_check ITEM_STARDUST, 1
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
	goto_if_set 4374, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_IRON, 1, scr_hidden_9_full
	setflag 4374
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
	goto_if_set 4375, scr_hidden_10_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_FLAME_PLATE, 1, scr_hidden_10_full
	setflag 4375
	giveitem_no_check ITEM_FLAME_PLATE, 1
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
	goto_if_set 4376, scr_hidden_11_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_REVIVE, 1, scr_hidden_11_full
	setflag 4376
	giveitem_no_check ITEM_MAX_REVIVE, 1
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
	goto_if_set 4377, scr_hidden_12_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STAR_PIECE, 1, scr_hidden_12_full
	setflag 4377
	giveitem_no_check ITEM_STAR_PIECE, 1
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
	goto_if_set 4378, scr_hidden_13_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ULTRA_BALL, 1, scr_hidden_13_full
	setflag 4378
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
	goto_if_set 4379, scr_hidden_14_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_FIRE_STONE, 1, scr_hidden_14_full
	setflag 4379
	giveitem_no_check ITEM_FIRE_STONE, 1
	closemsg
	releaseall
	end
scr_hidden_14_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_14_end:
	end


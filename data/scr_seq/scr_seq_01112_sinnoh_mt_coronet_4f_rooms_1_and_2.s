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


// mt_coronet_4f_rooms_1_and_2: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_hidden_2
scrdef scr_hidden_3
scrdef scr_hidden_4
scrdef scr_hidden_5
scrdef scr_hidden_6
scrdef scr_hidden_7
scrdef scr_hidden_8
scrdef scr_hidden_9
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_ADAMANT_ORB
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_LUSTROUS_ORB
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_2:
	goto_if_set 4255, scr_hidden_2_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_SUN_STONE, 1, scr_hidden_2_full
	setflag 4255
	giveitem_no_check ITEM_SUN_STONE, 1
	closemsg
	releaseall
	end
scr_hidden_2_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_2_end:
	end

scr_hidden_3:
	goto_if_set 4256, scr_hidden_3_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_FULL_HEAL, 1, scr_hidden_3_full
	setflag 4256
	giveitem_no_check ITEM_FULL_HEAL, 1
	closemsg
	releaseall
	end
scr_hidden_3_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_3_end:
	end

scr_hidden_4:
	goto_if_set 4257, scr_hidden_4_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_REVIVE, 1, scr_hidden_4_full
	setflag 4257
	giveitem_no_check ITEM_MAX_REVIVE, 1
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
	goto_if_set 4258, scr_hidden_5_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HEAL_POWDER, 1, scr_hidden_5_full
	setflag 4258
	giveitem_no_check ITEM_HEAL_POWDER, 1
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
	goto_if_set 4259, scr_hidden_6_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_YELLOW_SHARD, 1, scr_hidden_6_full
	setflag 4259
	giveitem_no_check ITEM_YELLOW_SHARD, 1
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
	goto_if_set 4260, scr_hidden_7_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STARDUST, 1, scr_hidden_7_full
	setflag 4260
	giveitem_no_check ITEM_STARDUST, 1
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
	goto_if_set 4261, scr_hidden_8_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STONE_PLATE, 1, scr_hidden_8_full
	setflag 4261
	giveitem_no_check ITEM_STONE_PLATE, 1
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
	goto_if_set 4262, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ULTRA_BALL, 1, scr_hidden_9_full
	setflag 4262
	giveitem_no_check ITEM_ULTRA_BALL, 1
	closemsg
	releaseall
	end
scr_hidden_9_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_9_end:
	end


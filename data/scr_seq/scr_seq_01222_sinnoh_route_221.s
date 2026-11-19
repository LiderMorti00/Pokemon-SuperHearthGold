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


// route_221: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef P_Route221_SignboardPalPark
scrdef scr_hidden_5
scrdef scr_hidden_6
scrdef scr_hidden_7
scrdef scr_hidden_8
scrdef scr_hidden_9
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_PROTEIN
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_TM081
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_PURE_INCENSE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_5:
	goto_if_set 4637, scr_hidden_5_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HYPER_POTION, 1, scr_hidden_5_full
	setflag 4637
	giveitem_no_check ITEM_HYPER_POTION, 1
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
	goto_if_set 4638, scr_hidden_6_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_BIG_MUSHROOM, 1, scr_hidden_6_full
	setflag 4638
	giveitem_no_check ITEM_BIG_MUSHROOM, 1
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
	goto_if_set 4639, scr_hidden_7_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ULTRA_BALL, 1, scr_hidden_7_full
	setflag 4639
	giveitem_no_check ITEM_ULTRA_BALL, 1
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
	goto_if_set 4640, scr_hidden_8_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_CARBOS, 1, scr_hidden_8_full
	setflag 4640
	giveitem_no_check ITEM_CARBOS, 1
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
	goto_if_set 4641, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_REVIVE, 1, scr_hidden_9_full
	setflag 4641
	giveitem_no_check ITEM_MAX_REVIVE, 1
	closemsg
	releaseall
	end
scr_hidden_9_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_9_end:
	end

P_Route221_SignboardPalPark:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end


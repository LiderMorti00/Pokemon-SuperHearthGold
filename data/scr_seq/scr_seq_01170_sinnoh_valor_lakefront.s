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


// valor_lakefront: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef P_ValorLakefront_SignboardSevenStarsRestaurant
scrdef scr_hidden_4
scrdef scr_hidden_5
scrdef scr_hidden_6
scrdef scr_hidden_7
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_TM085
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_IRON
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_4:
	goto_if_set 4452, scr_hidden_4_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_SUN_STONE, 1, scr_hidden_4_full
	setflag 4452
	giveitem_no_check ITEM_SUN_STONE, 1
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
	goto_if_set 4453, scr_hidden_5_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PP_UP, 1, scr_hidden_5_full
	setflag 4453
	giveitem_no_check ITEM_PP_UP, 1
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
	goto_if_set 4454, scr_hidden_6_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_REVIVE, 1, scr_hidden_6_full
	setflag 4454
	giveitem_no_check ITEM_MAX_REVIVE, 1
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
	goto_if_set 4455, scr_hidden_7_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_BIG_MUSHROOM, 1, scr_hidden_7_full
	setflag 4455
	giveitem_no_check ITEM_BIG_MUSHROOM, 1
	closemsg
	releaseall
	end
scr_hidden_7_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_7_end:
	end

P_ValorLakefront_SignboardSevenStarsRestaurant:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end


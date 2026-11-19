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


// floaroma_meadow: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_FloaromaMeadow_PokefanM
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef scr_item_4
scrdef scr_hidden_5
scrdef scr_hidden_6
scrdef scr_hidden_7
scrdef scr_hidden_8
scrdef scr_hidden_9
scrdef scr_hidden_10
scrdef scr_hidden_11
scrdef scr_hidden_12
scrdef scr_hidden_13
scrdef scr_hidden_14
scrdef scr_hidden_15
scrdef_end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_MIRACLE_SEED
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_LEAF_STONE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_4:
	setvar VAR_SPECIAL_x8008, ITEM_RARE_CANDY
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_5:
	goto_if_set 4342, scr_hidden_5_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HONEY, 1, scr_hidden_5_full
	setflag 4342
	giveitem_no_check ITEM_HONEY, 1
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
	goto_if_set 4343, scr_hidden_6_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HONEY, 1, scr_hidden_6_full
	setflag 4343
	giveitem_no_check ITEM_HONEY, 1
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
	goto_if_set 4344, scr_hidden_7_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HONEY, 1, scr_hidden_7_full
	setflag 4344
	giveitem_no_check ITEM_HONEY, 1
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
	goto_if_set 4345, scr_hidden_8_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_REVIVE, 1, scr_hidden_8_full
	setflag 4345
	giveitem_no_check ITEM_MAX_REVIVE, 1
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
	goto_if_set 4346, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PP_UP, 1, scr_hidden_9_full
	setflag 4346
	giveitem_no_check ITEM_PP_UP, 1
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
	goto_if_set 4347, scr_hidden_10_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HONEY, 1, scr_hidden_10_full
	setflag 4347
	giveitem_no_check ITEM_HONEY, 1
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
	goto_if_set 4348, scr_hidden_11_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HONEY, 1, scr_hidden_11_full
	setflag 4348
	giveitem_no_check ITEM_HONEY, 1
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
	goto_if_set 4349, scr_hidden_12_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HYPER_POTION, 1, scr_hidden_12_full
	setflag 4349
	giveitem_no_check ITEM_HYPER_POTION, 1
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
	goto_if_set 4350, scr_hidden_13_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_REVIVE, 1, scr_hidden_13_full
	setflag 4350
	giveitem_no_check ITEM_REVIVE, 1
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
	goto_if_set 4351, scr_hidden_14_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_FULL_HEAL, 1, scr_hidden_14_full
	setflag 4351
	giveitem_no_check ITEM_FULL_HEAL, 1
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
	goto_if_set 4352, scr_hidden_15_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HONEY, 1, scr_hidden_15_full
	setflag 4352
	giveitem_no_check ITEM_HONEY, 1
	closemsg
	releaseall
	end
scr_hidden_15_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_15_end:
	end

P_FloaromaMeadow_PokefanM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	// Platino: ShowMoney 20, 2
	goto P_FloaromaMeadow_ShowMenuHoney

P_FloaromaMeadow_ShowMenuHoney:
	// Platino: InitLocalTextMenu 30, 11, 0, VAR_RESULT
	// Platino: SetMenuXOriginToRight 
	// Platino: AddMenuEntryImm FloaromaMeadow_Text_Times1, 0
	// Platino: AddMenuEntryImm FloaromaMeadow_Text_Times10, 1
	// Platino: AddMenuEntryImm FloaromaMeadow_Text_NoThanks, 2
	// Platino: ShowMenu 
	goto P_FloaromaMeadow_OopsyWellComeAgain

P_FloaromaMeadow_OopsyWellComeAgain:
	npc_msg 1
	wait_button_or_walk_away
	// Platino: HideMoney 
	closemsg
	releaseall
	end


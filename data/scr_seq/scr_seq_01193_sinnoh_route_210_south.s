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


// route_210_south: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef P_Route210South_AceTrainerF
scrdef scr_item_4
scrdef P_Route210South_ArrowSignpostSolaceonTown
scrdef P_Route210South_SignboardCafeCabin
scrdef scr_hidden_7
scrdef scr_hidden_8
scrdef scr_hidden_9
scrdef scr_hidden_10
scrdef scr_hidden_11
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_MAX_REPEL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_SUPER_REPEL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_NEST_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_4:
	setvar VAR_SPECIAL_x8008, ITEM_HYPER_POTION
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_7:
	goto_if_set 4514, scr_hidden_7_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_FULL_HEAL, 1, scr_hidden_7_full
	setflag 4514
	giveitem_no_check ITEM_FULL_HEAL, 1
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
	goto_if_set 4515, scr_hidden_8_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ULTRA_BALL, 1, scr_hidden_8_full
	setflag 4515
	giveitem_no_check ITEM_ULTRA_BALL, 1
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
	goto_if_set 4516, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_RARE_CANDY, 1, scr_hidden_9_full
	setflag 4516
	giveitem_no_check ITEM_RARE_CANDY, 1
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
	goto_if_set 4517, scr_hidden_10_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HYPER_POTION, 1, scr_hidden_10_full
	setflag 4517
	giveitem_no_check ITEM_HYPER_POTION, 1
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
	goto_if_set 4518, scr_hidden_11_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ULTRA_BALL, 1, scr_hidden_11_full
	setflag 4518
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

P_Route210South_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4519, P_Route210South_BirdPokemonWouldCrash
	npc_msg 0
	setvar VAR_SPECIAL_x8004, ITEM_TM051
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_TM051, 1, P_Route210South_BagIsFull
	giveitem_no_check ITEM_TM051, 1
	setflag 4519
	goto P_Route210South_BirdPokemonWouldCrash

P_Route210South_BirdPokemonWouldCrash:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route210South_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_Route210South_ArrowSignpostSolaceonTown:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route210South_SignboardCafeCabin:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


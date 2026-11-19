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


// fuego_ironworks_building: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef P_FuegoIronworksBuilding_MrFuego
scrdef scr_item_5
scrdef scr_item_6
scrdef scr_item_7
scrdef scr_item_8
scrdef scr_hidden_9
scrdef scr_hidden_10
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_TM035
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_CALCIUM
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_ROCK_INCENSE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_FIRE_STONE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_5:
	setvar VAR_SPECIAL_x8008, ITEM_BLUE_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_RED_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_7:
	setvar VAR_SPECIAL_x8008, ITEM_GREEN_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_8:
	setvar VAR_SPECIAL_x8008, ITEM_YELLOW_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_9:
	goto_if_set 4226, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STAR_PIECE, 1, scr_hidden_9_full
	setflag 4226
	giveitem_no_check ITEM_STAR_PIECE, 1
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
	goto_if_set 4227, scr_hidden_10_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PROTEIN, 1, scr_hidden_10_full
	setflag 4227
	giveitem_no_check ITEM_PROTEIN, 1
	closemsg
	releaseall
	end
scr_hidden_10_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_10_end:
	end

P_FuegoIronworksBuilding_MrFuego:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4228, P_FuegoIronworksBuilding_CheckStarPieceForTradeAgain
	goto_if_set 4229, P_FuegoIronworksBuilding_CheckStarPieceForTrade
	npc_msg 0
	goto_if_no_item_space ITEM_STAR_PIECE, 1, P_FuegoIronworksBuilding_BagIsFull
	setflag 4229
	giveitem_no_check ITEM_STAR_PIECE, 1
	goto P_FuegoIronworksBuilding_CheckStarPieceForTrade

P_FuegoIronworksBuilding_CheckStarPieceForTradeAgain:
	goto P_FuegoIronworksBuilding_AnyStarPieces

P_FuegoIronworksBuilding_CheckStarPieceForTrade:
	npc_msg 1
	goto P_FuegoIronworksBuilding_MrFuegoEnd

P_FuegoIronworksBuilding_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_FuegoIronworksBuilding_AnyStarPieces:
	npc_msg 2
	goto P_FuegoIronworksBuilding_MrFuegoEnd

P_FuegoIronworksBuilding_MrFuegoEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end


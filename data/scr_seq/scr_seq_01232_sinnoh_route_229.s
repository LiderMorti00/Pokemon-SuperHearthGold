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


// route_229: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route229_PokefanM
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef P_Route229_ArrowSignpostResortArea
scrdef scr_hidden_5
scrdef_end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_REAPER_CLOTH
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_FULL_RESTORE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_PROTEIN
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_5:
	goto_if_set 4703, scr_hidden_5_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_THUNDER_STONE, 1, scr_hidden_5_full
	setflag 4703
	giveitem_no_check ITEM_THUNDER_STONE, 1
	closemsg
	releaseall
	end
scr_hidden_5_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_5_end:
	end

P_Route229_PokefanM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4704, P_Route229_ThoseAreMyNuggets
	npc_msg 0
	setvar VAR_SPECIAL_x8004, ITEM_NUGGET
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_NUGGET, 1, P_Route229_BagIsFull
	giveitem_no_check ITEM_NUGGET, 1
	setflag 4704
	setvar VAR_SPECIAL_x8004, ITEM_NUGGET
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_NUGGET, 1, P_Route229_ThoseAreMyNuggets
	npc_msg 1
	giveitem_no_check ITEM_NUGGET, 1
	goto P_Route229_ThoseAreMyNuggets

P_Route229_ThoseAreMyNuggets:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route229_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_Route229_ArrowSignpostResortArea:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


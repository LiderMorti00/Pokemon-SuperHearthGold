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


// valley_windworks_outside: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef P_ValleyWindworksOutside_SignboardValleyWindworks
scrdef scr_hidden_4
scrdef P_ValleyWindworksOutside_Door
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_TM024
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_POTION
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_ELECTIRIZER
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_4:
	goto_if_set 4204, scr_hidden_4_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_ELIXIR, 1, scr_hidden_4_full
	setflag 4204
	giveitem_no_check ITEM_MAX_ELIXIR, 1
	closemsg
	releaseall
	end
scr_hidden_4_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_4_end:
	end

P_ValleyWindworksOutside_SignboardValleyWindworks:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ValleyWindworksOutside_Door:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 4205, P_ValleyWindworksOutside_AskOpenDoor
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ValleyWindworksOutside_AskOpenDoor:
	buffer_item_name 0, ITEM_WORKS_KEY
	npc_msg 2
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_ValleyWindworksOutside_AskOpenDoorEnd
	setflag 4206
	call P_ValleyWindworksOutside_RemoveBgEventDoor
	// Platino: SetWarpEventPos WARP_VALLEY_WINDWORKS_BUILDING, 243, 654
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ValleyWindworksOutside_AskOpenDoorEnd:
	closemsg
	releaseall
	end

P_ValleyWindworksOutside_RemoveBgEventDoor:
	// Platino: SetBgEventPos 1, 243, 650
	return


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


// route_204_north: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route204North_Youngster
scrdef scr_item_1
scrdef P_Route204North_AceTrainerF
scrdef scr_item_3
scrdef P_Route204North_ArrowSignpostFloaromaTown
scrdef_end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_TM009
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_AWAKENING
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

P_Route204North_Youngster:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route204North_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4466, P_Route204North_CaptivateOppositeGender
	npc_msg 1
	setvar VAR_SPECIAL_x8004, ITEM_TM078
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_TM078, 1, P_Route204North_BagIsFull
	giveitem_no_check ITEM_TM078, 1
	setflag 4466
	goto P_Route204North_CaptivateOppositeGender

P_Route204North_CaptivateOppositeGender:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route204North_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_Route204North_ArrowSignpostFloaromaTown:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


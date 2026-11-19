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


// route_211_east: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef P_Route211East_AceTrainerM
scrdef scr_item_2
scrdef P_Route211East_TrainerTipsSignpost
scrdef P_Route211East_ArrowSignpostMtCoronet
scrdef P_Route211East_ArrowSignpostCelesticTown
scrdef scr_hidden_6
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_TM029
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_CARBOS
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_6:
	goto_if_set 4531, scr_hidden_6_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_CALCIUM, 1, scr_hidden_6_full
	setflag 4531
	giveitem_no_check ITEM_CALCIUM, 1
	closemsg
	releaseall
	end
scr_hidden_6_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_6_end:
	end

P_Route211East_AceTrainerM:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 4532, P_Route211East_ExplainPsychUp
	npc_msg 0
	closemsg
	faceplayer
	// Platino: ApplyMovement VAR_LAST_TALKED, Route211East_Movement_ExclamationMark
	// Platino: WaitMovement 
	npc_msg 1
	goto_if_no_item_space ITEM_TM077, 1, P_Route211East_BagIsFull
	giveitem_no_check ITEM_TM077, 1
	setflag 4532
	goto P_Route211East_ExplainPsychUp

P_Route211East_ExplainPsychUp:
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route211East_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_Route211East_TrainerTipsSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route211East_ArrowSignpostMtCoronet:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route211East_ArrowSignpostCelesticTown:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end


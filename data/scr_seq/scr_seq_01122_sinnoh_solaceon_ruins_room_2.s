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


// solaceon_ruins_room_2: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SolaceonRuinsRoom2_Hiker
scrdef_end

P_SolaceonRuinsRoom2_Hiker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4294, P_SolaceonRuinsRoom2_IveFinallyGotDefog
	goto_if_set 4295, P_SolaceonRuinsRoom2_AskLoanHMDefog
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonRuinsRoom2_IveFinallyGotDefog:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonRuinsRoom2_AskLoanHMDefog:
	// Platino: ApplyMovement LOCALID_HIKER, SolaceonRuinsRoom2_Movement_HikerExclamationMark
	// Platino: WaitMovement 
	npc_msg 2
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_SolaceonRuinsRoom2_LoanHMDefog
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_SolaceonRuinsRoom2_DontLoanHMDefog
	end

P_SolaceonRuinsRoom2_LoanHMDefog:
	npc_msg 3
	goto_if_no_item_space ITEM_GREEN_SHARD, 1, P_SolaceonRuinsRoom2_BagIsFull
	setflag 4294
	giveitem_no_check ITEM_GREEN_SHARD, 1
	closemsg
	releaseall
	end

P_SolaceonRuinsRoom2_DontLoanHMDefog:
	setflag 4295
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonRuinsRoom2_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end


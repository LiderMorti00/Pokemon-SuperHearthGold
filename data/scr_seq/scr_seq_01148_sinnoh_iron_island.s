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


// iron_island: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_IronIsland_Sailor
scrdef scr_hidden_1
scrdef_end

scr_hidden_1:
	goto_if_set 4399, scr_hidden_1_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STAR_PIECE, 1, scr_hidden_1_full
	setflag 4399
	giveitem_no_check ITEM_STAR_PIECE, 1
	closemsg
	releaseall
	end
scr_hidden_1_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_1_end:
	end

P_IronIsland_Sailor:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	faceplayer
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_IronIsland_TakeShipToCanalave
	goto P_IronIsland_TellWheneverSetSail

P_IronIsland_TakeShipToCanalave:
	npc_msg 1
	closemsg
	call P_IronIsland_SailorEnterShip
	// Platino: TakeShipToCanalave 
	releaseall
	end

P_IronIsland_TellWheneverSetSail:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_IronIsland_SailorEnterShip:
	// Platino: ApplyMovement LOCALID_SAILOR, IronIsland_Movement_SailorFaceWest
	// Platino: WaitMovement 
	// Platino: ApplyMovement LOCALID_SAILOR, IronIsland_Movement_SetInvisible
	// Platino: WaitMovement 
	return


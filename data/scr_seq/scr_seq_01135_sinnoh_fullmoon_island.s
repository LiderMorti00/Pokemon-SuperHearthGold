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


// fullmoon_island: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_FullmoonIsland_Sailor
scrdef_end

P_FullmoonIsland_Sailor:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_FullmoonIsland_TakeShipToCanalave
	goto P_FullmoonIsland_AllRightThen

P_FullmoonIsland_TakeShipToCanalave:
	call P_FullmoonIsland_SailorEnterShip
	// Platino: TakeShipToCanalave 
	releaseall
	end

P_FullmoonIsland_AllRightThen:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FullmoonIsland_SailorEnterShip:
	// Platino: ApplyMovement LOCALID_SAILOR, FullmoonIsland_Movement_SailorWalkToShip
	// Platino: WaitMovement 
	// Platino: ApplyMovement LOCALID_SAILOR, FullmoonIsland_Movement_SetInvisible
	// Platino: WaitMovement 
	return


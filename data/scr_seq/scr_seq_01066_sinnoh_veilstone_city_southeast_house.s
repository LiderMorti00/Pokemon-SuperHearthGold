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


// veilstone_city_southeast_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VeilstoneCitySoutheastHouse_Clown
scrdef P_VeilstoneCitySoutheastHouse_BlackBelt
scrdef_end

P_VeilstoneCitySoutheastHouse_Clown:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4181, P_VeilstoneCitySoutheastHouse_IAmATearfulClown
	npc_msg 0
	npc_msg 1
	closemsg
	goto P_VeilstoneCitySoutheastHouse_ClownSpinNorth

P_VeilstoneCitySoutheastHouse_IAmATearfulClown:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCitySoutheastHouse_ClownSpinNorth:
	// Platino: ApplyMovement LOCALID_CLOWN, VeilstoneCitySoutheastHouse_Movement_ClownSpinNorth
	// Platino: WaitMovement 
	goto P_VeilstoneCitySoutheastHouse_ChooseHand

P_VeilstoneCitySoutheastHouse_ChooseHand:
	npc_msg 3
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_x8000
	AddMultiOption 4, 0
	AddMultiOption 5, 1
	ShowMulti
	goto P_VeilstoneCitySoutheastHouse_PoorShow

P_VeilstoneCitySoutheastHouse_PoorShow:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCitySoutheastHouse_BlackBelt:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end


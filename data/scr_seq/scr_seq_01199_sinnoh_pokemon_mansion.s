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


// pokemon_mansion: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_PokemonMansion_MaidOffice
scrdef P_PokemonMansion_MaidTrophyGarden
scrdef P_PokemonMansion_MaidWest
scrdef P_PokemonMansion_MaidFarEast
scrdef P_PokemonMansion_MaidEast
scrdef_end

P_PokemonMansion_MaidOffice:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	// Platino: ApplyMovement LOCALID_MAID_OFFICE, PokemonMansion_Movement_MaidOfficeFaceSouth
	// Platino: WaitMovement 
	releaseall
	end

P_PokemonMansion_MaidTrophyGarden:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	// Platino: ApplyMovement LOCALID_MAID_TROPHY_GARDEN, PokemonMansion_Movement_MaidTrophyGardenFaceSouth
	// Platino: WaitMovement 
	releaseall
	end

P_PokemonMansion_MaidWest:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_PokemonMansion_VisitAgainTomorrow

P_PokemonMansion_VisitAgainTomorrow:
	npc_msg 2
	goto P_PokemonMansion_MaidChallengeEnd

P_PokemonMansion_MaidChallengeEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PokemonMansion_MaidFarEast:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	// Platino: ApplyMovement LOCALID_MAID_FAR_EAST, PokemonMansion_Movement_MaidFarEastFaceWest
	// Platino: WaitMovement 
	releaseall
	end

P_PokemonMansion_MaidEast:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end


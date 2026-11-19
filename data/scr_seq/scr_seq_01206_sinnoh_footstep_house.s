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


// footstep_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_FootstepHouse_DrFootstep
scrdef_end

P_FootstepHouse_DrFootstep:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: BufferPartyMonSpecies 0, LOCAL_VAR_PARTY_SLOT
	buffer_players_name 1
	// Platino: BufferPartyMonNickname 2, LOCAL_VAR_PARTY_SLOT
	// Platino: GetPartyMonFootprintType LOCAL_VAR_HAS_PRINT, LOCAL_VAR_FOOTPRINT_TYPE, LOCAL_VAR_PARTY_SLOT
	goto_if_set 4581, P_FootstepHouse_CheckFeelingsAgain
	setflag 4581
	npc_msg 0
	closemsg
	goto P_FootstepHouse_FadeScreen

P_FootstepHouse_CheckFeelingsAgain:
	npc_msg 1
	closemsg
	goto P_FootstepHouse_FadeScreen

P_FootstepHouse_FadeScreen:
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	wait 40, VAR_SPECIAL_RESULT
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	call P_FootstepHouse_DrFootstepStepBack
	wait 20, VAR_SPECIAL_RESULT
	// Platino: IncrementGameRecord RECORD_CHECKED_FOOTPRINTS
	goto P_FootstepHouse_CheckType

P_FootstepHouse_DrFootstepStepBack:
	// Platino: GetPlayerMapPos VAR_0x8005, VAR_0x8006
	goto P_FootstepHouse_DrFootstepStepBackZ7

P_FootstepHouse_CheckType:
	goto P_FootstepHouse_VoicelessType

P_FootstepHouse_DrFootstepStepBackZ7:
	// Platino: ApplyMovement LOCALID_DR_FOOTSTEP, FootstepHouse_Movement_DrFootstepStepBackNorth
	// Platino: WaitMovement 
	return

P_FootstepHouse_VoicelessType:
	npc_msg 2
	// Platino: GetPartyMonFriendship VAR_RESULT, LOCAL_VAR_PARTY_SLOT
	// Platino: GetPartyMonRibbon VAR_RESULT, LOCAL_VAR_PARTY_SLOT, RIBBON_FOOTPRINT
	goto P_FootstepHouse_PokemonSilentType

P_FootstepHouse_PokemonSilentType:
	closemsg
	wait 20, VAR_SPECIAL_RESULT
	call P_FootstepHouse_DrFootstepWalkToPlayer
	wait 10, VAR_SPECIAL_RESULT
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FootstepHouse_DrFootstepWalkToPlayer:
	// Platino: GetPlayerMapPos VAR_0x8005, VAR_0x8006
	goto P_FootstepHouse_DrFootstepWalkToPlayerZ7

P_FootstepHouse_DrFootstepWalkToPlayerZ7:
	// Platino: ApplyMovement LOCALID_DR_FOOTSTEP, FootstepHouse_Movement_DrFootstepWalkToPlayerZ7
	// Platino: WaitMovement 
	return


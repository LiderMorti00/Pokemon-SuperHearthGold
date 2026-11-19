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


// galactic_hq_control_room: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_GalacticHQControlRoom_MachineUxie
scrdef P_GalacticHQControlRoom_MachineMesprit
scrdef P_GalacticHQControlRoom_MachineAzelf
scrdef P_GalacticHQControlRoom_Button
scrdef_end

P_GalacticHQControlRoom_MachineUxie:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 4753, P_GalacticHQControlRoom_UxieWasSealedInside
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQControlRoom_UxieWasSealedInside:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQControlRoom_MachineMesprit:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 4753, P_GalacticHQControlRoom_MespritWasSealedInside
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQControlRoom_MespritWasSealedInside:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQControlRoom_MachineAzelf:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 4753, P_GalacticHQControlRoom_AzelfWasSealedInside
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQControlRoom_AzelfWasSealedInside:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQControlRoom_Button:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 4753, P_GalacticHQControlRoom_AlreadyPressedButton
	npc_msg 6
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_GalacticHQControlRoom_FreePokemon
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_GalacticHQControlRoom_DontPressButton
	end

P_GalacticHQControlRoom_AlreadyPressedButton:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQControlRoom_FreePokemon:
	buffer_players_name 0
	npc_msg 8
	closemsg
	setflag 4753
	// Platino: DeactivateLakeGuardianContainmentUnits 
	wait 30, VAR_SPECIAL_RESULT
	// Platino: ApplyMovement LOCALID_MESPRIT, GalacticHQControlRoom_Movement_MespritMoveSouth
	// Platino: ApplyMovement LOCALID_AZELF, GalacticHQControlRoom_Movement_AzelfMoveSouth
	// Platino: ApplyMovement LOCALID_UXIE, GalacticHQControlRoom_Movement_UxieMoveSouth
	// Platino: WaitMovement 
	// Platino: SetObjectEventPos LOCALID_MESPRIT, 2, 6
	// Platino: SetObjectEventPos LOCALID_AZELF, 14, 6
	// Platino: SetObjectEventPos LOCALID_UXIE, 8, 12
	call P_GalacticHQControlRoom_FlickerLakeGuardians
	call P_GalacticHQControlRoom_FlickerLakeGuardians
	call P_GalacticHQControlRoom_FlickerLakeGuardians
	end

P_GalacticHQControlRoom_DontPressButton:
	closemsg
	releaseall
	end

P_GalacticHQControlRoom_FlickerLakeGuardians:
	wait 2, VAR_SPECIAL_RESULT
	// Platino: AddObject LOCALID_MESPRIT
	// Platino: AddObject LOCALID_AZELF
	// Platino: AddObject LOCALID_UXIE
	wait 2, VAR_SPECIAL_RESULT
	return


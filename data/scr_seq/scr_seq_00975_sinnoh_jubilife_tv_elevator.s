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


// jubilife_tv_elevator: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_JubilifeTVElevator_Receptionist
scrdef P_JubilifeTVElevator_Receptionist
scrdef_end

P_JubilifeTVElevator_Receptionist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800A
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_JubilifeTVElevator_CurrentFloor4
	compare VAR_SPECIAL_x8008, 1
	goto_if_eq P_JubilifeTVElevator_CurrentFloor3
	compare VAR_SPECIAL_x8008, 2
	goto_if_eq P_JubilifeTVElevator_CurrentFloor2
	compare VAR_SPECIAL_x8008, 3
	goto_if_eq P_JubilifeTVElevator_CurrentFloor1
	end

P_JubilifeTVElevator_CurrentFloor4:
	buffer_dept_store_floor_no 0, 4
	goto P_JubilifeTVElevator_SelectFloor

P_JubilifeTVElevator_CurrentFloor3:
	buffer_dept_store_floor_no 0, 3
	goto P_JubilifeTVElevator_SelectFloor

P_JubilifeTVElevator_CurrentFloor2:
	buffer_dept_store_floor_no 0, 2
	goto P_JubilifeTVElevator_SelectFloor

P_JubilifeTVElevator_CurrentFloor1:
	buffer_dept_store_floor_no 0, 1
	goto P_JubilifeTVElevator_SelectFloor

P_JubilifeTVElevator_SelectFloor:
	// Platino: ShowCurrentFloor 20, 1, VAR_ELEVATOR_FLOORS_ABOVE
	npc_msg 0
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_RESULT
	AddMultiOption 1, 0
	AddMultiOption 2, 1
	AddMultiOption 3, 2
	AddMultiOption 4, 3
	AddMultiOption 5, 4
	ShowMulti
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_JubilifeTVElevator_SelectFloor4
	compare VAR_SPECIAL_x8008, 1
	goto_if_eq P_JubilifeTVElevator_SelectFloor3
	compare VAR_SPECIAL_x8008, 2
	goto_if_eq P_JubilifeTVElevator_SelectFloor2
	compare VAR_SPECIAL_x8008, 3
	goto_if_eq P_JubilifeTVElevator_SelectFloor1
	goto P_JubilifeTVElevator_SelectNoFloor

P_JubilifeTVElevator_SelectFloor4:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	set_dynamic_warp 550, 1, 18, 2, 1
	compare VAR_SPECIAL_x800A, 0
	goto_if_eq P_JubilifeTVElevator_SameFloorMessage
	compare VAR_SPECIAL_x800A, 0
	call_if_gt P_JubilifeTVElevator_GoingUpMessage
	compare VAR_SPECIAL_x800A, 0
	call_if_lt P_JubilifeTVElevator_GoingDownMessage
	call P_JubilifeTVElevator_ElevatorAnimation
	setvar VAR_SPECIAL_x800A, 0
	goto P_JubilifeTVElevator_HereWeAreMessage

P_JubilifeTVElevator_SelectFloor3:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	set_dynamic_warp 549, 4, 18, 2, 1
	compare VAR_SPECIAL_x800A, 1
	goto_if_eq P_JubilifeTVElevator_SameFloorMessage
	compare VAR_SPECIAL_x800A, 1
	call_if_gt P_JubilifeTVElevator_GoingUpMessage
	compare VAR_SPECIAL_x800A, 1
	call_if_lt P_JubilifeTVElevator_GoingDownMessage
	call P_JubilifeTVElevator_ElevatorAnimation
	setvar VAR_SPECIAL_x800A, 1
	goto P_JubilifeTVElevator_HereWeAreMessage

P_JubilifeTVElevator_SelectFloor2:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	set_dynamic_warp 548, 3, 18, 2, 1
	compare VAR_SPECIAL_x800A, 2
	goto_if_eq P_JubilifeTVElevator_SameFloorMessage
	compare VAR_SPECIAL_x800A, 2
	call_if_gt P_JubilifeTVElevator_GoingUpMessage
	compare VAR_SPECIAL_x800A, 2
	call_if_lt P_JubilifeTVElevator_GoingDownMessage
	call P_JubilifeTVElevator_ElevatorAnimation
	setvar VAR_SPECIAL_x800A, 2
	goto P_JubilifeTVElevator_HereWeAreMessage

P_JubilifeTVElevator_SelectFloor1:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	set_dynamic_warp 547, 2, 18, 2, 1
	compare VAR_SPECIAL_x800A, 3
	goto_if_eq P_JubilifeTVElevator_SameFloorMessage
	compare VAR_SPECIAL_x800A, 3
	call_if_gt P_JubilifeTVElevator_GoingUpMessage
	compare VAR_SPECIAL_x800A, 3
	call_if_lt P_JubilifeTVElevator_GoingDownMessage
	call P_JubilifeTVElevator_ElevatorAnimation
	setvar VAR_SPECIAL_x800A, 3
	goto P_JubilifeTVElevator_HereWeAreMessage

P_JubilifeTVElevator_SelectNoFloor:
	setvar VAR_SPECIAL_x800A, 65535
	wait 1, VAR_SPECIAL_RESULT
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTVElevator_SameFloorMessage:
	setvar VAR_SPECIAL_x800A, 65535
	wait 1, VAR_SPECIAL_RESULT
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTVElevator_GoingUpMessage:
	npc_msg 8
	return

P_JubilifeTVElevator_GoingDownMessage:
	npc_msg 9
	return

P_JubilifeTVElevator_ElevatorAnimation:
	setvar VAR_SPECIAL_x800A, 65535
	closemsg
	// Platino: ApplyMovement LOCALID_RECEPTIONIST, JubilifeTVElevator_Movement_ReceptionistLookDown
	// Platino: WaitMovement 
	wait_se SEQ_SE_DP_SELECT
	elevator_anim VAR_SPECIAL_x8004, 4
	return

P_JubilifeTVElevator_HereWeAreMessage:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end


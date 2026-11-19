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


// veilstone_store_elevator: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VeilstoneStoreElevator_Receptionist
scrdef_end

P_VeilstoneStoreElevator_Receptionist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800A
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_VeilstoneStoreElevator_CurrentFloor5
	compare VAR_SPECIAL_x8008, 1
	goto_if_eq P_VeilstoneStoreElevator_CurrentFloor4
	compare VAR_SPECIAL_x8008, 2
	goto_if_eq P_VeilstoneStoreElevator_CurrentFloor3
	compare VAR_SPECIAL_x8008, 3
	goto_if_eq P_VeilstoneStoreElevator_CurrentFloor2
	compare VAR_SPECIAL_x8008, 4
	goto_if_eq P_VeilstoneStoreElevator_CurrentFloor1
	compare VAR_SPECIAL_x8008, 5
	goto_if_eq P_VeilstoneStoreElevator_CurrentFloorB1
	end

P_VeilstoneStoreElevator_CurrentFloor5:
	buffer_dept_store_floor_no 0, 5
	goto P_VeilstoneStoreElevator_SelectFloor

P_VeilstoneStoreElevator_CurrentFloor4:
	buffer_dept_store_floor_no 0, 4
	goto P_VeilstoneStoreElevator_SelectFloor

P_VeilstoneStoreElevator_CurrentFloor3:
	buffer_dept_store_floor_no 0, 3
	goto P_VeilstoneStoreElevator_SelectFloor

P_VeilstoneStoreElevator_CurrentFloor2:
	buffer_dept_store_floor_no 0, 2
	goto P_VeilstoneStoreElevator_SelectFloor

P_VeilstoneStoreElevator_CurrentFloor1:
	buffer_dept_store_floor_no 0, 1
	goto P_VeilstoneStoreElevator_SelectFloor

P_VeilstoneStoreElevator_CurrentFloorB1:
	buffer_dept_store_floor_no 0, 0
	goto P_VeilstoneStoreElevator_SelectFloor

P_VeilstoneStoreElevator_SelectFloor:
	// Platino: ShowCurrentFloor 20, 1, VAR_ELEVATOR_FLOORS_ABOVE
	npc_msg 0
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_RESULT
	AddMultiOption 1, 0
	AddMultiOption 2, 1
	AddMultiOption 3, 2
	AddMultiOption 4, 3
	AddMultiOption 5, 4
	AddMultiOption 6, 5
	AddMultiOption 7, 6
	ShowMulti
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_VeilstoneStoreElevator_SelectFloor5
	compare VAR_SPECIAL_x8008, 1
	goto_if_eq P_VeilstoneStoreElevator_SelectFloor4
	compare VAR_SPECIAL_x8008, 2
	goto_if_eq P_VeilstoneStoreElevator_SelectFloor3
	compare VAR_SPECIAL_x8008, 3
	goto_if_eq P_VeilstoneStoreElevator_SelectFloor2
	compare VAR_SPECIAL_x8008, 4
	goto_if_eq P_VeilstoneStoreElevator_SelectFloor1
	compare VAR_SPECIAL_x8008, 5
	goto_if_eq P_VeilstoneStoreElevator_SelectFloorB1
	goto P_VeilstoneStoreElevator_SelectNoFloor

P_VeilstoneStoreElevator_SelectFloor5:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	set_dynamic_warp 651, 1, 18, 2, 1
	compare VAR_SPECIAL_x800A, 0
	goto_if_eq P_VeilstoneStoreElevator_SelectCurrentFloor
	compare VAR_SPECIAL_x800A, 0
	call_if_gt P_VeilstoneStoreElevator_GoingUpMessage
	compare VAR_SPECIAL_x800A, 0
	call_if_lt P_VeilstoneStoreElevator_GoingDownMessage
	call P_VeilstoneStoreElevator_ElevatorAnimation
	setvar VAR_SPECIAL_x800A, 0
	goto P_VeilstoneStoreElevator_ElevatorArrived

P_VeilstoneStoreElevator_SelectFloor4:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	set_dynamic_warp 650, 2, 18, 2, 1
	compare VAR_SPECIAL_x800A, 1
	goto_if_eq P_VeilstoneStoreElevator_SelectCurrentFloor
	compare VAR_SPECIAL_x800A, 1
	call_if_gt P_VeilstoneStoreElevator_GoingUpMessage
	compare VAR_SPECIAL_x800A, 1
	call_if_lt P_VeilstoneStoreElevator_GoingDownMessage
	call P_VeilstoneStoreElevator_ElevatorAnimation
	setvar VAR_SPECIAL_x800A, 1
	goto P_VeilstoneStoreElevator_ElevatorArrived

P_VeilstoneStoreElevator_SelectFloor3:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	set_dynamic_warp 649, 2, 18, 2, 1
	compare VAR_SPECIAL_x800A, 2
	goto_if_eq P_VeilstoneStoreElevator_SelectCurrentFloor
	compare VAR_SPECIAL_x800A, 2
	call_if_gt P_VeilstoneStoreElevator_GoingUpMessage
	compare VAR_SPECIAL_x800A, 2
	call_if_lt P_VeilstoneStoreElevator_GoingDownMessage
	call P_VeilstoneStoreElevator_ElevatorAnimation
	setvar VAR_SPECIAL_x800A, 2
	goto P_VeilstoneStoreElevator_ElevatorArrived

P_VeilstoneStoreElevator_SelectFloor2:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	set_dynamic_warp 648, 2, 18, 2, 1
	compare VAR_SPECIAL_x800A, 3
	goto_if_eq P_VeilstoneStoreElevator_SelectCurrentFloor
	compare VAR_SPECIAL_x800A, 3
	call_if_gt P_VeilstoneStoreElevator_GoingUpMessage
	compare VAR_SPECIAL_x800A, 3
	call_if_lt P_VeilstoneStoreElevator_GoingDownMessage
	call P_VeilstoneStoreElevator_ElevatorAnimation
	setvar VAR_SPECIAL_x800A, 3
	goto P_VeilstoneStoreElevator_ElevatorArrived

P_VeilstoneStoreElevator_SelectFloor1:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	set_dynamic_warp 647, 2, 18, 2, 1
	compare VAR_SPECIAL_x800A, 4
	goto_if_eq P_VeilstoneStoreElevator_SelectCurrentFloor
	compare VAR_SPECIAL_x800A, 4
	call_if_gt P_VeilstoneStoreElevator_GoingUpMessage
	compare VAR_SPECIAL_x800A, 4
	call_if_lt P_VeilstoneStoreElevator_GoingDownMessage
	call P_VeilstoneStoreElevator_ElevatorAnimation
	setvar VAR_SPECIAL_x800A, 4
	goto P_VeilstoneStoreElevator_ElevatorArrived

P_VeilstoneStoreElevator_SelectFloorB1:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	set_dynamic_warp 994, 1, 18, 2, 1
	compare VAR_SPECIAL_x800A, 5
	goto_if_eq P_VeilstoneStoreElevator_SelectCurrentFloor
	compare VAR_SPECIAL_x800A, 5
	call_if_gt P_VeilstoneStoreElevator_GoingUpMessage
	compare VAR_SPECIAL_x800A, 5
	call_if_lt P_VeilstoneStoreElevator_GoingDownMessage
	call P_VeilstoneStoreElevator_ElevatorAnimation
	setvar VAR_SPECIAL_x800A, 5
	goto P_VeilstoneStoreElevator_ElevatorArrived

P_VeilstoneStoreElevator_SelectNoFloor:
	setvar VAR_SPECIAL_x800A, 65535
	wait 1, VAR_SPECIAL_RESULT
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStoreElevator_SelectCurrentFloor:
	setvar VAR_SPECIAL_x800A, 65535
	wait 1, VAR_SPECIAL_RESULT
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStoreElevator_GoingUpMessage:
	npc_msg 10
	return

P_VeilstoneStoreElevator_GoingDownMessage:
	npc_msg 11
	return

P_VeilstoneStoreElevator_ElevatorAnimation:
	setvar VAR_SPECIAL_x800A, 65535
	closemsg
	// Platino: ApplyMovement LOCALID_RECEPTIONIST, VeilstoneStoreElevator_Movement_ReceptionistWalkOnSpotSouth
	// Platino: WaitMovement 
	wait_se SEQ_SE_DP_SELECT
	elevator_anim VAR_SPECIAL_x8004, 4
	return

P_VeilstoneStoreElevator_ElevatorArrived:
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800A
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_VeilstoneStoreElevator_ArrivedFloor5
	compare VAR_SPECIAL_x8008, 1
	goto_if_eq P_VeilstoneStoreElevator_ArrivedFloor4
	compare VAR_SPECIAL_x8008, 2
	goto_if_eq P_VeilstoneStoreElevator_ArrivedFloor3
	compare VAR_SPECIAL_x8008, 3
	goto_if_eq P_VeilstoneStoreElevator_ArrivedFloor2
	compare VAR_SPECIAL_x8008, 4
	goto_if_eq P_VeilstoneStoreElevator_ArrivedFloor1
	compare VAR_SPECIAL_x8008, 5
	goto_if_eq P_VeilstoneStoreElevator_ArrivedFloorB1
	end

P_VeilstoneStoreElevator_ArrivedFloor5:
	npc_msg 12
	goto P_VeilstoneStoreElevator_ElevatorDone

P_VeilstoneStoreElevator_ArrivedFloor4:
	npc_msg 13
	goto P_VeilstoneStoreElevator_ElevatorDone

P_VeilstoneStoreElevator_ArrivedFloor3:
	npc_msg 14
	goto P_VeilstoneStoreElevator_ElevatorDone

P_VeilstoneStoreElevator_ArrivedFloor2:
	npc_msg 15
	goto P_VeilstoneStoreElevator_ElevatorDone

P_VeilstoneStoreElevator_ArrivedFloor1:
	npc_msg 16
	goto P_VeilstoneStoreElevator_ElevatorDone

P_VeilstoneStoreElevator_ArrivedFloorB1:
	npc_msg 17
	goto P_VeilstoneStoreElevator_ElevatorDone

P_VeilstoneStoreElevator_ElevatorDone:
	wait_button_or_walk_away
	closemsg
	releaseall
	end


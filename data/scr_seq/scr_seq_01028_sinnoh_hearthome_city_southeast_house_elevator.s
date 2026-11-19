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


// hearthome_city_southeast_house_elevator: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_HearthomeCitySoutheastHouseElevator_OnFrame_Init
scrdef_end

P_HearthomeCitySoutheastHouseElevator_OnFrame_Init:
	lockall
	// Platino: ApplyMovement LOCALID_PLAYER, HearthomeCitySoutheastHouseElevator_Movement_PlayerWalkIn
	// Platino: WaitMovement 
	get_dynamic_warp_floor_no VAR_SPECIAL_x800A
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800A
	compare VAR_SPECIAL_x8008, 1
	goto_if_eq P_HearthomeCitySoutheastHouseElevator_ElevatorUp
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_HearthomeCitySoutheastHouseElevator_ElevatorDown
	end

P_HearthomeCitySoutheastHouseElevator_ElevatorUp:
	call P_HearthomeCitySoutheastHouseElevator_ElevatorAnimation
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: Warp MAP_HEADER_HEARTHOME_CITY_SOUTHEAST_HOUSE_2F, 18, 3, DIR_SOUTH
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	end

P_HearthomeCitySoutheastHouseElevator_ElevatorDown:
	call P_HearthomeCitySoutheastHouseElevator_ElevatorAnimation
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: Warp MAP_HEADER_HEARTHOME_CITY_SOUTHEAST_HOUSE_1F, 18, 3, DIR_SOUTH
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	end

P_HearthomeCitySoutheastHouseElevator_ElevatorAnimation:
	wait_se SEQ_SE_DP_SELECT
	elevator_anim VAR_SPECIAL_x8004, 4
	// Platino: ApplyMovement LOCALID_PLAYER, HearthomeCitySoutheastHouseElevator_Movement_PlayerWalkOut
	// Platino: WaitMovement 
	return


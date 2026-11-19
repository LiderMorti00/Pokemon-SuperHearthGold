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
	// Platino: GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
	goto P_VeilstoneStoreElevator_CurrentFloorB1

P_VeilstoneStoreElevator_CurrentFloorB1:
	// Platino: BufferFloorNumber 0, 0
	goto P_VeilstoneStoreElevator_SelectFloor

P_VeilstoneStoreElevator_SelectFloor:
	// Platino: ShowCurrentFloor 20, 1, VAR_ELEVATOR_FLOORS_ABOVE
	npc_msg 0
	// Platino: InitGlobalTextMenu 1, 1, 0, VAR_RESULT
	// Platino: AddMenuEntryImm MenuEntries_Text_5F, 0
	// Platino: AddMenuEntryImm MenuEntries_Text_4F, 1
	// Platino: AddMenuEntryImm MenuEntries_Text_3F, 2
	// Platino: AddMenuEntryImm MenuEntries_Text_2F, 3
	// Platino: AddMenuEntryImm MenuEntries_Text_1F, 4
	// Platino: AddMenuEntryImm MenuEntries_Text_B1F, 5
	// Platino: AddMenuEntryImm MenuEntries_Text_ElevatorExit, 6
	// Platino: ShowMenu 
	goto P_VeilstoneStoreElevator_SelectNoFloor

P_VeilstoneStoreElevator_SelectNoFloor:
	wait 1, VAR_SPECIAL_RESULT
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end


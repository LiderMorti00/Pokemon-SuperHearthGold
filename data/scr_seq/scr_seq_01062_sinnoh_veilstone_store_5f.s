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


// veilstone_store_5f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VeilstoneStore5F_BugCatcher
scrdef P_VeilstoneStore5F_MiddleAgedWoman
scrdef P_VeilstoneStore5F_Collector1
scrdef P_VeilstoneStore5F_Collector2
scrdef P_VeilstoneStore5F_VendingMachine
scrdef P_VeilstoneStore5F_VendingMachine
scrdef P_VeilstoneStore5F_Directory
scrdef_end

P_VeilstoneStore5F_BugCatcher:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore5F_MiddleAgedWoman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore5F_Collector1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4177, P_VeilstoneStore5F_Collector1AfterItemGiven
	npc_msg 2
	goto_if_no_item_space ITEM_STICKY_BARB, 1, P_VeilstoneStore5F_Collector1BagIsFull
	setflag 4177
	goto P_VeilstoneStore5F_Collector1AfterItemGiven

P_VeilstoneStore5F_Collector1AfterItemGiven:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore5F_Collector1BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_VeilstoneStore5F_Collector2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore5F_VendingMachine:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	// Platino: ShowMoney 20, 2
	goto P_VeilstoneStore5F_VendingMachineMenu

P_VeilstoneStore5F_VendingMachineMenu:
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_x8009
	AddMultiOption 6, 0
	AddMultiOption 7, 1
	AddMultiOption 8, 2
	AddMultiOption 9, 3
	ShowMulti
	copyvar VAR_SPECIAL_x800B, VAR_SPECIAL_x8009
	compare VAR_SPECIAL_x800B, 0
	goto_if_eq P_VeilstoneStore5F_VendingMachineChooseFreshWater
	compare VAR_SPECIAL_x800B, 1
	goto_if_eq P_VeilstoneStore5F_VendingMachineChooseSodaPop
	compare VAR_SPECIAL_x800B, 2
	goto_if_eq P_VeilstoneStore5F_VendingMachineChooseLemonade
	npc_msg 10
	goto P_VeilstoneStore5F_VendingMachineClose

P_VeilstoneStore5F_VendingMachineChooseFreshWater:
	goto P_VeilstoneStore5F_VendingMachineDispenseDrink

P_VeilstoneStore5F_VendingMachineChooseSodaPop:
	goto P_VeilstoneStore5F_VendingMachineDispenseDrink

P_VeilstoneStore5F_VendingMachineChooseLemonade:
	goto P_VeilstoneStore5F_VendingMachineDispenseDrink

P_VeilstoneStore5F_VendingMachineClose:
	wait_button_or_walk_away
	closemsg
	// Platino: HideMoney 
	releaseall
	end

P_VeilstoneStore5F_VendingMachineDispenseDrink:
	// Platino: UpdateMoneyDisplay 
	npc_msg 11
	npc_msg 12
	goto P_VeilstoneStore5F_VendingMachineBuyAnotherDrink

P_VeilstoneStore5F_VendingMachineBagIsFull:
	callstd std_bag_is_full
	closemsg
	// Platino: HideMoney 
	releaseall
	end

P_VeilstoneStore5F_VendingMachineBuyAnotherDrink:
	npc_msg 5
	goto P_VeilstoneStore5F_VendingMachineMenu

P_VeilstoneStore5F_Directory:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end


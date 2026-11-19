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


// game_corner: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_GameCorner_CoinsClerk
scrdef P_GameCorner_LadyExplainSlotMachines
scrdef P_GameCorner_OldMan20Coins
scrdef P_GameCorner_Farmer
scrdef P_GameCorner_Guitarist
scrdef P_GameCorner_Worker
scrdef P_GameCorner_LadyPokeBalls
scrdef P_GameCorner_MaylenesDad
scrdef P_GameCorner_SlotMachine_0
scrdef P_GameCorner_SlotMachine_1
scrdef P_GameCorner_SlotMachine_2
scrdef P_GameCorner_SlotMachine_3
scrdef P_GameCorner_SlotMachine_4
scrdef P_GameCorner_SlotMachine_5
scrdef P_GameCorner_SlotMachine_6
scrdef P_GameCorner_SlotMachine_7
scrdef P_GameCorner_SlotMachine_8
scrdef P_GameCorner_SlotMachine_9
scrdef P_GameCorner_SlotMachine_10
scrdef P_GameCorner_SlotMachine_11
scrdef P_GameCorner_BgSignBonusRounds
scrdef_end

P_GameCorner_CoinsClerk:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	goto P_GameCorner_CoinsClerk_NoCoinCase

P_GameCorner_CoinsClerk_NoCoinCase:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GameCorner_LadyExplainSlotMachines:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GameCorner_OldMan20Coins:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_GameCorner_OldMan20Coins_NoCoinCase

P_GameCorner_OldMan20Coins_NoCoinCase:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GameCorner_Farmer:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_GameCorner_Farmer_NoCoinCase

P_GameCorner_Farmer_NoCoinCase:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GameCorner_Guitarist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GameCorner_Worker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GameCorner_LadyPokeBalls:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GameCorner_MaylenesDad:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GameCorner_SlotMachine_0:
	goto P_GameCorner_SlotMachine

P_GameCorner_SlotMachine:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto P_GameCorner_SlotMachine_NoCoinCase

P_GameCorner_SlotMachine_NoCoinCase:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GameCorner_SlotMachine_1:
	goto P_GameCorner_SlotMachine

P_GameCorner_SlotMachine_2:
	goto P_GameCorner_SlotMachine

P_GameCorner_SlotMachine_3:
	goto P_GameCorner_SlotMachine

P_GameCorner_SlotMachine_4:
	goto P_GameCorner_SlotMachine

P_GameCorner_SlotMachine_5:
	goto P_GameCorner_SlotMachine

P_GameCorner_SlotMachine_6:
	goto P_GameCorner_SlotMachine

P_GameCorner_SlotMachine_7:
	goto P_GameCorner_SlotMachine

P_GameCorner_SlotMachine_8:
	goto P_GameCorner_SlotMachine

P_GameCorner_SlotMachine_9:
	goto P_GameCorner_SlotMachine

P_GameCorner_SlotMachine_10:
	goto P_GameCorner_SlotMachine

P_GameCorner_SlotMachine_11:
	goto P_GameCorner_SlotMachine

P_GameCorner_BgSignBonusRounds:
	// Platino: BufferNumber 0, VAR_CONSECUTIVE_BONUS_ROUND_WINS
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end


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


// cafe: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Cafe_Rancher
scrdef P_Cafe_Waitress
scrdef P_Cafe_OldMan
scrdef_end

P_Cafe_Rancher:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Cafe_Waitress:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: ShowMoney 20, 2
	npc_msg 1
	goto P_Cafe_MoomooMilkMenu

P_Cafe_MoomooMilkMenu:
	MultiLocalText 30, 11, 0, 1, VAR_SPECIAL_RESULT
	// Platino: SetMenuXOriginToRight 
	AddMultiOption 2, 0
	AddMultiOption 3, 1
	AddMultiOption 4, 2
	ShowMulti
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_Cafe_TryBuyBottle
	compare VAR_SPECIAL_x8008, 1
	goto_if_eq P_Cafe_TryBuyDozen
	compare VAR_SPECIAL_x8008, 2
	goto_if_eq P_Cafe_AllRightThen
	goto P_Cafe_AllRightThen

P_Cafe_TryBuyBottle:
	// Platino: GoToIfNotEnoughMoney 500, Cafe_YouDontHaveTheMoney
	setvar VAR_SPECIAL_x8005, 1
	setvar VAR_SPECIAL_x8006, 500
	goto P_Cafe_GiveMoomooMilk

P_Cafe_TryBuyDozen:
	// Platino: GoToIfNotEnoughMoney 6000, Cafe_YouDontHaveTheMoney
	setvar VAR_SPECIAL_x8005, 12
	setvar VAR_SPECIAL_x8006, 6000
	goto P_Cafe_GiveMoomooMilk

P_Cafe_AllRightThen:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	// Platino: HideMoney 
	releaseall
	end

P_Cafe_GiveMoomooMilk:
	setvar VAR_SPECIAL_x8004, ITEM_MOOMOO_MILK
	goto_if_no_item_space ITEM_MOOMOO_MILK, 2000, P_Cafe_YourBagsFull
	// Platino: AddToGameRecord RECORD_MONEY_SPENT, VAR_0x8006
	// Platino: RemoveMoney2 VAR_0x8006
	// Platino: UpdateMoneyDisplay 
	call P_Cafe_GetMoomooMilkByDozen
	giveitem_no_check ITEM_MOOMOO_MILK, 2000
	closemsg
	// Platino: HideMoney 
	releaseall
	end

P_Cafe_YourBagsFull:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	// Platino: HideMoney 
	releaseall
	end

P_Cafe_GetMoomooMilkByDozen:
	npc_msg 7
	return

P_Cafe_OldMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4185, P_Cafe_RelievedPsyduckOfHeadaches
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Cafe_RelievedPsyduckOfHeadaches:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end


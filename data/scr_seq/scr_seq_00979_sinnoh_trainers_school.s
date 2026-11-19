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


// trainers_school: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_TrainersSchool_AceTrainerF
scrdef P_TrainersSchool_Youngster1
scrdef P_TrainersSchool_Lass
scrdef P_TrainersSchool_Youngster2
scrdef P_TrainersSchool_SchoolKidHarrison
scrdef P_TrainersSchool_SchoolKidChristine
scrdef scr_item_6
scrdef P_TrainersSchool_Blackboard
scrdef P_TrainersSchool_Blackboard
scrdef_end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_X_ATTACK
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

P_TrainersSchool_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_Youngster1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_Lass:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_Youngster2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_SchoolKidHarrison:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4103, P_TrainersSchool_PotionRestoresHP
	goto_if_set 4104, P_TrainersSchool_TryGivePotion
	npc_msg 4
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_TrainersSchool_BattleSchoolKidHarrison
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_TrainersSchool_ButBattlingIsTheBest
	end

P_TrainersSchool_PotionRestoresHP:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_TryGivePotion:
	goto_if_set 4105, P_TrainersSchool_GivePotion
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_BattleSchoolKidHarrison:
	npc_msg 7
	closemsg
	// Platino: GetPlayerStarterSpecies VAR_RESULT
	goto P_TrainersSchool_BattleHarrisonPiplup

P_TrainersSchool_ButBattlingIsTheBest:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_GivePotion:
	npc_msg 9
	setvar VAR_SPECIAL_x8004, ITEM_POTION
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_POTION, 1, P_TrainersSchool_BagIsFull
	giveitem_no_check ITEM_POTION, 1
	setflag 4103
	goto P_TrainersSchool_PotionRestoresHP

P_TrainersSchool_BattleHarrisonPiplup:
	// Platino: StartTrainerBattle TRAINER_SCHOOL_KID_HARRISON
	goto P_TrainersSchool_CheckWonBattleHarrison

P_TrainersSchool_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_TrainersSchool_CheckWonBattleHarrison:
	setflag 4104
	goto_if_set 4105, P_TrainersSchool_GivePotion
	goto_if_unset 4105, P_TrainersSchool_HardToWin
	end

P_TrainersSchool_HardToWin:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_SchoolKidChristine:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4105, P_TrainersSchool_PostBattleChristine
	npc_msg 10
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_TrainersSchool_BattleSchoolKidChristine
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_TrainersSchool_DontBeShy
	end

P_TrainersSchool_PostBattleChristine:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_BattleSchoolKidChristine:
	npc_msg 12
	closemsg
	// Platino: GetPlayerStarterSpecies VAR_RESULT
	goto P_TrainersSchool_BattleChristinePiplup

P_TrainersSchool_DontBeShy:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_BattleChristinePiplup:
	// Platino: StartTrainerBattle TRAINER_SCHOOL_KID_CHRISTINE
	goto P_TrainersSchool_CheckWonBattleChristine

P_TrainersSchool_CheckWonBattleChristine:
	setflag 4105
	goto_if_set 4104, P_TrainersSchool_DefeatedChristineAndHarrison
	goto_if_unset 4104, P_TrainersSchool_CouldHaveDoneBetter
	end

P_TrainersSchool_DefeatedChristineAndHarrison:
	goto_if_set 4103, P_TrainersSchool_CouldHaveDoneBetter
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_CouldHaveDoneBetter:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TrainersSchool_Blackboard:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 15
	goto P_TrainersSchool_StatusMenu

P_TrainersSchool_StatusMenu:
	npc_msg 16
	MultiLocalText 7, 2, 0, 1, VAR_SPECIAL_RESULT
	AddMultiOption 17, 0
	AddMultiOption 18, 1
	AddMultiOption 19, 2
	AddMultiOption 20, 3
	AddMultiOption 21, 4
	AddMultiOption 22, 5
	// Platino: ShowMenuMultiColumn 2
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_TrainersSchool_StatusPoisoned
	compare VAR_SPECIAL_x8008, 1
	goto_if_eq P_TrainersSchool_StatusParalyzed
	compare VAR_SPECIAL_x8008, 2
	goto_if_eq P_TrainersSchool_StatusAsleep
	compare VAR_SPECIAL_x8008, 3
	goto_if_eq P_TrainersSchool_StatusBurned
	compare VAR_SPECIAL_x8008, 4
	goto_if_eq P_TrainersSchool_StatusFrozen
	goto P_TrainersSchool_BlackboardEnd

P_TrainersSchool_StatusPoisoned:
	npc_msg 23
	goto P_TrainersSchool_StatusMenu

P_TrainersSchool_StatusParalyzed:
	npc_msg 24
	goto P_TrainersSchool_StatusMenu

P_TrainersSchool_StatusAsleep:
	npc_msg 25
	goto P_TrainersSchool_StatusMenu

P_TrainersSchool_StatusBurned:
	npc_msg 26
	goto P_TrainersSchool_StatusMenu

P_TrainersSchool_StatusFrozen:
	npc_msg 27
	goto P_TrainersSchool_StatusMenu

P_TrainersSchool_BlackboardEnd:
	closemsg
	releaseall
	end


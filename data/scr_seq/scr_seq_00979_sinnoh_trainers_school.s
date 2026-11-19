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
	// Platino: InitGlobalTextMenu 7, 2, 0, VAR_RESULT
	// Platino: AddMenuEntryImm MenuEntries_Text_Status_Poisoned, 0
	// Platino: AddMenuEntryImm MenuEntries_Text_Status_Paralyzed, 1
	// Platino: AddMenuEntryImm MenuEntries_Text_Status_Asleep, 2
	// Platino: AddMenuEntryImm MenuEntries_Text_Status_Burned, 3
	// Platino: AddMenuEntryImm MenuEntries_Text_Status_Frozen, 4
	// Platino: AddMenuEntryImm MenuEntries_Text_Exit, 5
	// Platino: ShowMenuMultiColumn 2
	goto P_TrainersSchool_BlackboardEnd

P_TrainersSchool_BlackboardEnd:
	closemsg
	releaseall
	end


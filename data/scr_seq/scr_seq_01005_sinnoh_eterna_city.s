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


// eterna_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_EternaCity_PokemonBreederM
scrdef P_EternaCity_ExpertM
scrdef P_EternaCity_NinjaBoy
scrdef P_EternaCity_PokemonBreederF1
scrdef P_EternaCity_AceTrainerF
scrdef scr_item_5
scrdef scr_item_6
scrdef P_EternaCity_BugCatcher1
scrdef P_EternaCity_PokemonBreederF2
scrdef P_EternaCity_BugCatcher2
scrdef P_EternaCity_GymSignpost
scrdef P_EternaCity_SignboardRadRickshawsCycleShop
scrdef P_EternaCity_MapSignpost
scrdef P_EternaCity_SignboardTeamGalacticEternaBuilding
scrdef P_EternaCity_MapSignpost
scrdef P_EternaCity_SignboardUndergroundMansHouse
scrdef P_EternaCity_SignboardEternaCondominiums
scrdef scr_hidden_17
scrdef scr_hidden_18
scrdef P_EternaCity_Statue
scrdef scr_hidden_20
scrdef scr_hidden_21
scrdef_end

scr_item_5:
	setvar VAR_SPECIAL_x8008, ITEM_TM046
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_SUPER_POTION
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_17:
	goto_if_set 4127, scr_hidden_17_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_DRACO_PLATE, 1, scr_hidden_17_full
	setflag 4127
	giveitem_no_check ITEM_DRACO_PLATE, 1
	closemsg
	releaseall
	end
scr_hidden_17_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_17_end:
	end

scr_hidden_18:
	goto_if_set 4128, scr_hidden_18_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_SUPER_POTION, 1, scr_hidden_18_full
	setflag 4128
	giveitem_no_check ITEM_SUPER_POTION, 1
	closemsg
	releaseall
	end
scr_hidden_18_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_18_end:
	end

scr_hidden_20:
	goto_if_set 4129, scr_hidden_20_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_GREAT_BALL, 1, scr_hidden_20_full
	setflag 4129
	giveitem_no_check ITEM_GREAT_BALL, 1
	closemsg
	releaseall
	end
scr_hidden_20_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_20_end:
	end

scr_hidden_21:
	goto_if_set 4130, scr_hidden_21_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MOON_STONE, 1, scr_hidden_21_full
	setflag 4130
	giveitem_no_check ITEM_MOON_STONE, 1
	closemsg
	releaseall
	end
scr_hidden_21_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_21_end:
	end

P_EternaCity_PokemonBreederM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_NinjaBoy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_PokemonBreederF1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4131, P_EternaCity_WhatWillHappenToGalacticBuilding
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_WhatWillHappenToGalacticBuilding:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_BugCatcher1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4131, P_EternaCity_DoYouUseKickstand
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_DoYouUseKickstand:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_PokemonBreederF2:
	goto_if_set 4123, P_EternaCity_GoingUndergroundIsABlast
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_GoingUndergroundIsABlast:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_BugCatcher2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset 4132, P_EternaCity_FeelsGreatRidingABike
	goto P_EternaCity_FeelsGreatRidingABike

P_EternaCity_FeelsGreatRidingABike:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	// Platino: ApplyMovement LOCALID_BUG_CATCHER_2, EternaCity_Movement_BugCatcher2FaceSouth
	// Platino: WaitMovement 
	releaseall
	end

P_EternaCity_GymSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_SignboardRadRickshawsCycleShop:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_SignboardTeamGalacticEternaBuilding:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_SignboardUndergroundMansHouse:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_SignboardEternaCondominiums:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCity_Statue:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end


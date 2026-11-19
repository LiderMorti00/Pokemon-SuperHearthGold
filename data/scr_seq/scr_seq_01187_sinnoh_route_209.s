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


// route_209: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef scr_item_4
scrdef P_Route209_PokefanM
scrdef P_Route209_Fisherman
scrdef scr_item_7
scrdef P_Route209_ArrowSignpostHearthomeCity
scrdef P_Route209_ArrowSignpostSolaceonTown
scrdef P_Route209_TrainerTipsSignpost
scrdef scr_hidden_11
scrdef scr_hidden_12
scrdef P_Route209_HallowedTower
scrdef P_Route209_HallowedTower
scrdef P_Route209_HallowedTower
scrdef P_Route209_HallowedTower
scrdef scr_hidden_17
scrdef scr_hidden_18
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_HYPER_POTION
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_TM047
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_CALCIUM
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_4:
	setvar VAR_SPECIAL_x8008, ITEM_TM019
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_7:
	setvar VAR_SPECIAL_x8008, ITEM_ETHER
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_11:
	goto_if_set 4498, scr_hidden_11_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STARDUST, 1, scr_hidden_11_full
	setflag 4498
	giveitem_no_check ITEM_STARDUST, 1
	closemsg
	releaseall
	end
scr_hidden_11_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_11_end:
	end

scr_hidden_12:
	goto_if_set 4499, scr_hidden_12_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_GREAT_BALL, 1, scr_hidden_12_full
	setflag 4499
	giveitem_no_check ITEM_GREAT_BALL, 1
	closemsg
	releaseall
	end
scr_hidden_12_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_12_end:
	end

scr_hidden_17:
	goto_if_set 4500, scr_hidden_17_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_REVIVE, 1, scr_hidden_17_full
	setflag 4500
	giveitem_no_check ITEM_REVIVE, 1
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
	goto_if_set 4501, scr_hidden_18_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_SUPER_REPEL, 1, scr_hidden_18_full
	setflag 4501
	giveitem_no_check ITEM_SUPER_REPEL, 1
	closemsg
	releaseall
	end
scr_hidden_18_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_18_end:
	end

P_Route209_PokefanM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route209_Fisherman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: BufferItemNameWithArticle 0, VAR_0x8004
	// Platino: CapitalizeFirstLetter 0
	goto_if_set 4502, P_Route209_AskExplainHowToFish
	npc_msg 1
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_Route209_AcceptGoodRod
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_Route209_RefuseGoodRod
	end

P_Route209_AskExplainHowToFish:
	npc_msg 2
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_Route209_ExplainHowToFish
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_Route209_WhenYouReelYouBattle
	end

P_Route209_AcceptGoodRod:
	npc_msg 3
	setflag 4502
	goto P_Route209_AskExplainHowToFish

P_Route209_RefuseGoodRod:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route209_ExplainHowToFish:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route209_WhenYouReelYouBattle:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route209_ArrowSignpostHearthomeCity:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route209_ArrowSignpostSolaceonTown:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route209_TrainerTipsSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route209_HallowedTower:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto P_Route209_CheckSpiritombCounter

P_Route209_CheckSpiritombCounter:
	// Platino: GetSpiritombCounter VAR_RESULT
	goto P_Route209_EncounterSpiritomb

P_Route209_EncounterSpiritomb:
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_SPIRITOMB, 0
	npc_msg 10
	wait_cry
	closemsg
	// Platino: StartWildBattle SPECIES_SPIRITOMB, 25
	// Platino: ClearSpiritombCounter 
	end


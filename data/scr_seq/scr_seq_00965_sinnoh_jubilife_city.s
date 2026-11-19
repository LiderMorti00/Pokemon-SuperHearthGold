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


// jubilife_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_JubilifeCity_AceTrainerF
scrdef P_JubilifeCity_AceTrainerM1
scrdef P_JubilifeCity_SchoolKidM1
scrdef P_JubilifeCity_Twin
scrdef P_JubilifeCity_ExpertM1
scrdef P_JubilifeCity_SchoolKidM2
scrdef P_JubilifeCity_ExpertM2
scrdef P_JubilifeCity_AceTrainerM3
scrdef P_JubilifeCity_KidWithNDS1
scrdef P_JubilifeCity_KidWithNDS2
scrdef scr_item_10
scrdef P_JubilifeCity_MapSignpost
scrdef P_JubilifeCity_MapSignpost
scrdef P_JubilifeCity_MapSignpost
scrdef P_JubilifeCity_MapSignpost
scrdef P_JubilifeCity_SignboardJubilifeCondominiums
scrdef P_JubilifeCity_SignboardPoketchCompany
scrdef P_JubilifeCity_SignboardJubilifeTV
scrdef P_JubilifeCity_SignboardTrainersSchool
scrdef P_JubilifeCity_SignboardGlobalTerminal
scrdef scr_hidden_20
scrdef_end

scr_item_10:
	setvar VAR_SPECIAL_x8008, ITEM_POTION
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_20:
	goto_if_set 4097, scr_hidden_20_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STARDUST, 1, scr_hidden_20_full
	setflag 4097
	giveitem_no_check ITEM_STARDUST, 1
	closemsg
	releaseall
	end
scr_hidden_20_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_20_end:
	end

P_JubilifeCity_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_AceTrainerM1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_SchoolKidM1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	// Platino: InitGlobalTextListMenu 29, 11, 0, VAR_RESULT, NO_EXIT_ON_B
	// Platino: SetMenuXOriginToRight 
	// Platino: AddListMenuEntry MenuEntries_Text_TypePreferenceFire, 0
	// Platino: AddListMenuEntry MenuEntries_Text_TypePreferenceWater, 1
	// Platino: AddListMenuEntry MenuEntries_Text_TypePreferenceGrass, 2
	// Platino: ShowListMenu 
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_ExpertM1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_JubilifeCity_YouAreKnowledgeable
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_JubilifeCity_YoureNotKnowledgeable
	end

P_JubilifeCity_YouAreKnowledgeable:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_YoureNotKnowledgeable:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_SchoolKidM2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_ExpertM2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_JubilifeCity_HaveYouVisitedTVStation

P_JubilifeCity_HaveYouVisitedTVStation:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_AceTrainerM3:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_KidWithNDS1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_KidWithNDS2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_SignboardJubilifeCondominiums:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_SignboardPoketchCompany:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_SignboardJubilifeTV:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_SignboardTrainersSchool:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeCity_SignboardGlobalTerminal:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end


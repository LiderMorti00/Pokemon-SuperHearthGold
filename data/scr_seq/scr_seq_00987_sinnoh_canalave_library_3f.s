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


// canalave_library_3f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_CanalaveLibrary3F_ScientistF
scrdef P_CanalaveLibrary3F_Youngster
scrdef P_CanalaveLibrary3F_SinnohMyth
scrdef P_CanalaveLibrary3F_SinnohMyth
scrdef P_CanalaveLibrary3F_SinnohRegionsMythology
scrdef P_CanalaveLibrary3F_SinnohRegionsMythology
scrdef P_CanalaveLibrary3F_SinnohsMyth
scrdef P_CanalaveLibrary3F_SinnohsMyth
scrdef P_CanalaveLibrary3F_VeilstonesMyth
scrdef P_CanalaveLibrary3F_VeilstonesMyth
scrdef P_CanalaveLibrary3F_TheOriginalStory
scrdef P_CanalaveLibrary3F_TheOriginalStory
scrdef P_CanalaveLibrary3F_HorrificMyth
scrdef P_CanalaveLibrary3F_HorrificMyth
scrdef P_CanalaveLibrary3F_SinnohFolkStories
scrdef P_CanalaveLibrary3F_SinnohFolkStories
scrdef P_CanalaveLibrary3F_BgSign
scrdef P_CanalaveLibrary3F_TheOriginalStory
scrdef P_CanalaveLibrary3F_TheOriginalStory
scrdef P_CanalaveLibrary3F_TheOriginalStory
scrdef P_CanalaveLibrary3F_HorrificMyth
scrdef P_CanalaveLibrary3F_HorrificMyth
scrdef P_CanalaveLibrary3F_SinnohFolkStories
scrdef P_CanalaveLibrary3F_SinnohFolkStories
scrdef_end

P_CanalaveLibrary3F_ScientistF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4108, P_CanalaveLibrary3F_WasThatAnEarthquake
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_WasThatAnEarthquake:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_Youngster:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4108, P_CanalaveLibrary3F_ImFeelingWobbly
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_ImFeelingWobbly:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_SinnohMyth:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_CanalaveLibrary3F_ReadSinnohMyth
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveLibrary3F_PutSinnohMythBack
	end

P_CanalaveLibrary3F_ReadSinnohMyth:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_PutSinnohMythBack:
	buffer_players_name 0
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_SinnohRegionsMythology:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_CanalaveLibrary3F_ReadSinnohRegionsMythology
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveLibrary3F_PutSinnohRegionsMythologyBack
	end

P_CanalaveLibrary3F_ReadSinnohRegionsMythology:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_PutSinnohRegionsMythologyBack:
	buffer_players_name 0
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_SinnohsMyth:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 10
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_CanalaveLibrary3F_ReadSinnohsMyth
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveLibrary3F_PutSinnohsMythBack
	end

P_CanalaveLibrary3F_ReadSinnohsMyth:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_PutSinnohsMythBack:
	buffer_players_name 0
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_VeilstonesMyth:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_CanalaveLibrary3F_ReadVeilstonesMyth
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveLibrary3F_PutVeilstonesMythBack
	end

P_CanalaveLibrary3F_ReadVeilstonesMyth:
	npc_msg 14
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveLibrary3F_PutVeilstonesMythBack
	npc_msg 15
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveLibrary3F_PutVeilstonesMythBack
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_PutVeilstonesMythBack:
	buffer_players_name 0
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_TheOriginalStory:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 18
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_CanalaveLibrary3F_ReadTheOriginalStory
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveLibrary3F_PutTheOriginalStoryBack
	end

P_CanalaveLibrary3F_ReadTheOriginalStory:
	npc_msg 19
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveLibrary3F_PutTheOriginalStoryBack
	npc_msg 20
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveLibrary3F_PutTheOriginalStoryBack
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_PutTheOriginalStoryBack:
	buffer_players_name 0
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_HorrificMyth:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 23
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_CanalaveLibrary3F_ReadHorrificMyth
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveLibrary3F_PutHorrificMythBack
	end

P_CanalaveLibrary3F_ReadHorrificMyth:
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_PutHorrificMythBack:
	buffer_players_name 0
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_SinnohFolkStories:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 26
	npc_msg 27
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_RESULT
	// Platino: AddMenuEntry MenuEntries_Text_SinnohFolkStory_Part1, 0
	// Platino: AddMenuEntry MenuEntries_Text_SinnohFolkStory_Part2, 1
	// Platino: AddMenuEntry MenuEntries_Text_SinnohFolkStory_Part3, 2
	// Platino: AddMenuEntry MenuEntries_Text_SinnohFolkStory_Exit, 3
	ShowMulti
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_CanalaveLibrary3F_SinnohFolkStory1
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveLibrary3F_SinnohFolkStory2
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq P_CanalaveLibrary3F_SinnohFolkStory3
	goto P_CanalaveLibrary3F_PutSinnohFolkStoriesBack

P_CanalaveLibrary3F_SinnohFolkStory1:
	npc_msg 28
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_SinnohFolkStory2:
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_SinnohFolkStory3:
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_PutSinnohFolkStoriesBack:
	buffer_players_name 0
	npc_msg 31
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary3F_BgSign:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end


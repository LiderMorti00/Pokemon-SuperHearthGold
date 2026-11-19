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


// jubilife_tv_3f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_JubilifeTV3F_Beauty1
scrdef P_JubilifeTV3F_Beauty2
scrdef P_JubilifeTV3F_GymGuide1
scrdef P_JubilifeTV3F_GymGuide2
scrdef_end

P_JubilifeTV3F_Beauty1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: ApplyMovement LOCALID_BEAUTY_1, JubilifeTV3F_Movement_BeautyFaceEastGroupRankingRoom
	// Platino: WaitMovement 
	npc_msg 0
	closemsg
	wait 8, VAR_SPECIAL_RESULT
	// Platino: ApplyMovement LOCALID_BEAUTY_1, JubilifeTV3F_Movement_BeautyFaceWestGlobalRankingRoom
	// Platino: WaitMovement 
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV3F_Beauty2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV3F_GymGuide1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV3F_GymGuide2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_JubilifeTV3F_ChooseCustomMessageWords
	goto P_JubilifeTV3F_OhAllRight

P_JubilifeTV3F_ChooseCustomMessageWords:
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	closemsg
	// Platino: ChooseTwoCustomMessageWords VAR_RESULT, VAR_0x8000, VAR_0x8001
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	npc_msg 5
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	closemsg
	// Platino: ChooseTwoCustomMessageWords VAR_RESULT, VAR_0x8002, VAR_0x8003
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: GetWallpaperFromCustomMessageWords VAR_RESULT, VAR_0x8000, VAR_0x8001, VAR_0x8002, VAR_0x8003
	goto P_JubilifeTV3F_DealForNewPCBoxesWallpaper

P_JubilifeTV3F_OhAllRight:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV3F_DealForNewPCBoxesWallpaper:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end


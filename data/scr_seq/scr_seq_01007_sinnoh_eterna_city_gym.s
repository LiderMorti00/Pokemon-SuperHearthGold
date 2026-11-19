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


// eterna_city_gym: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_seq_shg_gym_gardenia
scrdef P_EternaGym_GymGuide
scrdef P_EternaGym_LassCaroline
scrdef P_EternaGym_AromaLadyJenna
scrdef P_EternaGym_AromaLadyAngela
scrdef P_EternaGym_GymStatue
scrdef P_EternaGym_GymStatue
scrdef_end

P_EternaGym_GymGuide:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_EternaGym_GymGuideAfterBadge

P_EternaGym_GymGuideAfterBadge:
	buffer_players_name 0
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaGym_LassCaroline:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_EternaGym_LassCarolineBeaten

P_EternaGym_LassCarolineBeaten:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaGym_AromaLadyJenna:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_EternaGym_AromaLadyJennaBeaten

P_EternaGym_AromaLadyJennaBeaten:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaGym_AromaLadyAngela:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_EternaGym_AromaLadyAngelaBeaten

P_EternaGym_AromaLadyAngelaBeaten:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaGym_GymStatue:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto P_EternaGym_GymStatueAfterBadge

P_EternaGym_GymStatueAfterBadge:
	// Platino: BufferRivalName 0
	buffer_players_name 1
	// Platino: BufferRivalName 2
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_gyms.inc"

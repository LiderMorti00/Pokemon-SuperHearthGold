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


// veilstone_city_gym: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_seq_shg_gym_maylene
scrdef P_VeilstoneGym_GymGuide
scrdef P_VeilstoneGym_GymStatue
scrdef P_VeilstoneGym_GymStatue
scrdef P_VeilstoneGym_MiddlePoster
scrdef P_VeilstoneGym_LeftPoster
scrdef P_VeilstoneGym_RightPoster
scrdef_end

P_VeilstoneGym_GymGuide:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_VeilstoneGym_GymGuideAfterbadge

P_VeilstoneGym_GymGuideAfterbadge:
	buffer_players_name 0
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneGym_GymStatue:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto P_VeilstoneGym_GymStatueAfterBadge

P_VeilstoneGym_GymStatueAfterBadge:
	// Platino: BufferRivalName 0
	buffer_players_name 1
	// Platino: BufferRivalName 2
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneGym_MiddlePoster:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneGym_LeftPoster:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneGym_RightPoster:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_gyms.inc"

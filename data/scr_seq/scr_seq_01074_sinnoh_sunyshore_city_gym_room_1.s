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


// sunyshore_city_gym_room_1: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SunyshoreGymRoom1_GymGuide
scrdef P_SunyshoreGymRoom1_GymStatue
scrdef P_SunyshoreGymRoom1_GymStatue
scrdef_end

P_SunyshoreGymRoom1_GymGuide:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_SunyshoreGymRoom1_GymGuideAfterbadge

P_SunyshoreGymRoom1_GymGuideAfterbadge:
	buffer_players_name 0
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreGymRoom1_GymStatue:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto P_SunyshoreGymRoom1_GymStatue_AfterBadge

P_SunyshoreGymRoom1_GymStatue_AfterBadge:
	goto P_SunyshoreGymRoom1_GymStatue_AfterRivalBadge

P_SunyshoreGymRoom1_GymStatue_AfterRivalBadge:
	buffer_players_name 0
	// Platino: BufferRivalName 1
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end


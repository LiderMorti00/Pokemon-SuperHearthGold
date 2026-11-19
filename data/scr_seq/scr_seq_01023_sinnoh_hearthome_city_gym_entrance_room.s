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


// hearthome_city_gym_entrance_room: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_HearthomeGym_GymGuide
scrdef P_HearthomeGym_GymStatue
scrdef P_HearthomeGym_GymStatue
scrdef_end

P_HearthomeGym_GymGuide:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_HearthomeGym_GymGuideAfterBadge

P_HearthomeGym_GymGuideAfterBadge:
	buffer_players_name 0
	npc_msg 0
	goto P_HearthomeGym_GymGuideEnd

P_HearthomeGym_GymGuideEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeGym_GymStatue:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto P_HearthomeGym_GymStatueAfterBadge

P_HearthomeGym_GymStatueAfterBadge:
	// Platino: BufferRivalName 0
	buffer_players_name 1
	// Platino: BufferRivalName 2
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end


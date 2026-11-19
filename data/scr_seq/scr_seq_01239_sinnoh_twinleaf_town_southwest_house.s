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


// twinleaf_town_southwest_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_TwinleafTownSouthwestHouse_ExpertF
scrdef P_TwinleafTownSouthwestHouse_Twin
scrdef_end

P_TwinleafTownSouthwestHouse_ExpertF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4460, P_TwinleafTownSouthwestHouse_ProfRowanGavePokedex
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTownSouthwestHouse_ProfRowanGavePokedex:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTownSouthwestHouse_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	goto_if_set 4460, P_TwinleafTownSouthwestHouse_CanIBeFriendsWithPokemon
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTownSouthwestHouse_CanIBeFriendsWithPokemon:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


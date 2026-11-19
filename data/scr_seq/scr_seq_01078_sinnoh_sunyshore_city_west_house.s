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


// sunyshore_city_west_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SunyshoreCityWestHouse_BattleGirl
scrdef P_SunyshoreCityWestHouse_Clown
scrdef P_SunyshoreCityWestHouse_GymGuide
scrdef P_SunyshoreCityWestHouse_PokemonBreederF
scrdef P_SunyshoreCityWestHouse_Youngster1
scrdef P_SunyshoreCityWestHouse_Youngster2
scrdef P_SunyshoreCityWestHouse_Youngster3
scrdef_end

P_SunyshoreCityWestHouse_BattleGirl:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCityWestHouse_Clown:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCityWestHouse_GymGuide:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCityWestHouse_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCityWestHouse_Youngster1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCityWestHouse_Youngster2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCityWestHouse_Youngster3:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end


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


// oreburgh_city_west_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_OreburghCityWestHouse_Youngster
scrdef P_OreburghCityWestHouse_PokefanF
scrdef P_OreburghCityWestHouse_Pikachu
scrdef_end

P_OreburghCityWestHouse_Youngster:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityWestHouse_PokefanF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityWestHouse_Pikachu:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_PIKACHU, 0
	npc_msg 2
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end


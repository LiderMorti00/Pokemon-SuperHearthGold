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


// oreburgh_city_north_house_2f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_OreburghCityNorthHouse2F_Guitarist
scrdef P_OreburghCityNorthHouse2F_PokemonBreederF
scrdef P_OreburghCityNorthHouse2F_Collector
scrdef_end

P_OreburghCityNorthHouse2F_Guitarist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityNorthHouse2F_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityNorthHouse2F_Collector:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4122, P_OreburghCityNorthHouse2F_SoManyKindsOfPokemon
	// Platino: CheckPartyHasSpecies VAR_RESULT, SPECIES_GEODUDE
	npc_msg 2
	goto_if_no_item_space ITEM_HEAL_BALL, 1, P_OreburghCityNorthHouse2F_BagIsFull
	setflag 4122
	giveitem_no_check ITEM_HEAL_BALL, 1
	closemsg
	releaseall
	end

P_OreburghCityNorthHouse2F_SoManyKindsOfPokemon:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityNorthHouse2F_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end


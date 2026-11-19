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


// pastoria_city_southwest_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_PastoriaCitySouthwestHouse_PokemonBreederF
scrdef P_PastoriaCitySouthwestHouse_Twin
scrdef_end

P_PastoriaCitySouthwestHouse_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4160, P_PastoriaCitySouthwestHouse_PlantingIsGood
	npc_msg 0
	setvar VAR_SPECIAL_x8005, 1
	setflag 4160
	closemsg
	releaseall
	end

P_PastoriaCitySouthwestHouse_PlantingIsGood:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCitySouthwestHouse_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_PastoriaCitySouthwestHouse_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end


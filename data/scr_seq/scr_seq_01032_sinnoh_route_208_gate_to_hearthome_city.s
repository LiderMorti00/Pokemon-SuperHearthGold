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


// route_208_gate_to_hearthome_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route208GateToHearthomeCity_PokemonBreederM
scrdef P_Route208GateToHearthomeCity_MiddleAgedWoman
scrdef P_Route208GateToHearthomeCity_Clefairy
scrdef_end

P_Route208GateToHearthomeCity_PokemonBreederM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route208GateToHearthomeCity_MiddleAgedWoman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route208GateToHearthomeCity_Clefairy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_CLEFAIRY, 0
	npc_msg 2
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end


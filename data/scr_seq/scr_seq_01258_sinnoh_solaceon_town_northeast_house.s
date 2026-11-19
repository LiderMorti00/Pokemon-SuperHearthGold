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


// solaceon_town_northeast_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SolaceonTownNortheastHouse_PokemonBreederF
scrdef P_SolaceonTownNortheastHouse_Cowgirl
scrdef_end

P_SolaceonTownNortheastHouse_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: GetPartyMonNature VAR_0x8004, VAR_RESULT
	// Platino: BufferNatureName 0, VAR_0x8004
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownNortheastHouse_Cowgirl:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end


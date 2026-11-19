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


// route_222_east_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route222EastHouse_Fisherman
scrdef_end

P_Route222EastHouse_Fisherman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: CheckPartyHasSpecies VAR_RESULT, SPECIES_REMORAID
	npc_msg 0
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectMoveTutorPokemon 
	// Platino: GetSelectedPartySlot VAR_0x8002
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	goto P_Route222EastHouse_ShowedOtherSpecies

P_Route222EastHouse_ShowedOtherSpecies:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end


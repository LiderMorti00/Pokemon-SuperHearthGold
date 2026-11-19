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


// eterna_city_east_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_EternaCityEastHouse_ExpertM
scrdef P_EternaCityEastHouse_ExpertF
scrdef P_EternaCityEastHouse_PokemonBreederM
scrdef_end

P_EternaCityEastHouse_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityEastHouse_ExpertF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityEastHouse_PokemonBreederM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_EternaCityEastHouse_DontFeelObligated
	npc_msg 3
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_EternaCityEastHouse_DontFeelObligated
	npc_msg 4
	goto P_EternaCityEastHouse_PokemonBreederMEnd

P_EternaCityEastHouse_DontFeelObligated:
	npc_msg 5
	goto P_EternaCityEastHouse_PokemonBreederMEnd

P_EternaCityEastHouse_PokemonBreederMEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end


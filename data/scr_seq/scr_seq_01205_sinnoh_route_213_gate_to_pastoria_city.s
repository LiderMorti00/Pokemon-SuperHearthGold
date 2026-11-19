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


// route_213_gate_to_pastoria_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route213GateToPastoriaCity_PokefanM
scrdef P_Route213GateToPastoriaCity_SchoolKidF
scrdef_end

P_Route213GateToPastoriaCity_PokefanM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route213GateToPastoriaCity_SchoolKidF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_Route213GateToPastoriaCity_YouDontKnow
	npc_msg 2
	goto P_Route213GateToPastoriaCity_SchoolKidFEnd

P_Route213GateToPastoriaCity_YouDontKnow:
	npc_msg 3
	goto P_Route213GateToPastoriaCity_SchoolKidFEnd

P_Route213GateToPastoriaCity_SchoolKidFEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end


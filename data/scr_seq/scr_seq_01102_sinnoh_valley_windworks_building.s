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


// valley_windworks_building: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_ValleyWindworksBuilding_ScientistPapa
scrdef P_ValleyWindworksBuilding_PCWest
scrdef P_ValleyWindworksBuilding_PCEast
scrdef_end

P_ValleyWindworksBuilding_ScientistPapa:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_ValleyWindworksBuilding_ValleyWindworksUsesTurbines

P_ValleyWindworksBuilding_ValleyWindworksUsesTurbines:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ValleyWindworksBuilding_PCWest:
	goto P_ValleyWindworksBuilding_PC

P_ValleyWindworksBuilding_PC:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto P_ValleyWindworksBuilding_PCScreenFilledWithNumbers

P_ValleyWindworksBuilding_PCScreenFilledWithNumbers:
	npc_msg 1
	goto P_ValleyWindworksBuilding_PCEnd

P_ValleyWindworksBuilding_PCEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ValleyWindworksBuilding_PCEast:
	goto P_ValleyWindworksBuilding_PC


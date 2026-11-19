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


// route_206_cycling_road_south_gate: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_seq_shg_mart
scrdef scr_seq_shg_mart
scrdef P_Route206CyclingRoadSouthGate_BattleGirl
scrdef_end

P_Route206CyclingRoadSouthGate_BattleGirl:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4475, P_Route206CyclingRoadSouthGate_GoThroughMtCoronet
	// Platino: BufferAccessoryName 0, VAR_0x8004
	npc_msg 0
	setflag 4475
	closemsg
	releaseall
	end

P_Route206CyclingRoadSouthGate_GoThroughMtCoronet:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_services.inc"

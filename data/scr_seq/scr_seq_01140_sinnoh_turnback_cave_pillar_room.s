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


// turnback_cave_pillar_room: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_TurnbackCavePillarRoom_Pillar
scrdef P_TurnbackCavePillarRoom_Pillar
scrdef P_TurnbackCavePillarRoom_Pillar
scrdef_end

P_TurnbackCavePillarRoom_Pillar:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8004, 0
	setvar VAR_SPECIAL_x8005, 15
	// Platino: BufferNumber 0, VAR_0x8004
	// Platino: BufferNumber 1, VAR_0x8005
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end


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


// vista_lighthouse: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VistaLighthouse_Sailor
scrdef P_VistaLighthouse_Youngster
scrdef P_VistaLighthouse_Binoculars
scrdef_end

P_VistaLighthouse_Sailor:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VistaLighthouse_Youngster:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VistaLighthouse_Binoculars:
	play_se SEQ_SE_DP_SELECT
	lockall
	buffer_players_name 0
	npc_msg 2
	closemsg
	// Platino: UseVistaLighthouseBinoculars 
	releaseall
	end


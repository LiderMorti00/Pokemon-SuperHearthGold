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


// solaceon_ruins_room_1: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SolaceonRuinsRoom1_Inscription
scrdef P_SolaceonRuinsRoom1_Inscription
scrdef P_SolaceonRuinsRoom1_Inscription
scrdef_end

P_SolaceonRuinsRoom1_Inscription:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: MessageUnown SolaceonRuinsRoom1_Text_Directions
	wait_button_or_walk_away
	closemsg
	releaseall
	end


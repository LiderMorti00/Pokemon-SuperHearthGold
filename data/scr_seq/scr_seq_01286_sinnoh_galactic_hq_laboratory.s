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


// galactic_hq_laboratory: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef P_GalacticHQLaboratory_Machine
scrdef P_GalacticHQLaboratory_Machine
scrdef P_GalacticHQLaboratory_Machine
scrdef P_GalacticHQLaboratory_Machine
scrdef P_GalacticHQLaboratory_Machine
scrdef P_GalacticHQLaboratory_Machine
scrdef P_GalacticHQLaboratory_Machine
scrdef P_GalacticHQLaboratory_Machine
scrdef P_GalacticHQLaboratory_Machine
scrdef P_GalacticHQLaboratory_Machine
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_FULL_RESTORE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

P_GalacticHQLaboratory_Machine:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end


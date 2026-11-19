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


// rock_peak_ruins: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_RockPeakRuins_Statue
scrdef P_RockPeakRuins_Statue
scrdef P_RockPeakRuins_Statue
scrdef_end

P_RockPeakRuins_Statue:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: CheckPartyHasFatefulEncounterRegigigas VAR_RESULT
	wait_se SEQ_SE_DP_SELECT
	// Platino: ScrCmd_29F 1
	npc_msg 0
	goto P_RockPeakRuins_StatueEnd

P_RockPeakRuins_SeemsToExudePower:
	npc_msg 1
	goto P_RockPeakRuins_StatueEnd

P_RockPeakRuins_StatueEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end


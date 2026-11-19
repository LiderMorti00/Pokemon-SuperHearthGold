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


// pastoria_city_observatory_gate_2f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_PastoriaCityObservatoryGate2F_AceTrainerF
scrdef P_PastoriaCityObservatoryGate2F_BugCatcher
scrdef P_PastoriaCityObservatoryGate2F_PokefanM
scrdef P_PastoriaCityObservatoryGate2F_Picnicker
scrdef P_PastoriaCityObservatoryGate2F_Binocular
scrdef P_PastoriaCityObservatoryGate2F_Binocular
scrdef P_PastoriaCityObservatoryGate2F_Binocular
scrdef_end

P_PastoriaCityObservatoryGate2F_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCityObservatoryGate2F_BugCatcher:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCityObservatoryGate2F_PokefanM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCityObservatoryGate2F_Picnicker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCityObservatoryGate2F_Binocular:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: ShowMoney 20, 2
	npc_msg 4
	yesno VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_PastoriaCityObservatoryGate2F_TryUseBinoculars
	// Platino: HideMoney 
	releaseall
	end

P_PastoriaCityObservatoryGate2F_TryUseBinoculars:
	// Platino: GoToIfNotEnoughMoney 100, PastoriaCityObservatoryGate2F_NotEnoughMoney
	// Platino: RemoveMoney 100
	// Platino: UpdateMoneyDisplay 
	// Platino: HideMoney 
	// Platino: StartGreatMarshLookout 
	releaseall
	end


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


// route_228_north_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route228NorthHouse_ExpertM
scrdef P_Route228NorthHouse_BgSign
scrdef_end

P_Route228NorthHouse_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4758, P_Route228NorthHouse_AskTeachUltimateMove
	setflag 4758
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_Route228NorthHouse_TryTeachUltimateMove
	goto P_Route228NorthHouse_ThatIsFine

P_Route228NorthHouse_AskTeachUltimateMove:
	npc_msg 1
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_Route228NorthHouse_TryTeachUltimateMove
	goto P_Route228NorthHouse_ThatIsFine

P_Route228NorthHouse_TryTeachUltimateMove:
	npc_msg 2
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectMoveTutorPokemon 
	// Platino: GetSelectedPartySlot VAR_0x8000
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	call P_Route228NorthHouse_CheckFinalStageStarter
	call P_Route228NorthHouse_CheckHasUltimateMove
	// Platino: GetPartyMonFriendship VAR_RESULT, VAR_0x8000
	// Platino: BufferPartyMonSpecies 0, VAR_0x8000
	goto P_Route228NorthHouse_AskTeachFrenzyPlant

P_Route228NorthHouse_ThatIsFine:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route228NorthHouse_CheckFinalStageStarter:
	return

P_Route228NorthHouse_CheckHasUltimateMove:
	goto P_Route228NorthHouse_CheckHasFrenzyPlant

P_Route228NorthHouse_AskTeachFrenzyPlant:
	npc_msg 4
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_Route228NorthHouse_ThatIsFine
	goto P_Route228NorthHouse_TeachUltimateMove

P_Route228NorthHouse_CheckHasFrenzyPlant:
	// Platino: CheckPartyMonHasMove VAR_RESULT, MOVE_FRENZY_PLANT, VAR_0x8000
	return

P_Route228NorthHouse_TeachUltimateMove:
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: OpenMoveTutorMenu VAR_0x8000, VAR_0x8003
	// Platino: CheckLearnedTutorMove VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_Route228NorthHouse_BgSign:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end


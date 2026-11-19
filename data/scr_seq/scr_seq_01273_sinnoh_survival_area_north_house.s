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


// survival_area_north_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SurvivalAreaNorthHouse_Hiker
scrdef P_SurvivalAreaNorthHouse_Psychic
scrdef P_SurvivalAreaNorthHouse_Book
scrdef_end

P_SurvivalAreaNorthHouse_Hiker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_SurvivalAreaNorthHouse_TryTeachMove
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_SurvivalAreaNorthHouse_SeeYouThen
	end

P_SurvivalAreaNorthHouse_TryTeachMove:
	npc_msg 1
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectMoveTutorPokemon 
	// Platino: GetSelectedPartySlot VAR_0x8000
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: CheckHasLearnableTutorMoves VAR_0x8000, TUTOR_LOCATION_SURVIVAL_AREA, VAR_RESULT
	// Platino: BufferPartyMonNickname 0, VAR_0x8000
	npc_msg 2
	// Platino: ShowMoveTutorMoveSelectionMenu VAR_0x8000, TUTOR_LOCATION_SURVIVAL_AREA, VAR_RESULT
	setvar VAR_SPECIAL_x8003, 10000
	// Platino: CheckCanAffordMove VAR_0x8003, VAR_RESULT
	// Platino: GetPartyMonMoveCount VAR_RESULT, VAR_0x8000
	setvar VAR_SPECIAL_x8002, 10000
	goto P_SurvivalAreaNorthHouse_TeachMove

P_SurvivalAreaNorthHouse_SeeYouThen:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SurvivalAreaNorthHouse_TeachMove:
	// Platino: BufferPartyMonNickname 0, VAR_0x8000
	// Platino: BufferMoveName 1, VAR_0x8003
	npc_msg 4
	// Platino: PlayFanfare SEQ_FANFA1_sseq
	wait_fanfare
	wait 16, VAR_SPECIAL_RESULT
	goto P_SurvivalAreaNorthHouse_PayShards

P_SurvivalAreaNorthHouse_PayShards:
	// Platino: PayShardCost VAR_0x8003
	// Platino: ResetMoveSlot VAR_0x8000, VAR_0x8002, VAR_0x8003
	goto P_SurvivalAreaNorthHouse_SeeYouThen

P_SurvivalAreaNorthHouse_Psychic:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SurvivalAreaNorthHouse_Book:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end


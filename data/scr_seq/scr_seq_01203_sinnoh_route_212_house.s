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


// route_212_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route212House_Beauty
scrdef P_Route212House_Hiker
scrdef P_Route212House_Twin
scrdef P_Route212House_Diary
scrdef_end

P_Route212House_Beauty:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route212House_Hiker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_Route212House_TryTeachMove
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_Route212House_SeeYouThen
	end

P_Route212House_TryTeachMove:
	npc_msg 2
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectMoveTutorPokemon 
	// Platino: GetSelectedPartySlot VAR_0x8000
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: CheckHasLearnableTutorMoves VAR_0x8000, TUTOR_LOCATION_ROUTE_212, VAR_RESULT
	// Platino: BufferPartyMonNickname 0, VAR_0x8000
	npc_msg 3
	// Platino: ShowMoveTutorMoveSelectionMenu VAR_0x8000, TUTOR_LOCATION_ROUTE_212, VAR_RESULT
	setvar VAR_SPECIAL_x8003, 10000
	// Platino: CheckCanAffordMove VAR_0x8003, VAR_RESULT
	// Platino: GetPartyMonMoveCount VAR_RESULT, VAR_0x8000
	setvar VAR_SPECIAL_x8002, 10000
	goto P_Route212House_TeachMove

P_Route212House_SeeYouThen:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route212House_TeachMove:
	// Platino: BufferPartyMonNickname 0, VAR_0x8000
	// Platino: BufferMoveName 1, VAR_0x8003
	npc_msg 5
	// Platino: PlayFanfare SEQ_FANFA1_sseq
	wait_fanfare
	wait 16, VAR_SPECIAL_RESULT
	goto P_Route212House_PayShards

P_Route212House_PayShards:
	// Platino: PayShardCost VAR_0x8003
	// Platino: ResetMoveSlot VAR_0x8000, VAR_0x8002, VAR_0x8003
	goto P_Route212House_SeeYouThen

P_Route212House_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route212House_Diary:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end


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


// snowpoint_city_east_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SnowpointCityEastHouse_ExpertM
scrdef P_SnowpointCityEastHouse_Hiker
scrdef_end

P_SnowpointCityEastHouse_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4196, P_SnowpointCityEastHouse_UseTrendySayings
	// Platino: CheckAllToughWordsUnlocked VAR_RESULT
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_SnowpointCityEastHouse_ComeOnNow
	// Platino: TryBufferAndUnlockRandomToughWord VAR_RESULT, 0
	compare VAR_SPECIAL_RESULT, -1
	goto_if_eq P_SnowpointCityEastHouse_AreYouUsingTrendySayings
	setflag 4196
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCityEastHouse_UseTrendySayings:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCityEastHouse_ComeOnNow:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCityEastHouse_AreYouUsingTrendySayings:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCityEastHouse_Hiker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_SnowpointCityEastHouse_TryTeachMove
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_SnowpointCityEastHouse_BeSeeingYou
	end

P_SnowpointCityEastHouse_TryTeachMove:
	npc_msg 6
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectMoveTutorPokemon 
	// Platino: GetSelectedPartySlot VAR_0x8000
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: CheckHasLearnableTutorMoves VAR_0x8000, TUTOR_LOCATION_SNOWPOINT_CITY, VAR_RESULT
	// Platino: BufferPartyMonNickname 0, VAR_0x8000
	npc_msg 7
	// Platino: ShowMoveTutorMoveSelectionMenu VAR_0x8000, TUTOR_LOCATION_SNOWPOINT_CITY, VAR_RESULT
	// Platino: CheckCanAffordMove VAR_0x8003, VAR_RESULT
	// Platino: GetPartyMonMoveCount VAR_RESULT, VAR_0x8000
	goto P_SnowpointCityEastHouse_TeachMove

P_SnowpointCityEastHouse_BeSeeingYou:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCityEastHouse_TeachMove:
	// Platino: BufferPartyMonNickname 0, VAR_0x8000
	// Platino: BufferMoveName 1, VAR_0x8003
	npc_msg 9
	// Platino: PlayFanfare SEQ_FANFA1_sseq
	wait_fanfare
	wait 16, VAR_SPECIAL_RESULT
	goto P_SnowpointCityEastHouse_PayShards

P_SnowpointCityEastHouse_PayShards:
	// Platino: PayShardCost VAR_0x8003
	// Platino: ResetMoveSlot VAR_0x8000, VAR_0x8002, VAR_0x8003
	goto P_SnowpointCityEastHouse_BeSeeingYou


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


// grand_lake_valor_lakefront_west_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_GrandLakeValorLakefrontWestHouse_GameDirector
scrdef_end

P_GrandLakeValorLakefrontWestHouse_GameDirector:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16385, P_GrandLakeValorLakefrontWestHouse_StoriesAreUnique
	// Platino: CheckLocalDexCompleted VAR_RESULT
	goto_if_unset 4456, P_GrandLakeValorLakefrontWestHouse_ShowLocalDexDiploma
	// Platino: CheckNationalDexCompleted VAR_RESULT
	goto P_GrandLakeValorLakefrontWestHouse_ShowNationalDexDiploma

P_GrandLakeValorLakefrontWestHouse_StoriesAreUnique:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GrandLakeValorLakefrontWestHouse_ShowLocalDexDiploma:
	call_if_unset 4456, P_GrandLakeValorLakefrontWestHouse_IncrementScoreLocalDexDiplomaReceived
	setflag 4456
	setflag 16385
	npc_msg 1
	// Platino: PlayFanfare SEQ_FANFA4_sseq
	wait_fanfare
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDiplomaSinnoh 
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_GrandLakeValorLakefrontWestHouse_ShowNationalDexDiploma:
	call_if_unset 4457, P_GrandLakeValorLakefrontWestHouse_IncrementScoreNationalDexDiplomaReceived
	setflag 4457
	setflag 16385
	npc_msg 2
	// Platino: PlayFanfare SEQ_FANFA4_sseq
	wait_fanfare
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDiplomaNationalDex 
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_GrandLakeValorLakefrontWestHouse_IncrementScoreLocalDexDiplomaReceived:
	// Platino: IncrementTrainerScore2 TRAINER_SCORE_EVENT_LOCAL_DEX_DIPLOMA_RECEIVED
	return

P_GrandLakeValorLakefrontWestHouse_IncrementScoreNationalDexDiplomaReceived:
	// Platino: IncrementTrainerScore2 TRAINER_SCORE_EVENT_NATIONAL_DEX_DIPLOMA_RECEIVED
	return


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


// jubilife_tv_3f_global_ranking_room: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_JubilifeTV3FGlobalRankingRoom_Fisherman
scrdef P_JubilifeTV3FGlobalRankingRoom_AceTrainerF
scrdef P_JubilifeTV3FGlobalRankingRoom_Collector
scrdef P_JubilifeTV3FGlobalRankingRoom_RecordMachinePokemon
scrdef P_JubilifeTV3FGlobalRankingRoom_RecordMachineBattles
scrdef_end

P_JubilifeTV3FGlobalRankingRoom_Fisherman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV3FGlobalRankingRoom_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV3FGlobalRankingRoom_Collector:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV3FGlobalRankingRoom_RecordMachinePokemon:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: StartRankingsMachine 0
	releaseall
	end

P_JubilifeTV3FGlobalRankingRoom_RecordMachineBattles:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: StartRankingsMachine 1
	releaseall
	end


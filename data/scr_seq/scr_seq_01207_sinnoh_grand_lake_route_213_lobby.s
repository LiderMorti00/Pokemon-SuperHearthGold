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


// grand_lake_route_213_lobby: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_GrandLakeRoute213Lobby_AceTrainerF
scrdef P_GrandLakeRoute213Lobby_Policeman
scrdef_end

P_GrandLakeRoute213Lobby_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GrandLakeRoute213Lobby_Policeman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: PlayFanfare SEQ_ASA_sseq
	wait_fanfare
	// Platino: HealParty 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end


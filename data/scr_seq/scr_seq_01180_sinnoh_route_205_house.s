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


// route_205_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route205House_PokefanF
scrdef P_Route205House_BugCatcher
scrdef_end

P_Route205House_PokefanF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_Route205House_Rest
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_Route205House_DontPushYourself
	end

P_Route205House_Rest:
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: PlayFanfare SEQ_ASA_sseq
	wait_fanfare
	// Platino: HealParty 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route205House_DontPushYourself:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route205House_BugCatcher:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


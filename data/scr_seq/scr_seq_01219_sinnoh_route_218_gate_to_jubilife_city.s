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


// route_218_gate_to_jubilife_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route218GateToJubilifeCity_Policeman
scrdef P_Route218GateToJubilifeCity_Fisherman
scrdef_end

P_Route218GateToJubilifeCity_Policeman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route218GateToJubilifeCity_Fisherman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8004, ITEM_OLD_ROD
	buffer_item_name 0, ITEM_OLD_ROD
	goto_if_set 4630, P_Route218GateToJubilifeCity_DidYouNeedTips
	npc_msg 1
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_Route218GateToJubilifeCity_AcceptOldRod
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_Route218GateToJubilifeCity_RefuseOldRod
	end

P_Route218GateToJubilifeCity_DidYouNeedTips:
	npc_msg 2
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_Route218GateToJubilifeCity_ExplainFishing
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_Route218GateToJubilifeCity_FishingTwiceTheFun
	end

P_Route218GateToJubilifeCity_AcceptOldRod:
	npc_msg 3
	setvar VAR_SPECIAL_x8005, 1
	setflag 4630
	goto P_Route218GateToJubilifeCity_DidYouNeedTips

P_Route218GateToJubilifeCity_RefuseOldRod:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route218GateToJubilifeCity_ExplainFishing:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route218GateToJubilifeCity_FishingTwiceTheFun:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end


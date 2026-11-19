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


// route_221_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route221House_ExpertM
scrdef P_Route221House_BgSign
scrdef_end

P_Route221House_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4642, P_Route221House_TryGiveReward
	goto_if_set 4643, P_Route221House_ComeAgainTomorrow
	// Platino: GetDailyRandomLevel VAR_0x8000
	// Platino: BufferNumber 0, VAR_0x8000
	goto P_Route221House_CheckPartyMonLevel

P_Route221House_TryGiveReward:
	npc_msg 0
	goto P_Route221House_GiveReward

P_Route221House_ComeAgainTomorrow:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route221House_CheckPartyMonLevel:
	// Platino: GetPartyMonLevel VAR_0x8001, VAR_0x8003
	// Platino: SubVar VAR_0x8002, 1
	goto P_Route221House_CheckPartyMonLevel

P_Route221House_NoRoomInBag:
	setflag 4642
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route221House_GiveReward:
	clearflag 4642
	setflag 4643
	goto P_Route221House_ExpertMEnd

P_Route221House_ExpertMEnd:
	closemsg
	releaseall
	end

P_Route221House_BgSign:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


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


// cafe: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Cafe_Rancher
scrdef P_Cafe_Waitress
scrdef P_Cafe_OldMan
scrdef_end

P_Cafe_Rancher:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Cafe_Waitress:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: ShowMoney 20, 2
	npc_msg 1
	goto P_Cafe_MoomooMilkMenu

P_Cafe_MoomooMilkMenu:
	// Platino: InitLocalTextMenu 30, 11, 0, VAR_RESULT
	// Platino: SetMenuXOriginToRight 
	// Platino: AddMenuEntryImm Cafe_Text_1Bottle, 0
	// Platino: AddMenuEntryImm Cafe_Text_1Dozen, 1
	// Platino: AddMenuEntryImm Cafe_Text_NoThanks, 2
	// Platino: ShowMenu 
	goto P_Cafe_AllRightThen

P_Cafe_AllRightThen:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	// Platino: HideMoney 
	releaseall
	end

P_Cafe_OldMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4185, P_Cafe_RelievedPsyduckOfHeadaches
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Cafe_RelievedPsyduckOfHeadaches:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end


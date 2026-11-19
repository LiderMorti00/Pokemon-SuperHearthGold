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


// resort_area: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef P_ResortArea_Beauty1
scrdef P_ResortArea_Beauty2
scrdef P_ResortArea_BlackBelt
scrdef P_ResortArea_AceTrainerF
scrdef P_ResortArea_SwimmerM
scrdef P_ResortArea_MapSignpost
scrdef P_ResortArea_SignboardRibbonSyndicate
scrdef P_ResortArea_SignboardVilla
scrdef scr_hidden_9
scrdef scr_hidden_10
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_NUGGET
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_9:
	goto_if_set 4730, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_NUGGET, 1, scr_hidden_9_full
	setflag 4730
	giveitem_no_check ITEM_NUGGET, 1
	closemsg
	releaseall
	end
scr_hidden_9_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_9_end:
	end

scr_hidden_10:
	goto_if_set 4703, scr_hidden_10_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_THUNDER_STONE, 1, scr_hidden_10_full
	setflag 4703
	giveitem_no_check ITEM_THUNDER_STONE, 1
	closemsg
	releaseall
	end
scr_hidden_10_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_10_end:
	end

P_ResortArea_Beauty1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ResortArea_Beauty2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ResortArea_BlackBelt:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ResortArea_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	call_if_unset 4731, P_ResortArea_LongToBecomeMember
	call_if_set 4731, P_ResortArea_YouAreAMember
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ResortArea_LongToBecomeMember:
	npc_msg 3
	return

P_ResortArea_YouAreAMember:
	npc_msg 4
	return

P_ResortArea_SwimmerM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ResortArea_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ResortArea_SignboardRibbonSyndicate:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ResortArea_SignboardVilla:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end


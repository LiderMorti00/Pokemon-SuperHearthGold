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


// eterna_forest: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_EternaForest_BugCatcher
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef P_EternaForest_MossRock
scrdef scr_item_5
scrdef scr_item_6
scrdef P_EternaForest_SignboardEternaForest
scrdef P_EternaForest_TrainerTipsSignpost
scrdef scr_hidden_9
scrdef_end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_ANTIDOTE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_NET_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_GREEN_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_5:
	setvar VAR_SPECIAL_x8008, ITEM_ETHER
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_POTION
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_9:
	goto_if_set 4215, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_INSECT_PLATE, 1, scr_hidden_9_full
	setflag 4215
	giveitem_no_check ITEM_INSECT_PLATE, 1
	closemsg
	releaseall
	end
scr_hidden_9_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_9_end:
	end

P_EternaForest_BugCatcher:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaForest_MossRock:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaForest_SignboardEternaForest:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaForest_TrainerTipsSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


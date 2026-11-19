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


// great_marsh_6: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef P_GreatMarsh6_AceTrainerM
scrdef P_GreatMarsh6_SignboardArea6
scrdef scr_hidden_3
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_RED_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_3:
	goto_if_set 4772, scr_hidden_3_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_REPEL, 1, scr_hidden_3_full
	setflag 4772
	giveitem_no_check ITEM_MAX_REPEL, 1
	closemsg
	releaseall
	end
scr_hidden_3_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_3_end:
	end

P_GreatMarsh6_AceTrainerM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4773, P_GreatMarsh6_IllTryFindingMore
	npc_msg 0
	goto P_GreatMarsh6_SetRedShard

P_GreatMarsh6_IllTryFindingMore:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GreatMarsh6_SetRedShard:
	goto P_GreatMarsh6_TryGiveShard

P_GreatMarsh6_TryGiveShard:
	setflag 4773
	closemsg
	releaseall
	end

P_GreatMarsh6_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_GreatMarsh6_SignboardArea6:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end


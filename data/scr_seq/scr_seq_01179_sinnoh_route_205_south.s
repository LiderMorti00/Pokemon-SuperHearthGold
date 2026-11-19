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


// route_205_south: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route205South_BugCatcher
scrdef P_Route205South_ArrowSignpostFloaromaTown
scrdef P_Route205South_ArrowSignpostEternaForest
scrdef P_Route205South_TrainerTipsSignpost
scrdef scr_hidden_4
scrdef_end

scr_hidden_4:
	goto_if_set 4467, scr_hidden_4_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STARDUST, 1, scr_hidden_4_full
	setflag 4467
	giveitem_no_check ITEM_STARDUST, 1
	closemsg
	releaseall
	end
scr_hidden_4_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_4_end:
	end

P_Route205South_BugCatcher:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route205South_ArrowSignpostFloaromaTown:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route205South_ArrowSignpostEternaForest:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route205South_TrainerTipsSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


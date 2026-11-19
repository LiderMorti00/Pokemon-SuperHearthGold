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


// celestic_town: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_CelesticTown_ExpertM
scrdef P_CelesticTown_NinjaBoy
scrdef P_CelesticTown_AceTrainerF
scrdef scr_item_3
scrdef P_CelesticTown_MapSignpost
scrdef P_CelesticTown_EtchingDialga
scrdef P_CelesticTown_EtchingDialga
scrdef P_CelesticTown_EtchingDialga
scrdef P_CelesticTown_EtchingPalkia
scrdef P_CelesticTown_EtchingPalkia
scrdef P_CelesticTown_EtchingPalkia
scrdef scr_hidden_11
scrdef_end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_DRAGON_FANG
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_11:
	goto_if_set 4717, scr_hidden_11_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_KINGS_ROCK, 1, scr_hidden_11_full
	setflag 4717
	giveitem_no_check ITEM_KINGS_ROCK, 1
	closemsg
	releaseall
	end
scr_hidden_11_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_11_end:
	end

P_CelesticTown_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTown_NinjaBoy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTown_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTown_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTown_EtchingDialga:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTown_EtchingPalkia:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end


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


// survival_area: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SurvivalArea_RuinManiac
scrdef P_SurvivalArea_BattleGirl
scrdef P_SurvivalArea_Youngster
scrdef P_SurvivalArea_Cameraman
scrdef scr_item_4
scrdef scr_item_5
scrdef P_SurvivalArea_MapSignpost
scrdef scr_hidden_7
scrdef P_SurvivalArea_Door
scrdef_end

scr_item_4:
	setvar VAR_SPECIAL_x8008, ITEM_RARE_CANDY
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_5:
	setvar VAR_SPECIAL_x8008, ITEM_RED_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_7:
	goto_if_set 4726, scr_hidden_7_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PP_UP, 1, scr_hidden_7_full
	setflag 4726
	giveitem_no_check ITEM_PP_UP, 1
	closemsg
	releaseall
	end
scr_hidden_7_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_7_end:
	end

P_SurvivalArea_RuinManiac:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SurvivalArea_BattleGirl:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SurvivalArea_Youngster:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SurvivalArea_Cameraman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4727, P_SurvivalArea_AllSetToProduce
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SurvivalArea_AllSetToProduce:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SurvivalArea_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SurvivalArea_Door:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end


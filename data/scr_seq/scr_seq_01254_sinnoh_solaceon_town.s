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


// solaceon_town: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SolaceonTown_Cowgirl1
scrdef P_SolaceonTown_Twin
scrdef P_SolaceonTown_Rancher1
scrdef P_SolaceonTown_Cowgirl2
scrdef P_SolaceonTown_RuinManiac
scrdef P_SolaceonTown_Rancher2
scrdef scr_item_6
scrdef scr_item_7
scrdef P_SolaceonTown_MapSignpost
scrdef P_SolaceonTown_SignboardPokemonDayCare
scrdef P_SolaceonTown_SignboardPokemonNewsPress
scrdef scr_hidden_11
scrdef_end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_PP_UP
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_7:
	setvar VAR_SPECIAL_x8008, ITEM_RARE_CANDY
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_11:
	goto_if_set 4711, scr_hidden_11_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_BIG_MUSHROOM, 1, scr_hidden_11_full
	setflag 4711
	giveitem_no_check ITEM_BIG_MUSHROOM, 1
	closemsg
	releaseall
	end
scr_hidden_11_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_11_end:
	end

P_SolaceonTown_Cowgirl1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_SolaceonTown_TakeATour

P_SolaceonTown_TakeATour:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTown_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTown_Rancher1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTown_Cowgirl2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTown_RuinManiac:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: CheckPoketchAppRegistered POKETCH_APPID_POKEMONHISTORY, VAR_RESULT
	// Platino: GetLocalDexSeenCount VAR_RESULT
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTown_Rancher2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTown_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTown_SignboardPokemonDayCare:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTown_SignboardPokemonNewsPress:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end


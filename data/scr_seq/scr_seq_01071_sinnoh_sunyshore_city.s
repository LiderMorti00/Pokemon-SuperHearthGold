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


// sunyshore_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SunyshoreCity_Sailor1
scrdef P_SunyshoreCity_PokefanF
scrdef P_SunyshoreCity_PokemonBreederF
scrdef P_SunyshoreCity_Worker
scrdef P_SunyshoreCity_Sailor2
scrdef P_SunyshoreCity_Jasmine
scrdef scr_item_6
scrdef P_SunyshoreCity_SignboardSunyshoreMarket
scrdef P_SunyshoreCity_MapSignpost
scrdef P_SunyshoreCity_GymSignpost
scrdef P_SunyshoreCity_SignboardVistaLighthouse
scrdef P_SunyshoreCity_SignboardJuliasHouse
scrdef P_SunyshoreCity_SignboardPokemonRock
scrdef P_SunyshoreCity_SignboardBlank
scrdef scr_hidden_14
scrdef scr_hidden_15
scrdef_end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_THUNDER_STONE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_14:
	goto_if_set 4187, scr_hidden_14_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_CARBOS, 1, scr_hidden_14_full
	setflag 4187
	giveitem_no_check ITEM_CARBOS, 1
	closemsg
	releaseall
	end
scr_hidden_14_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_14_end:
	end

scr_hidden_15:
	goto_if_set 4188, scr_hidden_15_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ZAP_PLATE, 1, scr_hidden_15_full
	setflag 4188
	giveitem_no_check ITEM_ZAP_PLATE, 1
	closemsg
	releaseall
	end
scr_hidden_15_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_15_end:
	end

P_SunyshoreCity_Sailor1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_PokefanF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_Worker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_Sailor2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_Jasmine:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4189, P_SunyshoreCity_ICameToGetStronger
	npc_msg 5
	goto P_SunyshoreCity_ICameToGetStronger

P_SunyshoreCity_ICameToGetStronger:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_SignboardSunyshoreMarket:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_GymSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_SignboardVistaLighthouse:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_SignboardJuliasHouse:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_SignboardPokemonRock:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCity_SignboardBlank:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end


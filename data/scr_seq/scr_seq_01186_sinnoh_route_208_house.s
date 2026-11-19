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


// route_208_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route208House_OldMan
scrdef P_Route208House_Twin
scrdef P_Route208House_PokemonBreederF
scrdef_end

P_Route208House_OldMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4491, P_Route208House_FeedBerriesToPokemon
	npc_msg 0
	setvar VAR_SPECIAL_x8005, 1
	setflag 4491
	closemsg
	releaseall
	end

P_Route208House_FeedBerriesToPokemon:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route208House_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_Route208House_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: CheckPoketchAppRegistered POKETCH_APPID_BERRYSEARCHER, VAR_RESULT
	npc_msg 2
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_Route208House_GiveBerrySearcherApp
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_Route208House_OKWithoutThis
	end

P_Route208House_GiveBerrySearcherApp:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route208House_OKWithoutThis:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route208House_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	// Platino: ShowMoney 20, 2
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_RESULT
	AddMultiOption 6, 0
	AddMultiOption 7, 1
	AddMultiOption 8, 2
	AddMultiOption 9, 3
	AddMultiOption 10, 4
	ShowMulti
	copyvar VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_Route208House_TryBuyGrowthMulch
	compare VAR_SPECIAL_x8008, 1
	goto_if_eq P_Route208House_TryBuyDampMulch
	compare VAR_SPECIAL_x8008, 2
	goto_if_eq P_Route208House_TryBuyStableMulch
	compare VAR_SPECIAL_x8008, 3
	goto_if_eq P_Route208House_TryBuyGooeyMulch
	npc_msg 11
	goto P_Route208House_PokemonBreederFEnd

P_Route208House_TryBuyGrowthMulch:
	setvar VAR_SPECIAL_x8001, ITEM_GROWTH_MULCH
	goto P_Route208House_TryBuyMulch

P_Route208House_TryBuyDampMulch:
	setvar VAR_SPECIAL_x8001, ITEM_DAMP_MULCH
	goto P_Route208House_TryBuyMulch

P_Route208House_TryBuyStableMulch:
	setvar VAR_SPECIAL_x8001, ITEM_STABLE_MULCH
	goto P_Route208House_TryBuyMulch

P_Route208House_TryBuyGooeyMulch:
	setvar VAR_SPECIAL_x8001, ITEM_GOOEY_MULCH
	goto P_Route208House_TryBuyMulch

P_Route208House_PokemonBreederFEnd:
	wait_button_or_walk_away
	closemsg
	// Platino: HideMoney 
	releaseall
	end

P_Route208House_TryBuyMulch:
	// Platino: UpdateMoneyDisplay 
	npc_msg 12
	npc_msg 13
	goto P_Route208House_PokemonBreederFEnd

P_Route208House_YourBagAppearsToBeFull:
	npc_msg 14
	goto P_Route208House_PokemonBreederFEnd


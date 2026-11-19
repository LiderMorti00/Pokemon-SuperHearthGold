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
	// Platino: InitGlobalTextMenu 1, 1, 0, VAR_RESULT
	// Platino: AddMenuEntryImm MenuEntries_Text_MulchShop_GrowthMulch, 0
	// Platino: AddMenuEntryImm MenuEntries_Text_MulchShop_DampMulch, 1
	// Platino: AddMenuEntryImm MenuEntries_Text_MulchShop_StableMulch, 2
	// Platino: AddMenuEntryImm MenuEntries_Text_MulchShop_GooeyMulch, 3
	// Platino: AddMenuEntryImm MenuEntries_Text_MulchShop_Exit, 4
	// Platino: ShowMenu 
	npc_msg 6
	goto P_Route208House_PokemonBreederFEnd

P_Route208House_PokemonBreederFEnd:
	wait_button_or_walk_away
	closemsg
	// Platino: HideMoney 
	releaseall
	end


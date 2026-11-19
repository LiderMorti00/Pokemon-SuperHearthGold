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


// eterna_forest_outside: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef P_EternaForestOutside_PokemonBreederF
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_TM082
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_SILVER_POWDER
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

P_EternaForestOutside_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4209, P_EternaForestOutside_ITradeBerriesForAccessories
	// Platino: BufferAccessoryName 0, VAR_0x8004
	npc_msg 0
	setvar VAR_SPECIAL_x8005, 1
	setflag 4209
	closemsg
	releaseall
	end

P_EternaForestOutside_ITradeBerriesForAccessories:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end


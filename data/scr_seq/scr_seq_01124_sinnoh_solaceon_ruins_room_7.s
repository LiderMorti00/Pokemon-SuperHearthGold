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


// solaceon_ruins_room_7: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_item_3
scrdef P_SolaceonRuinsRoom7_Inscription
scrdef P_SolaceonRuinsRoom7_Inscription
scrdef P_SolaceonRuinsRoom7_Inscription
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_MIND_PLATE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_ODD_INCENSE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_NUGGET
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_HM05
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

P_SolaceonRuinsRoom7_Inscription:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: MessageUnown SolaceonRuinsRoom7_Text_AllLivesTouchOtherLives
	wait_button_or_walk_away
	closemsg
	releaseall
	end


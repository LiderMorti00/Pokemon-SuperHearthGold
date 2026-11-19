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


// old_chateau_dining_area: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_hidden_2
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_RARE_CANDY
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_BIG_PEARL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_2:
	goto_if_set 4421, scr_hidden_2_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HONEY, 3, scr_hidden_2_full
	setflag 4421
	giveitem_no_check ITEM_HONEY, 3
	closemsg
	releaseall
	end
scr_hidden_2_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_2_end:
	end


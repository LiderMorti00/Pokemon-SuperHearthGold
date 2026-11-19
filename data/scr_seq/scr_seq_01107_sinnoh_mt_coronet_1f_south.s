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


// mt_coronet_1f_south: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_hidden_2
scrdef scr_hidden_3
scrdef scr_hidden_4
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_PROTEIN
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_DAWN_STONE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_2:
	goto_if_set 4232, scr_hidden_2_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STARDUST, 1, scr_hidden_2_full
	setflag 4232
	giveitem_no_check ITEM_STARDUST, 1
	closemsg
	releaseall
	end
scr_hidden_2_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_2_end:
	end

scr_hidden_3:
	goto_if_set 4233, scr_hidden_3_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ENERGY_POWDER, 1, scr_hidden_3_full
	setflag 4233
	giveitem_no_check ITEM_ENERGY_POWDER, 1
	closemsg
	releaseall
	end
scr_hidden_3_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_3_end:
	end

scr_hidden_4:
	goto_if_set 4234, scr_hidden_4_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_REVIVE, 1, scr_hidden_4_full
	setflag 4234
	giveitem_no_check ITEM_REVIVE, 1
	closemsg
	releaseall
	end
scr_hidden_4_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_4_end:
	end


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


// galactic_hq_3f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef scr_item_2
scrdef scr_hidden_3
scrdef scr_hidden_4
scrdef scr_hidden_5
scrdef P_GalacticHQ3F_BgSign
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_TM021
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_MAX_ELIXIR
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_PROTEIN
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_3:
	goto_if_set 4438, scr_hidden_3_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ELIXIR, 1, scr_hidden_3_full
	setflag 4438
	giveitem_no_check ITEM_ELIXIR, 1
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
	goto_if_set 4439, scr_hidden_4_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_RARE_CANDY, 1, scr_hidden_4_full
	setflag 4439
	giveitem_no_check ITEM_RARE_CANDY, 1
	closemsg
	releaseall
	end
scr_hidden_4_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_4_end:
	end

scr_hidden_5:
	goto_if_set 4440, scr_hidden_5_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_NUGGET, 1, scr_hidden_5_full
	setflag 4440
	giveitem_no_check ITEM_NUGGET, 1
	closemsg
	releaseall
	end
scr_hidden_5_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_5_end:
	end

P_GalacticHQ3F_BgSign:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end


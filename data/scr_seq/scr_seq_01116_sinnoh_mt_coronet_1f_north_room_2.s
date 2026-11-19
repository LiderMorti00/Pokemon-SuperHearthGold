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


// mt_coronet_1f_north_room_2: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_hidden_0
scrdef_end

scr_hidden_0:
	goto_if_set 4272, scr_hidden_0_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_YELLOW_SHARD, 1, scr_hidden_0_full
	setflag 4272
	giveitem_no_check ITEM_YELLOW_SHARD, 1
	closemsg
	releaseall
	end
scr_hidden_0_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_0_end:
	end


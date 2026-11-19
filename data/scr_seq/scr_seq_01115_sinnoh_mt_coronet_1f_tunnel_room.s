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


// mt_coronet_1f_tunnel_room: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_hidden_0
scrdef scr_hidden_1
scrdef scr_hidden_2
scrdef scr_hidden_3
scrdef scr_hidden_4
scrdef scr_hidden_5
scrdef_end

scr_hidden_0:
	goto_if_set 4266, scr_hidden_0_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_GREEN_SHARD, 1, scr_hidden_0_full
	setflag 4266
	giveitem_no_check ITEM_GREEN_SHARD, 1
	closemsg
	releaseall
	end
scr_hidden_0_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_0_end:
	end

scr_hidden_1:
	goto_if_set 4267, scr_hidden_1_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STARDUST, 1, scr_hidden_1_full
	setflag 4267
	giveitem_no_check ITEM_STARDUST, 1
	closemsg
	releaseall
	end
scr_hidden_1_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_1_end:
	end

scr_hidden_2:
	goto_if_set 4268, scr_hidden_2_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HEAL_POWDER, 1, scr_hidden_2_full
	setflag 4268
	giveitem_no_check ITEM_HEAL_POWDER, 1
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
	goto_if_set 4269, scr_hidden_3_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_POTION, 1, scr_hidden_3_full
	setflag 4269
	giveitem_no_check ITEM_MAX_POTION, 1
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
	goto_if_set 4270, scr_hidden_4_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_RARE_CANDY, 1, scr_hidden_4_full
	setflag 4270
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
	goto_if_set 4271, scr_hidden_5_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_GREEN_SHARD, 1, scr_hidden_5_full
	setflag 4271
	giveitem_no_check ITEM_GREEN_SHARD, 1
	closemsg
	releaseall
	end
scr_hidden_5_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_5_end:
	end


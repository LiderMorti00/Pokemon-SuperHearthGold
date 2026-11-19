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


// grand_lake_route_213_northeast_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_GrandLakeRoute213NortheastHouse_RichBoy
scrdef P_GrandLakeRoute213NortheastHouse_Lady
scrdef scr_hidden_2
scrdef_end

scr_hidden_2:
	goto_if_set 4584, scr_hidden_2_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_REVIVE, 1, scr_hidden_2_full
	setflag 4584
	giveitem_no_check ITEM_MAX_REVIVE, 1
	closemsg
	releaseall
	end
scr_hidden_2_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_2_end:
	end

P_GrandLakeRoute213NortheastHouse_RichBoy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: CheckPoketchAppRegistered POKETCH_APPID_COINTOSS, VAR_RESULT
	goto P_GrandLakeRoute213NortheastHouse_CoinTossForDecisions

P_GrandLakeRoute213NortheastHouse_CoinTossForDecisions:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GrandLakeRoute213NortheastHouse_Lady:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: CheckPoketchAppRegistered POKETCH_APPID_COINTOSS, VAR_RESULT
	goto P_GrandLakeRoute213NortheastHouse_WantedJustUsTwo

P_GrandLakeRoute213NortheastHouse_WantedJustUsTwo:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end


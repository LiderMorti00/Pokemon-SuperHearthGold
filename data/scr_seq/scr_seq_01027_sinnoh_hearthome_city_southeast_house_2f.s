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


// hearthome_city_southeast_house_2f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_HearthomeCitySoutheastHouse2F_AceTrainerF
scrdef P_HearthomeCitySoutheastHouse2F_Clefairy
scrdef_end

P_HearthomeCitySoutheastHouse2F_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4152, P_HearthomeCitySoutheastHouse2F_ExplainShellBell
	buffer_item_name 0, ITEM_SHELL_BELL
	npc_msg 0
	goto_if_no_item_space ITEM_SHELL_BELL, 1, P_HearthomeCitySoutheastHouse2F_BagIsFull
	setflag 4152
	giveitem_no_check ITEM_SHELL_BELL, 1
	closemsg
	releaseall
	end

P_HearthomeCitySoutheastHouse2F_ExplainShellBell:
	buffer_item_name 0, ITEM_SHELL_BELL
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCitySoutheastHouse2F_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_HearthomeCitySoutheastHouse2F_Clefairy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_CLEFAIRY, 0
	npc_msg 2
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end


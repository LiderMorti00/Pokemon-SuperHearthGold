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


// grand_lake_route_213_northwest_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_GrandLakeRoute213NorthwestHouse_Clown
scrdef P_GrandLakeRoute213NorthwestHouse_Psychic
scrdef P_GrandLakeRoute213NorthwestHouse_Guitarist
scrdef_end

P_GrandLakeRoute213NorthwestHouse_Clown:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4582, P_GrandLakeRoute213NorthwestHouse_ExplainTrickRoom
	npc_msg 0
	setvar VAR_SPECIAL_x8004, ITEM_TM092
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_TM092, 1, P_GrandLakeRoute213NorthwestHouse_BagIsFull
	giveitem_no_check ITEM_TM092, 1
	setflag 4582
	goto P_GrandLakeRoute213NorthwestHouse_ExplainTrickRoom

P_GrandLakeRoute213NorthwestHouse_ExplainTrickRoom:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GrandLakeRoute213NorthwestHouse_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_GrandLakeRoute213NorthwestHouse_Psychic:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4583, P_GrandLakeRoute213NorthwestHouse_GazedIntoManyEyes
	setflag 4583
	npc_msg 2
	// Platino: GoToIfInRange VAR_RESULT, 0, 3, GrandLakeRoute213NorthwestHouse_MagicalEncounter
	// Platino: GoToIfInRange VAR_RESULT, 4, 6, GrandLakeRoute213NorthwestHouse_BriefJoy
	// Platino: GoToIfInRange VAR_RESULT, 7, 8, GrandLakeRoute213NorthwestHouse_UnseeableAccident
	goto P_GrandLakeRoute213NorthwestHouse_DestinyShallShift

P_GrandLakeRoute213NorthwestHouse_GazedIntoManyEyes:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GrandLakeRoute213NorthwestHouse_DestinyShallShift:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GrandLakeRoute213NorthwestHouse_Guitarist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end


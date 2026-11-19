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


// celestic_town_northwest_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_CelesticTownNorthwestHouse_ExpertM
scrdef P_CelesticTownNorthwestHouse_ExpertF
scrdef P_CelesticTownNorthwestHouse_GymGuide
scrdef_end

P_CelesticTownNorthwestHouse_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 0
	callstd std_pokemart
	releaseall
	end

P_CelesticTownNorthwestHouse_ExpertF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 0
	callstd std_pokemart
	releaseall
	end

P_CelesticTownNorthwestHouse_GymGuide:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	goto P_CelesticTownNorthwestHouse_TryGiveWiseGlasses

P_CelesticTownNorthwestHouse_TryGiveWiseGlasses:
	goto_if_set 4719, P_CelesticTownNorthwestHouse_ExplainWiseGlasses
	npc_msg 1
	setvar VAR_SPECIAL_x8004, ITEM_WISE_GLASSES
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_WISE_GLASSES, 1, P_CelesticTownNorthwestHouse_BagIsFull
	giveitem_no_check ITEM_WISE_GLASSES, 1
	setflag 4719
	npc_msg 2
	goto P_CelesticTownNorthwestHouse_ExplainWiseGlasses

P_CelesticTownNorthwestHouse_ExplainWiseGlasses:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTownNorthwestHouse_BagIsFull:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end


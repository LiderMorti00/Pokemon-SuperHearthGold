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


// oreburgh_city_northwest_house_2f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_OreburghCityNorthwestHouse2F_Worker
scrdef P_OreburghCityNorthwestHouse2F_SchoolKidF
scrdef P_OreburghCityNorthwestHouse2F_Lass
scrdef P_OreburghCityNorthwestHouse2F_Psyduck
scrdef_end

P_OreburghCityNorthwestHouse2F_Worker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityNorthwestHouse2F_SchoolKidF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityNorthwestHouse2F_Lass:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4120, P_OreburghCityNorthwestHouse2F_DuskBallIsDesignedForDarkness
	buffer_item_name 0, ITEM_DUSK_BALL
	npc_msg 2
	setvar VAR_SPECIAL_x8004, ITEM_DUSK_BALL
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_DUSK_BALL, 1, P_OreburghCityNorthwestHouse2F_BagIsFull
	setflag 4120
	giveitem_no_check ITEM_DUSK_BALL, 1
	closemsg
	releaseall
	end

P_OreburghCityNorthwestHouse2F_DuskBallIsDesignedForDarkness:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityNorthwestHouse2F_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_OreburghCityNorthwestHouse2F_Psyduck:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_PSYDUCK, 0
	npc_msg 4
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end


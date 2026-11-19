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


// oreburgh_city_east_house_2f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_OreburghCityEastHouse2F_Youngster
scrdef P_OreburghCityEastHouse2F_Gentleman
scrdef P_OreburghCityEastHouse2F_ScientistM
scrdef_end

P_OreburghCityEastHouse2F_Youngster:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4124, P_OreburghCityEastHouse2F_IThinkAboutBestPokeBalls
	npc_msg 0
	setvar VAR_SPECIAL_x8004, ITEM_GREAT_BALL
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_GREAT_BALL, 1, P_OreburghCityEastHouse2F_BagIsFull
	giveitem_no_check ITEM_GREAT_BALL, 1
	setflag 4124
	goto P_OreburghCityEastHouse2F_IThinkAboutBestPokeBalls

P_OreburghCityEastHouse2F_IThinkAboutBestPokeBalls:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityEastHouse2F_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_OreburghCityEastHouse2F_Gentleman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityEastHouse2F_ScientistM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


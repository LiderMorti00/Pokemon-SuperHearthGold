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


// floaroma_town_middle_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_FloaromaTownMiddleHouse_PokemonBreederF
scrdef P_FloaromaTownMiddleHouse_Twin
scrdef P_FloaromaTownMiddleHouse_Clefairy
scrdef_end

P_FloaromaTownMiddleHouse_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FloaromaTownMiddleHouse_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4708, P_FloaromaTownMiddleHouse_UsingPluckEatsBerry
	npc_msg 1
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_FloaromaTownMiddleHouse_HeresTMForPluck
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_FloaromaTownMiddleHouse_IJustLikeWeirdThings
	end

P_FloaromaTownMiddleHouse_UsingPluckEatsBerry:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FloaromaTownMiddleHouse_HeresTMForPluck:
	npc_msg 3
	setvar VAR_SPECIAL_x8004, ITEM_TM088
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_TM088, 1, P_FloaromaTownMiddleHouse_BagIsFull
	setflag 4708
	giveitem_no_check ITEM_TM088, 1
	closemsg
	releaseall
	end

P_FloaromaTownMiddleHouse_IJustLikeWeirdThings:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FloaromaTownMiddleHouse_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_FloaromaTownMiddleHouse_Clefairy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_CLEFAIRY, 0
	npc_msg 5
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end


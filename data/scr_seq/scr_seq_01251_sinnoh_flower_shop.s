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


// flower_shop: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_FlowerShop_Beauty
scrdef P_FlowerShop_Lass
scrdef P_FlowerShop_PokemonBreederF
scrdef_end

P_FlowerShop_Beauty:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: ShowAccessoryShop 
	releaseall
	end

P_FlowerShop_Lass:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4706, P_FlowerShop_UseSprayduckToWaterSoil
	npc_msg 0
	setvar VAR_SPECIAL_x8004, ITEM_SPRAYDUCK
	setvar VAR_SPECIAL_x8005, 1
	setflag 4706
	giveitem_no_check ITEM_SPRAYDUCK, 1
	closemsg
	releaseall
	end

P_FlowerShop_UseSprayduckToWaterSoil:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FlowerShop_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4707, P_FlowerShop_PlantBerryInSoil
	npc_msg 2
	// Platino: AddVar VAR_0x8004, ITEM_CHERI_BERRY /* Cheri, Chesto, Pecha, Rawst or Aspear */
	setvar VAR_SPECIAL_x8005, 1
	setflag 4707
	closemsg
	releaseall
	end

P_FlowerShop_PlantBerryInSoil:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FlowerShop_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end


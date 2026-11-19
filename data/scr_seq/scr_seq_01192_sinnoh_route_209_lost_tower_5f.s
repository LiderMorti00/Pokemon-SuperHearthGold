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


// route_209_lost_tower_5f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route209LostTower5F_OldWoman1
scrdef P_Route209LostTower5F_OldWoman2
scrdef_end

P_Route209LostTower5F_OldWoman1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4508, P_Route209LostTower5F_FantinaIsARegularVisitor
	npc_msg 0
	setvar VAR_SPECIAL_x8004, ITEM_SPELL_TAG
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_SPELL_TAG, 1, P_Route209LostTower5F_BagIsFull
	giveitem_no_check ITEM_SPELL_TAG, 1
	setflag 4508
	goto P_Route209LostTower5F_FantinaIsARegularVisitor

P_Route209LostTower5F_ThisFogObscuresEverything:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route209LostTower5F_FantinaIsARegularVisitor:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route209LostTower5F_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_Route209LostTower5F_OldWoman2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4509, P_Route209LostTower5F_PokemonFindSolaceHere
	npc_msg 3
	setvar VAR_SPECIAL_x8004, ITEM_CLEANSE_TAG
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_CLEANSE_TAG, 1, P_Route209LostTower5F_BagIsFull
	giveitem_no_check ITEM_CLEANSE_TAG, 1
	setflag 4509
	goto P_Route209LostTower5F_PokemonFindSolaceHere

P_Route209LostTower5F_ThisFogObscuresEverything2:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route209LostTower5F_PokemonFindSolaceHere:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end


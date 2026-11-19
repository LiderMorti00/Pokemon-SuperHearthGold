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


// snowpoint_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SnowpointCity_AceTrainerSnowF
scrdef P_SnowpointCity_SnowpointNPCM
scrdef P_SnowpointCity_SnowpointNPCF1
scrdef P_SnowpointCity_Sailor
scrdef P_SnowpointCity_TempleGuard
scrdef P_SnowpointCity_SnowpointNPCF2
scrdef scr_item_6
scrdef P_SnowpointCity_MapSignpost
scrdef P_SnowpointCity_GymSignpost
scrdef scr_hidden_9
scrdef_end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_9:
	goto_if_set 4194, scr_hidden_9_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_RARE_CANDY, 1, scr_hidden_9_full
	setflag 4194
	giveitem_no_check ITEM_RARE_CANDY, 1
	closemsg
	releaseall
	end
scr_hidden_9_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_9_end:
	end

P_SnowpointCity_AceTrainerSnowF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCity_SnowpointNPCM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_SnowpointCity_PokemonDraggedCityHere

P_SnowpointCity_PokemonDraggedCityHere:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCity_SnowpointNPCF1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCity_Sailor:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCity_TempleGuard:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: GetNationalDexEnabled VAR_RESULT
	goto P_SnowpointCity_MayNotEnterTemple

P_SnowpointCity_MayNotEnterTemple:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCity_SnowpointNPCF2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCity_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCity_GymSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end


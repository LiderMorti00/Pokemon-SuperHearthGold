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


// pastoria_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef P_PastoriaCity_Picnicker
scrdef P_PastoriaCity_BlackBelt
scrdef P_PastoriaCity_Clefairy
scrdef P_PastoriaCity_AceTrainerM1
scrdef P_PastoriaCity_Collector1
scrdef P_PastoriaCity_ScientistM
scrdef P_PastoriaCity_Beauty
scrdef P_PastoriaCity_ParasolLady
scrdef P_PastoriaCity_Collector2
scrdef P_PastoriaCity_AceTrainerM2
scrdef P_PastoriaCity_MapSignpost
scrdef P_PastoriaCity_GymSignpost
scrdef P_PastoriaCity_SignboardGreatMarsh
scrdef P_PastoriaCity_SignboardSafariGame
scrdef scr_hidden_15
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_MYSTIC_WATER
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_15:
	goto_if_set 4157, scr_hidden_15_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ZINC, 1, scr_hidden_15_full
	setflag 4157
	giveitem_no_check ITEM_ZINC, 1
	closemsg
	releaseall
	end
scr_hidden_15_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_15_end:
	end

P_PastoriaCity_Picnicker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_BlackBelt:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_PastoriaCity_GymLeaderWrestles

P_PastoriaCity_GymLeaderWrestles:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_Clefairy:
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

P_PastoriaCity_AceTrainerM1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_Collector1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_ScientistM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_Beauty:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_ParasolLady:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4158, P_PastoriaCity_ICookedPoffins
	// Platino: GetPlayerStarterSpecies VAR_RESULT
	// Platino: BufferAccessoryName 0, VAR_0x8004
	npc_msg 7
	setvar VAR_SPECIAL_x8005, 1
	setflag 4158
	closemsg
	releaseall
	end

P_PastoriaCity_ICookedPoffins:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_Collector2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_AceTrainerM2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_GymSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_SignboardGreatMarsh:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCity_SignboardSafariGame:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end


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


// oreburgh_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_OreburghCity_Hiker
scrdef P_OreburghCity_SchoolKidF
scrdef P_OreburghCity_PokefanF
scrdef P_OreburghCity_Youngster
scrdef P_OreburghCity_Worker1
scrdef P_OreburghCity_Worker2
scrdef P_OreburghCity_Camper
scrdef P_OreburghCity_Worker3
scrdef P_OreburghCity_Worker4
scrdef P_OreburghCity_Guitarist
scrdef P_OreburghCity_BattleGirl1
scrdef P_OreburghCity_Machop1
scrdef scr_item_12
scrdef scr_item_13
scrdef P_OreburghCity_Machop3
scrdef P_OreburghCity_Machop2
scrdef P_OreburghCity_BattleGirl2
scrdef P_OreburghCity_MapSignpost
scrdef P_OreburghCity_GymSignpost
scrdef P_OreburghCity_SignboardOreburghMiningMuseum
scrdef P_OreburghCity_SignboardOreburghMine
scrdef P_OreburghCity_MapSignpost
scrdef P_OreburghCity_CoordEvent_Youngster
scrdef scr_hidden_23
scrdef scr_hidden_24
scrdef_end

scr_item_12:
	setvar VAR_SPECIAL_x8008, ITEM_DIRE_HIT
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_13:
	setvar VAR_SPECIAL_x8008, ITEM_YELLOW_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_23:
	goto_if_set 4115, scr_hidden_23_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PEARL, 1, scr_hidden_23_full
	setflag 4115
	giveitem_no_check ITEM_PEARL, 1
	closemsg
	releaseall
	end
scr_hidden_23_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_23_end:
	end

scr_hidden_24:
	goto_if_set 4116, scr_hidden_24_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_HEART_SCALE, 1, scr_hidden_24_full
	setflag 4116
	giveitem_no_check ITEM_HEART_SCALE, 1
	closemsg
	releaseall
	end
scr_hidden_24_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_24_end:
	end

P_OreburghCity_Hiker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_SchoolKidF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4117, P_OreburghCity_GymLeaderIsSafetySupervisor
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_GymLeaderIsSafetySupervisor:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_PokefanF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_Youngster:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_OreburghCity_CanISeeYourTrainerCase

P_OreburghCity_CanISeeYourTrainerCase:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_Worker1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_Worker2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4118, P_OreburghCity_PutsASmileOnMyFace
	npc_msg 6
	setvar VAR_SPECIAL_x8004, ITEM_SUPER_POTION
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_SUPER_POTION, 1, P_OreburghCity_BagIsFull
	giveitem_no_check ITEM_SUPER_POTION, 1
	setflag 4118
	goto P_OreburghCity_PutsASmileOnMyFace

P_OreburghCity_PutsASmileOnMyFace:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_OreburghCity_Camper:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_Worker3:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_Worker4:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_Guitarist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_BattleGirl1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_Machop1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_MACHOP, 0
	npc_msg 13
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_Machop3:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_MACHOP, 0
	npc_msg 14
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_Machop2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_MACHOP, 0
	npc_msg 15
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_BattleGirl2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_GymSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_SignboardOreburghMiningMuseum:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_SignboardOreburghMine:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCity_CoordEvent_Youngster:
	lockall
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	goto P_OreburghCity_YoungsterWalkToPlayerZ751

P_OreburghCity_YoungsterWalkToPlayerZ751:
	// Platino: ApplyMovement LOCALID_PLAYER, OreburghCity_Movement_PlayerWalkOnSpotSouth
	// Platino: ApplyMovement LOCALID_YOUNGSTER, OreburghCity_Movement_YoungsterWalkToPlayerZ751
	// Platino: WaitMovement 
	goto P_OreburghCity_IllTakeYouToTheGym

P_OreburghCity_IllTakeYouToTheGym:
	npc_msg 21
	closemsg
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	end


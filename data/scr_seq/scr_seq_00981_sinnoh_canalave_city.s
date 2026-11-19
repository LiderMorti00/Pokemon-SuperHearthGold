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


// canalave_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_seq_shg_canalave_sailor
scrdef P_CanalaveCity_Collector
scrdef P_CanalaveCity_Lass
scrdef P_CanalaveCity_PokemonBreederM
scrdef P_CanalaveCity_AceTrainerF
scrdef P_CanalaveCity_Psyduck
scrdef P_CanalaveCity_OldMan
scrdef scr_item_7
scrdef P_CanalaveCity_SailorEldritch
scrdef P_CanalaveCity_SignboardCanalaveLibrary
scrdef P_CanalaveCity_GymSignpost
scrdef P_CanalaveCity_SignboardCanalaveDock
scrdef P_CanalaveCity_MapSignpost
scrdef P_CanalaveCity_SignboardSailorEldritchsHouse
scrdef P_CanalaveCity_SignboardHarborInn
scrdef P_CanalaveCity_Door
scrdef scr_hidden_16
scrdef_end

scr_item_7:
	setvar VAR_SPECIAL_x8008, ITEM_TM089
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_16:
	goto_if_set 4107, scr_hidden_16_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_BIG_PEARL, 1, scr_hidden_16_full
	setflag 4107
	giveitem_no_check ITEM_BIG_PEARL, 1
	closemsg
	releaseall
	end
scr_hidden_16_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_16_end:
	end

P_CanalaveCity_Collector:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4108, P_CanalaveCity_TremorWasNoQuake
	npc_msg 0
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_TremorWasNoQuake:
	npc_msg 1
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_NPCEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCity_Lass:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4108, P_CanalaveCity_CouldntForetellTremor
	npc_msg 2
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_CouldntForetellTremor:
	npc_msg 3
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_PokemonBreederM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4108, P_CanalaveCity_WhatWasThatTremor
	goto P_CanalaveCity_ImpatientBoyAtLibrary

P_CanalaveCity_WhatWasThatTremor:
	npc_msg 4
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_ImpatientBoyAtLibrary:
	goto P_CanalaveCity_WelcomeToCanalCity

P_CanalaveCity_WelcomeToCanalCity:
	npc_msg 5
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4108, P_CanalaveCity_ExplosionAtLakeValor
	npc_msg 6
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_ExplosionAtLakeValor:
	npc_msg 7
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_Psyduck:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4108, P_CanalaveCity_PsyduckCryGuaagwa
	play_cry SPECIES_PSYDUCK, 0
	npc_msg 8
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_PsyduckCryGuaagwa:
	play_cry SPECIES_PSYDUCK, 0
	npc_msg 9
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_OldMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4108, P_CanalaveCity_WhatCouldExplode
	npc_msg 10
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_WhatCouldExplode:
	npc_msg 11
	goto P_CanalaveCity_NPCEnd

P_CanalaveCity_SailorEldritch:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	faceplayer
	npc_msg 12
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_RESULT
	AddMultiOption 13, 0
	call_if_set 4109, P_CanalaveCity_AddMenuEntryFullmoonIsland
	call_if_set 4110, P_CanalaveCity_AddMenuEntryNewmoonIsland
	AddMultiOption 14, 4
	ShowMulti
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_CanalaveCity_TakeShipToIronIsland
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveCity_TakeShipToFullmoonIsland
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq P_CanalaveCity_TakeShipToNewmoonIsland
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq P_CanalaveCity_DontTakeShip
	goto P_CanalaveCity_DontTakeShip

P_CanalaveCity_AddMenuEntryFullmoonIsland:
	AddMultiOption 15, 1
	return

P_CanalaveCity_AddMenuEntryNewmoonIsland:
	AddMultiOption 16, 2
	return

P_CanalaveCity_TakeShipToIronIsland:
	call P_CanalaveCity_SailorEldritchEnterShip
	// Platino: TakeShipFromCanalave DIR_EAST, MAP_HEADER_IRON_ISLAND, 100, 502
	releaseall
	end

P_CanalaveCity_TakeShipToFullmoonIsland:
	call P_CanalaveCity_SailorEldritchEnterShip
	// Platino: TakeShipFromCanalave DIR_WEST, MAP_HEADER_FULLMOON_ISLAND, 39, 277
	releaseall
	end

P_CanalaveCity_TakeShipToNewmoonIsland:
	call P_CanalaveCity_SailorEldritchEnterShip
	// Platino: TakeShipFromCanalave DIR_EAST, MAP_HEADER_NEWMOON_ISLAND, 152, 277
	releaseall
	end

P_CanalaveCity_DontTakeShip:
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCity_SailorEldritchEnterShip:
	npc_msg 18
	closemsg
	// Platino: ApplyMovement LOCALID_SAILOR_ELDRITCH, CanalaveCity_Movement_SailorEldritchFaceEast
	// Platino: WaitMovement 
	// Platino: ApplyMovement LOCALID_SAILOR_ELDRITCH, CanalaveCity_Movement_SetInvisible
	// Platino: WaitMovement 
	return

P_CanalaveCity_SignboardCanalaveLibrary:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCity_GymSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCity_SignboardCanalaveDock:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCity_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCity_SignboardSailorEldritchsHouse:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCity_SignboardHarborInn:
	call P_CanalaveCity_CheckDoDarkraiEvent
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCity_CheckDoDarkraiEvent:
	goto_if_set 4111, P_CanalaveCity_SetMapLocalFalse
	// Platino: GetNationalDexEnabled VAR_MAP_LOCAL_0x00
	goto P_CanalaveCity_SetMapLocalFalse

P_CanalaveCity_SetMapLocalFalse:
	return

P_CanalaveCity_Door:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_canalave.inc"

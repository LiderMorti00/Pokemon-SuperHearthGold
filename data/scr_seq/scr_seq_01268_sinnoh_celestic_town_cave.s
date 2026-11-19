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


// celestic_town_cave: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_CelesticTownCave_Painting
scrdef P_CelesticTownCave_Painting
scrdef_end

P_CelesticTownCave_Painting:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 4720, P_CelesticTownCave_PaintingCynthia
	goto P_CelesticTownCave_ExaminePainting

P_CelesticTownCave_PaintingCynthia:
	goto_if_set 4721, P_CelesticTownCave_ExaminePainting
	setflag 4721
	// Platino: SetObjectEventPos LOCALID_CYNTHIA, 4, 11
	// Platino: AddObject LOCALID_CYNTHIA
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	npc_msg 0
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	npc_msg 1
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CelesticTownCave_IGotCarriedAway
	closemsg
	// Platino: ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaWalkOnSpotNorth
	// Platino: ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerDelayWalkOnSpotNorth
	// Platino: WaitMovement 
	wait 15, VAR_SPECIAL_RESULT
	npc_msg 2
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CelesticTownCave_IGotCarriedAway
	npc_msg 3
	closemsg
	// Platino: ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWatchCynthiaWalkSouth
	// Platino: ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaWalkSouth
	// Platino: WaitMovement 
	npc_msg 4
	closemsg
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	npc_msg 5
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CelesticTownCave_IGotCarriedAway
	npc_msg 6
	goto P_CelesticTownCave_CynthiaLeave

P_CelesticTownCave_ExaminePainting:
	goto_if_unset 4722, P_CelesticTownCave_EnterCyrus
	buffer_players_name 0
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTownCave_IGotCarriedAway:
	npc_msg 8
	goto P_CelesticTownCave_CynthiaLeave

P_CelesticTownCave_CynthiaLeave:
	closemsg
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	releaseall
	end

P_CelesticTownCave_EnterCyrus:
	buffer_players_name 0
	npc_msg 9
	closemsg
	setflag 4722
	// Platino: SetObjectEventPos LOCALID_ELDER, 4, 11
	// Platino: SetObjectEventDir LOCALID_ELDER, DIR_NORTH
	// Platino: SetObjectEventMovementType LOCALID_ELDER, MOVEMENT_TYPE_LOOK_NORTH
	// Platino: AddObject LOCALID_ELDER
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	npc_msg 10
	npc_msg 11
	closemsg
	// Platino: ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWalkOnSpotSouth
	// Platino: ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkOnSpotSouth
	// Platino: WaitMovement 
	npc_msg 12
	closemsg
	// Platino: SetObjectEventPos LOCALID_CYRUS, 4, 11
	// Platino: SetObjectEventDir LOCALID_CYRUS, DIR_NORTH
	// Platino: SetObjectEventMovementType LOCALID_CYRUS, MOVEMENT_TYPE_LOOK_NORTH
	// Platino: AddObject LOCALID_CYRUS
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	npc_msg 13
	npc_msg 14
	npc_msg 15
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_CelesticTownCave_BattleCyrus
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CelesticTownCave_DontBattleNow
	end

P_CelesticTownCave_BattleCyrus:
	npc_msg 16
	closemsg
	// Platino: StartTrainerBattle TRAINER_GALACTIC_BOSS_CYRUS_CELESTIC_TOWN_RUINS
	call P_CelesticTownCave_DefeatedCyrus
	releaseall
	end

P_CelesticTownCave_DontBattleNow:
	npc_msg 17
	closemsg
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	releaseall
	end

P_CelesticTownCave_DefeatedCyrus:
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	npc_msg 19
	setvar VAR_SPECIAL_x8004, ITEM_HM03
	setvar VAR_SPECIAL_x8005, 1
	giveitem_no_check ITEM_HM03, 1
	setflag 4723
	npc_msg 20
	closemsg
	// Platino: GetPlayerMapPos VAR_0x8004, VAR_0x8005
	return


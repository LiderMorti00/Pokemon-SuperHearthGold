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


// hearthome_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_HearthomeCity_Fisherman
scrdef P_HearthomeCity_PokefanM1
scrdef P_HearthomeCity_PokemonBreederF1
scrdef P_HearthomeCity_BabyInPram1
scrdef P_HearthomeCity_PokemonBreederM1
scrdef P_HearthomeCity_PokefanF
scrdef P_HearthomeCity_MrGoods
scrdef P_HearthomeCity_BattleGirl1
scrdef P_HearthomeCity_BattleGirl2
scrdef P_HearthomeCity_Hiker1
scrdef P_HearthomeCity_Pachirisu
scrdef P_HearthomeCity_PokemonBreederF2
scrdef P_HearthomeCity_BlackBelt1
scrdef P_HearthomeCity_BabyInPram2
scrdef P_HearthomeCity_PokemonBreederM2
scrdef P_HearthomeCity_Artist
scrdef P_HearthomeCity_BlackBelt2
scrdef P_HearthomeCity_ArrowSignpostWest
scrdef P_HearthomeCity_ArrowSignpostEast
scrdef P_HearthomeCity_SignboardAmitySquareWestGate
scrdef P_HearthomeCity_SignboardPokemonContestHall
scrdef P_HearthomeCity_SignboardAmitySquareEastGate
scrdef P_HearthomeCity_SignboardPokemonFanClub
scrdef P_HearthomeCity_GymSignpost
scrdef P_HearthomeCity_MapSignpost
scrdef P_HearthomeCity_SignboardPoffinHouse
scrdef scr_hidden_26
scrdef_end

scr_hidden_26:
	goto_if_set 4139, scr_hidden_26_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_BIG_MUSHROOM, 1, scr_hidden_26_full
	setflag 4139
	giveitem_no_check ITEM_BIG_MUSHROOM, 1
	closemsg
	releaseall
	end
scr_hidden_26_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_26_end:
	end

P_HearthomeCity_Fisherman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16385, P_HearthomeCity_ItMakesMeHappy
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_HearthomeCity_IDoApologize
	npc_msg 1
	closemsg
	wait 15, VAR_SPECIAL_RESULT
	goto P_HearthomeCity_WalkToContestHallNorth

P_HearthomeCity_ItMakesMeHappy:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_IDoApologize:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_WalkToContestHallNorth:
	// Platino: ApplyMovement LOCALID_FISHERMAN, HearthomeCity_Movement_FishermanWalkToContestHallNorthSouthWest
	// Platino: ApplyMovement LOCALID_PLAYER, HearthomeCity_Movement_PlayerWalkToContestHallNorth
	// Platino: WaitMovement 
	goto P_HearthomeCity_ThisIsTheContestHall

P_HearthomeCity_ThisIsTheContestHall:
	setflag 16385
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_PokefanM1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_PokemonBreederF1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_BabyInPram1:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_PokemonBreederM1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_PokefanF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_MrGoods:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	npc_msg 11
	goto_if_unset 4140, P_HearthomeCity_TryGiveGlobe
	goto_if_unset 4141, P_HearthomeCity_TryGiveGlobe
	goto_if_unset 4142, P_HearthomeCity_TryGiveGlobe
	goto_if_unset 4143, P_HearthomeCity_TryGiveGlobe
	goto_if_unset 4144, P_HearthomeCity_TryGiveGlobe
	goto_if_unset 4145, P_HearthomeCity_TryGiveGlobe
	goto_if_unset 4146, P_HearthomeCity_TryGiveGlobe
	goto_if_unset 4147, P_HearthomeCity_TryGiveGlobe
	goto_if_unset 4148, P_HearthomeCity_TryGiveGlobe
	goto_if_unset 4149, P_HearthomeCity_TryGiveGlobe
	goto_if_unset 4150, P_HearthomeCity_TryGiveGlobe
	setflag 4151
	goto P_HearthomeCity_TalkToMeSomeOtherTime

P_HearthomeCity_TryGiveGlobe:
	goto_if_set 4140, P_HearthomeCity_TryGiveGymStatue
	npc_msg 12
	// Platino: CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
	setflag 4140
	closemsg
	releaseall
	end

P_HearthomeCity_TalkToMeSomeOtherTime:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_TryGiveGymStatue:
	goto_if_set 4141, P_HearthomeCity_TryGiveCuteCup
	// Platino: CountBadgesAcquired VAR_RESULT
	npc_msg 14
	// Platino: CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
	setflag 4141
	closemsg
	releaseall
	end

P_HearthomeCity_TryGiveCuteCup:
	goto_if_set 4142, P_HearthomeCity_TryGiveCoolCup
	npc_msg 15
	// Platino: CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
	setflag 4142
	closemsg
	releaseall
	end

P_HearthomeCity_TryGiveCoolCup:
	goto_if_set 4143, P_HearthomeCity_TryGiveBeautyCup
	npc_msg 16
	// Platino: CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
	setflag 4143
	closemsg
	releaseall
	end

P_HearthomeCity_TryGiveBeautyCup:
	goto_if_set 4144, P_HearthomeCity_TryGiveToughCup
	npc_msg 17
	// Platino: CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
	setflag 4144
	closemsg
	releaseall
	end

P_HearthomeCity_TryGiveToughCup:
	goto_if_set 4145, P_HearthomeCity_TryGiveSmartCup
	npc_msg 18
	// Platino: CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
	setflag 4145
	closemsg
	releaseall
	end

P_HearthomeCity_TryGiveSmartCup:
	goto_if_set 4146, P_HearthomeCity_TryGiveBlueCrystal
	npc_msg 19
	// Platino: CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
	setflag 4146
	closemsg
	releaseall
	end

P_HearthomeCity_TryGiveBlueCrystal:
	goto_if_set 4147, P_HearthomeCity_TryGivePinkCrystal
	// Platino: GetUndergroundTalkCounter VAR_RESULT
	npc_msg 20
	// Platino: CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
	setflag 4147
	closemsg
	releaseall
	end

P_HearthomeCity_TryGivePinkCrystal:
	goto_if_set 4148, P_HearthomeCity_TryGiveRedCrystal
	// Platino: GetUndergroundItemsGivenAway VAR_RESULT
	npc_msg 21
	// Platino: CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
	setflag 4148
	closemsg
	releaseall
	end

P_HearthomeCity_TryGiveRedCrystal:
	goto_if_set 4149, P_HearthomeCity_TryGiveYellowCrystal
	// Platino: GetUndergroundFossilsUnearthed VAR_RESULT
	npc_msg 22
	// Platino: CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
	setflag 4149
	closemsg
	releaseall
	end

P_HearthomeCity_TryGiveYellowCrystal:
	goto_if_set 4150, P_HearthomeCity_NoGoodsToGive
	// Platino: GetUndergroundTrapsSet VAR_RESULT
	npc_msg 23
	// Platino: CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
	setflag 4150
	closemsg
	releaseall
	end

P_HearthomeCity_NoGoodsToGive:
	goto P_HearthomeCity_TalkToMeSomeOtherTime2

P_HearthomeCity_TalkToMeSomeOtherTime2:
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_BattleGirl1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_BattleGirl2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_Hiker1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_Pachirisu:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_PACHIRISU, 0
	npc_msg 28
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_PokemonBreederF2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_BlackBelt1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_BabyInPram2:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 31
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_PokemonBreederM2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_Artist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 33
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_BlackBelt2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 34
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_ArrowSignpostWest:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_ArrowSignpostEast:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_SignboardAmitySquareWestGate:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 37
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_SignboardPokemonContestHall:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 38
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_SignboardAmitySquareEastGate:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 39
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_SignboardPokemonFanClub:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 40
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_GymSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 41
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 42
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCity_SignboardPoffinHouse:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 43
	wait_button_or_walk_away
	closemsg
	releaseall
	end


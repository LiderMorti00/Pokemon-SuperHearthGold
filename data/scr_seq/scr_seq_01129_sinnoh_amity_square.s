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


// amity_square: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_AmitySquare_WestReceptionist
scrdef P_AmitySquare_EastReceptionist
scrdef scr_item_2
scrdef scr_item_3
scrdef scr_item_4
scrdef P_AmitySquare_DrifloonMan
scrdef P_AmitySquare_Drifloon
scrdef P_AmitySquare_Happiny
scrdef P_AmitySquare_HappinyWoman
scrdef P_AmitySquare_PikachuMan
scrdef P_AmitySquare_Pikachu
scrdef P_AmitySquare_ClefairyGirl
scrdef P_AmitySquare_Clefairy
scrdef scr_item_13
scrdef P_AmitySquare_GiftMan
scrdef_end

scr_item_2:
	setvar VAR_SPECIAL_x8008, ITEM_TM045
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_3:
	setvar VAR_SPECIAL_x8008, ITEM_TM043
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_4:
	setvar VAR_SPECIAL_x8008, ITEM_SPOOKY_PLATE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_13:
	setvar VAR_SPECIAL_x8008, ITEM_AMULET_COIN
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

P_AmitySquare_WestReceptionist:
	goto P_AmitySquare_Receptionist

P_AmitySquare_Receptionist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: BufferPartyMonNickname 0, VAR_FOLLOWER_MON_PARTY_ID
	call P_AmitySquare_YourPokemonLooksQuitePleasedFollowingYouAround
	goto P_AmitySquare_EastReceptionist_End

P_AmitySquare_YourPokemonLooksQuitePleasedFollowingYouAround:
	npc_msg 0
	return

P_AmitySquare_EastReceptionist_End:
	wait_button_or_walk_away
	closemsg
	// Platino: ApplyMovement LOCALID_RECEPTIONIST_EAST, AmitySquare_Movement_EastReceptionistFaceWest
	// Platino: WaitMovement 
	releaseall
	end

P_AmitySquare_EastReceptionist:
	goto P_AmitySquare_Receptionist

P_AmitySquare_DrifloonMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_AmitySquare_Drifloon:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_DRIFLOON, 0
	npc_msg 2
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_AmitySquare_Happiny:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_AmitySquare_HappinyWoman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_AmitySquare_PikachuMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_AmitySquare_Pikachu:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_PIKACHU, 0
	npc_msg 6
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_AmitySquare_ClefairyGirl:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_AmitySquare_Clefairy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_CLEFAIRY, 0
	npc_msg 8
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_AmitySquare_GiftMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4333, P_AmitySquare_GiftMan_ReceivedGift
	npc_msg 9
	// Platino: GetAmitySquareBerryOrAccessoryIDFromMan VAR_AMITY_SQUARE_GIFT_ID, LOCAL_VAR_ITEM_OR_ACCESSORY_ID
	// Platino: GoToIfAmitySquareManGiftIsNotAccessory VAR_AMITY_SQUARE_GIFT_ID, AmitySquare_GiftMan_ItemGift
	goto P_AmitySquare_GiftMan_AccessoryGift

P_AmitySquare_GiftMan_ReceivedGift:
	setflag 4333
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_AmitySquare_GiftMan_AccessoryGift:
	// Platino: BufferAccessoryName 0, LOCAL_VAR_ITEM_OR_ACCESSORY_ID
	npc_msg 11
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_AmitySquare_GiftMan_DeclinedGift
	goto P_AmitySquare_GiftMan_ReceivedGift

P_AmitySquare_GiftMan_DeclinedGift:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end


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


// veilstone_city: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VeilstoneCity_Guitarist1
scrdef P_VeilstoneCity_PokefanM
scrdef P_VeilstoneCity_BattleGirl1
scrdef P_VeilstoneCity_Lady
scrdef P_VeilstoneCity_BattleGirl2
scrdef P_VeilstoneCity_Roughneck1
scrdef scr_item_6
scrdef scr_item_7
scrdef P_VeilstoneCity_Guitarist2
scrdef P_VeilstoneCity_Roughneck2
scrdef scr_item_10
scrdef P_VeilstoneCity_BattleGirl3
scrdef P_VeilstoneCity_Guitarist3
scrdef P_VeilstoneCity_MapSignpost
scrdef P_VeilstoneCity_SignboardGalacticWarehouse
scrdef P_VeilstoneCity_SignboardGalacticBuilding
scrdef P_VeilstoneCity_SignboardDepartmentStore
scrdef P_VeilstoneCity_GymSignpost
scrdef P_VeilstoneCity_SignboardGameCorner
scrdef P_VeilstoneCity_SignboardPrizeExchange
scrdef P_VeilstoneCity_SignboardLakeValor
scrdef scr_hidden_21
scrdef scr_hidden_22
scrdef P_VeilstoneCity_DeoxysMeteoriteSpeed
scrdef P_VeilstoneCity_DeoxysMeteoriteDefense
scrdef P_VeilstoneCity_DeoxysMeteoriteAttack
scrdef P_VeilstoneCity_DeoxysMeteoriteNormal
scrdef scr_hidden_27
scrdef_end

scr_item_6:
	setvar VAR_SPECIAL_x8008, ITEM_FULL_INCENSE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_7:
	setvar VAR_SPECIAL_x8008, ITEM_RARE_CANDY
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_10:
	setvar VAR_SPECIAL_x8008, ITEM_STAR_PIECE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_21:
	goto_if_set 4172, scr_hidden_21_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_CALCIUM, 1, scr_hidden_21_full
	setflag 4172
	giveitem_no_check ITEM_CALCIUM, 1
	closemsg
	releaseall
	end
scr_hidden_21_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_21_end:
	end

scr_hidden_22:
	goto_if_set 4173, scr_hidden_22_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PP_UP, 1, scr_hidden_22_full
	setflag 4173
	giveitem_no_check ITEM_PP_UP, 1
	closemsg
	releaseall
	end
scr_hidden_22_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_22_end:
	end

scr_hidden_27:
	goto_if_set 4174, scr_hidden_27_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_STAR_PIECE, 1, scr_hidden_27_full
	setflag 4174
	giveitem_no_check ITEM_STAR_PIECE, 1
	closemsg
	releaseall
	end
scr_hidden_27_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_27_end:
	end

P_VeilstoneCity_Guitarist1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_PokefanM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_BattleGirl1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_Lady:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_BattleGirl2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_Roughneck1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_Guitarist2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_Roughneck2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4175, P_VeilstoneCity_EmbargoMakesItemsUnusable
	npc_msg 7
	setvar VAR_SPECIAL_x8004, ITEM_TM063
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_TM063, 1, P_VeilstoneCity_BagIsFull
	giveitem_no_check ITEM_TM063, 1
	setflag 4175
	goto P_VeilstoneCity_EmbargoMakesItemsUnusable

P_VeilstoneCity_EmbargoMakesItemsUnusable:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_VeilstoneCity_BattleGirl3:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_Guitarist3:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_VeilstoneCity_FrenchHardToBelieve
	npc_msg 11
	goto P_VeilstoneCity_Guitarist3End

P_VeilstoneCity_FrenchHardToBelieve:
	npc_msg 12
	goto P_VeilstoneCity_Guitarist3End

P_VeilstoneCity_Guitarist3End:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_SignboardGalacticWarehouse:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_SignboardGalacticBuilding:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_SignboardDepartmentStore:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_GymSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_SignboardGameCorner:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_SignboardPrizeExchange:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_SignboardLakeValor:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCity_DeoxysMeteoriteSpeed:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
	// Platino: ChangeDeoxysForm DEOXYS_FORM_SPEED
	play_cry SPECIES_DEOXYS, 0
	npc_msg 21
	wait_button_or_walk_away
	wait_cry
	closemsg
	releaseall
	end

P_VeilstoneCity_DeoxysMeteoriteDefense:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
	// Platino: ChangeDeoxysForm DEOXYS_FORM_DEFENSE
	play_cry SPECIES_DEOXYS, 0
	npc_msg 22
	wait_button_or_walk_away
	wait_cry
	closemsg
	releaseall
	end

P_VeilstoneCity_DeoxysMeteoriteAttack:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
	// Platino: ChangeDeoxysForm DEOXYS_FORM_ATTACK
	play_cry SPECIES_DEOXYS, 0
	npc_msg 23
	wait_button_or_walk_away
	wait_cry
	closemsg
	releaseall
	end

P_VeilstoneCity_DeoxysMeteoriteNormal:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
	// Platino: ChangeDeoxysForm DEOXYS_FORM_NORMAL
	play_cry SPECIES_DEOXYS, 0
	npc_msg 24
	wait_button_or_walk_away
	wait_cry
	closemsg
	releaseall
	end


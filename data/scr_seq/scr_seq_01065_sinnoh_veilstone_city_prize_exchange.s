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


// veilstone_city_prize_exchange: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VeilstoneCityPrizeExchange_Receptionist
scrdef P_VeilstoneCityPrizeExchange_Guitarist
scrdef P_VeilstoneCityPrizeExchange_OldMan
scrdef_end

P_VeilstoneCityPrizeExchange_Receptionist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	// Platino: ShowCoins 21, 1
	setvar VAR_SPECIAL_x8005, 0
	setvar VAR_SPECIAL_x8006, 0
	goto P_VeilstoneCityPrizeExchange_TryBuyPrize

P_VeilstoneCityPrizeExchange_TryBuyPrize:
	npc_msg 1
	call P_VeilstoneCityPrizeExchange_InitPrizeMenu
	// Platino: GetGameCornerPrizeData VAR_RESULT, VAR_0x8000, VAR_0x8001
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_VeilstoneCityPrizeExchange_TryBuyPrize
	// Platino: HasCoins VAR_RESULT, VAR_0x8001
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_VeilstoneCityPrizeExchange_NotEnoughCoins
	npc_msg 2
	// Platino: SubtractCoins VAR_0x8001
	// Platino: UpdateCoinDisplay 
	goto P_VeilstoneCityPrizeExchange_TryBuyPrize

P_VeilstoneCityPrizeExchange_InitPrizeMenu:
	setvar VAR_SPECIAL_x8008, 0
	setvar VAR_SPECIAL_x8009, 0
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_RESULT
	goto P_VeilstoneCityPrizeExchange_AddPrizeToMenu

P_VeilstoneCityPrizeExchange_NotEnoughCoins:
	npc_msg 3
	goto P_VeilstoneCityPrizeExchange_TryBuyPrize

P_VeilstoneCityPrizeExchange_NoRoomAvailable:
	npc_msg 4
	goto P_VeilstoneCityPrizeExchange_TryBuyPrize

P_VeilstoneCityPrizeExchange_AddPrizeToMenu:
	// Platino: GetGameCornerPrizeData VAR_0x8008, VAR_0x8000, VAR_0x8001
	// Platino: BufferVarPaddingDigits 1, VAR_0x8001, PADDING_MODE_SPACES, 5
	AddMultiOption 5, 910
	goto P_VeilstoneCityPrizeExchange_AddPrizeToMenu

P_VeilstoneCityPrizeExchange_Guitarist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4180, P_VeilstoneCityPrizeExchange_AskTellHiddenPowerType
	setflag 4180
	npc_msg 6
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_VeilstoneCityPrizeExchange_IfYouWantAskMe
	goto P_VeilstoneCityPrizeExchange_TryTellHiddenPowerType

P_VeilstoneCityPrizeExchange_AskTellHiddenPowerType:
	npc_msg 7
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_VeilstoneCityPrizeExchange_IfYouWantAskMe
	goto P_VeilstoneCityPrizeExchange_TryTellHiddenPowerType

P_VeilstoneCityPrizeExchange_IfYouWantAskMe:
	npc_msg 8
	goto P_VeilstoneCityPrizeExchange_GuitaristEnd

P_VeilstoneCityPrizeExchange_TryTellHiddenPowerType:
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectMoveTutorPokemon 
	// Platino: GetSelectedPartySlot VAR_0x8000
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: CalcHiddenPowerType VAR_0x8000, VAR_0x8004
	// Platino: CheckPartyMonHasMove VAR_RESULT, MOVE_HIDDEN_POWER, VAR_0x8000
	// Platino: BufferTypeName 0, VAR_0x8004
	npc_msg 9
	goto P_VeilstoneCityPrizeExchange_GuitaristEnd

P_VeilstoneCityPrizeExchange_GuitaristEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCityPrizeExchange_OldMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end


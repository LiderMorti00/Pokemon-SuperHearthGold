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


// route_226_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route226House_Meister
scrdef P_Route226House_BgSign
scrdef_end

P_Route226House_Meister:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4756, P_Route226House_MakeFriendsAnywhere
	goto_if_set 4757, P_Route226House_AskTrade
	npc_msg 0
	// Platino: TurnOnPokedexLanguageDetection 
	setflag 4757
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route226House_MakeFriendsAnywhere:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route226House_AskTrade:
	npc_msg 3
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_Route226House_TryTrade
	goto P_Route226House_ThisIsATragedy

P_Route226House_TryTrade:
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectPokemonToTrade 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: InitNPCTrade NPC_TRADE_FOPPA_MAGIKARP
	// Platino: GetNPCTradeRequestedSpecies VAR_RESULT
	goto P_Route226House_ThatIsNoFinneon

P_Route226House_ThisIsATragedy:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route226House_ThatIsNoFinneon:
	// Platino: FinishNPCTrade 
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route226House_BgSign:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end


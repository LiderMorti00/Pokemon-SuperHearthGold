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


// snowpoint_city_west_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SnowpointCityWestHouse_AceTrainerM
scrdef P_SnowpointCityWestHouse_Mindy
scrdef_end

P_SnowpointCityWestHouse_AceTrainerM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4195, P_SnowpointCityWestHouse_MyGirlsHappy
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCityWestHouse_MyGirlsHappy:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCityWestHouse_Mindy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4195, P_SnowpointCityWestHouse_WeGotToBeFriends
	npc_msg 2
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_SnowpointCityWestHouse_TryTrade
	goto P_SnowpointCityWestHouse_OKIfYouDontWant

P_SnowpointCityWestHouse_WeGotToBeFriends:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCityWestHouse_TryTrade:
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectPokemonToTrade 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: InitNPCTrade NPC_TRADE_GASPAR_HAUNTER
	// Platino: GetNPCTradeRequestedSpecies VAR_RESULT
	goto P_SnowpointCityWestHouse_IAskedForMedicham

P_SnowpointCityWestHouse_OKIfYouDontWant:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SnowpointCityWestHouse_IAskedForMedicham:
	// Platino: FinishNPCTrade 
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end


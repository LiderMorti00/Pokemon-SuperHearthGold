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


// oreburgh_city_north_house_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_OreburghCityNorthHouse1F_ExpertF
scrdef P_OreburghCityNorthHouse1F_SchoolKidF
scrdef P_OreburghCityNorthHouse1F_PokemonBreederM
scrdef_end

P_OreburghCityNorthHouse1F_ExpertF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityNorthHouse1F_SchoolKidF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4121, P_OreburghCityNorthHouse1F_ThanksToPokemonWereFriends
	npc_msg 1
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_OreburghCityNorthHouse1F_TryTrade
	goto P_OreburghCityNorthHouse1F_IllBeWaiting

P_OreburghCityNorthHouse1F_ThanksToPokemonWereFriends:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityNorthHouse1F_TryTrade:
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectPokemonToTrade 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: InitNPCTrade NPC_TRADE_KAZZA_ABRA
	// Platino: GetNPCTradeRequestedSpecies VAR_RESULT
	goto P_OreburghCityNorthHouse1F_AskedForMachop

P_OreburghCityNorthHouse1F_IllBeWaiting:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityNorthHouse1F_AskedForMachop:
	// Platino: FinishNPCTrade 
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityNorthHouse1F_PokemonBreederM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end


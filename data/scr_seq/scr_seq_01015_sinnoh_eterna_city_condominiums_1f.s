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


// eterna_city_condominiums_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_EternaCityCondominiums1F_NinjaBoy
scrdef P_EternaCityCondominiums1F_PokefanM
scrdef P_EternaCityCondominiums1F_ExpertM
scrdef_end

P_EternaCityCondominiums1F_NinjaBoy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4137, P_EternaCityCondominiums1F_DidChatotLearnChatter
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_EternaCityCondominiums1F_TryTrade
	goto P_EternaCityCondominiums1F_OhOKTotallyGotIt

P_EternaCityCondominiums1F_DidChatotLearnChatter:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityCondominiums1F_TryTrade:
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectPokemonToTrade 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: InitNPCTrade NPC_TRADE_CHARAP_CHATOT
	setvar VAR_SPECIAL_x8004, 10000
	// Platino: GetNPCTradeRequestedSpecies VAR_RESULT
	goto P_EternaCityCondominiums1F_IWantBuizel

P_EternaCityCondominiums1F_OhOKTotallyGotIt:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityCondominiums1F_IWantBuizel:
	// Platino: FinishNPCTrade 
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityCondominiums1F_PokefanM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	GetTimePeriod VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq P_EternaCityCondominiums1F_Mantain24HourWatchZzz
	goto P_EternaCityCondominiums1F_ImBuildingSuperintented

P_EternaCityCondominiums1F_Mantain24HourWatchZzz:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityCondominiums1F_ImBuildingSuperintented:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityCondominiums1F_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_EternaCityCondominiums1F_TryGiveNickname
	goto P_EternaCityCondominiums1F_PleaseComeVisitAgain

P_EternaCityCondominiums1F_TryGiveNickname:
	npc_msg 7
	wait_button
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectMoveTutorPokemon 
	// Platino: GetSelectedPartySlot VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	setvar VAR_SPECIAL_x8005, 10000
	// Platino: CheckIsPartyMonOutsider VAR_0x8005, VAR_RESULT
	// Platino: BufferPartyMonNickname 0, VAR_0x8005
	npc_msg 8
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_EternaCityCondominiums1F_GiveNewNickname
	goto P_EternaCityCondominiums1F_PleaseComeVisitAgain

P_EternaCityCondominiums1F_PleaseComeVisitAgain:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityCondominiums1F_GiveNewNickname:
	npc_msg 10
	wait_button
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: OpenPokemonNamingScreen VAR_0x8005, VAR_RESULT
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: ScrCmd_2B8 VAR_0x8005
	// Platino: IncrementGameRecord RECORD_POKEMON_NICKNAMED
	// Platino: BufferPartyMonNickname 0, VAR_0x8005
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end


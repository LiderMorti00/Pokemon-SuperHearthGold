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


// jubilife_tv_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_JubilifeTV1F_Beauty
scrdef P_JubilifeTV1F_GymGuide
scrdef P_JubilifeTV1F_MiddleAgedMan
scrdef P_JubilifeTV1F_AceTrainerSnowF
scrdef P_JubilifeTV1F_AceTrainerM
scrdef_end

P_JubilifeTV1F_Beauty:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV1F_GymGuide:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV1F_MiddleAgedMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV1F_AceTrainerSnowF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4098, P_JubilifeTV1F_AlreadyDrawnTicketToday
	goto_if_set 4099, P_JubilifeTV1F_AskCheckLuckyNumberAgain
	npc_msg 3
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_JubilifeTV1F_CheckTodaysLuckyNumber
	goto P_JubilifeTV1F_PleaseVisitAgain

P_JubilifeTV1F_AlreadyDrawnTicketToday:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV1F_AskCheckLuckyNumberAgain:
	npc_msg 5
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_JubilifeTV1F_CheckTodaysLuckyNumber
	goto P_JubilifeTV1F_PleaseVisitAgain

P_JubilifeTV1F_CheckTodaysLuckyNumber:
	setflag 4099
	npc_msg 6
	// Platino: GetJubilifeLotteryTrainerID VAR_0x8000
	// Platino: BufferVarPaddingDigits 0, VAR_0x8000, PADDING_MODE_ZEROES, 5
	npc_msg 7
	// Platino: CheckForJubilifeLotteryWinner VAR_0x8001, VAR_0x8002, VAR_0x8003, VAR_0x8000
	goto P_JubilifeTV1F_MatchedPCBoxedPokemon

P_JubilifeTV1F_PleaseVisitAgain:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV1F_MatchedPCBoxedPokemon:
	// Platino: BufferMonNicknameFromPC 0, VAR_0x8001
	npc_msg 9
	goto P_JubilifeTV1F_CheckMatchedDigits

P_JubilifeTV1F_CheckMatchedDigits:
	end

P_JubilifeTV1F_AceTrainerM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end


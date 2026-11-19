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


// canalave_city_east_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_CanalaveCityEastHouse_MoveDeleter
scrdef_end

P_CanalaveCityEastHouse_MoveDeleter:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16385, P_CanalaveCityEastHouse_AskForgetSomeMoves
	npc_msg 0
	setflag 16385
	goto P_CanalaveCityEastHouse_AskForgetSomeMoves

P_CanalaveCityEastHouse_AskForgetSomeMoves:
	npc_msg 1
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_CanalaveCityEastHouse_WhichPokemon
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveCityEastHouse_RememberMe
	end

P_CanalaveCityEastHouse_WhichPokemon:
	npc_msg 2
	closemsg
	goto P_CanalaveCityEastHouse_TryForgetMove

P_CanalaveCityEastHouse_RememberMe:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCityEastHouse_TryForgetMove:
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectMoveTutorPokemon 
	// Platino: GetSelectedPartySlot VAR_0x8002
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: GetPartyMonMoveCount VAR_RESULT, VAR_0x8002
	npc_msg 4
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectPartyMonMove VAR_0x8002
	// Platino: GetSelectedPartyMonMove VAR_0x8001
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: BufferPartyMoveName 0, VAR_0x8002, VAR_0x8001
	npc_msg 5
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_CanalaveCityEastHouse_ForgotMoveCompletely
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CanalaveCityEastHouse_WhichPokemon
	end

P_CanalaveCityEastHouse_ForgotMoveCompletely:
	// Platino: ClearPartyMonMoveSlot VAR_0x8002, VAR_0x8001
	npc_msg 6
	// Platino: PlayFanfare SEQ_WASURE_sseq
	wait_fanfare
	wait_button_or_walk_away
	closemsg
	end


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


// rotoms_room: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_RotomsRoom_ApplianceSpot
scrdef P_RotomsRoom_ApplianceSpot
scrdef P_RotomsRoom_ApplianceSpot
scrdef P_RotomsRoom_ApplianceSpot
scrdef P_RotomsRoom_ApplianceSpot
scrdef_end

P_RotomsRoom_ApplianceSpot:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: GetPartyRotomCountAndFirst VAR_0x8003, VAR_RESULT
	npc_msg 0
	MultiLocalText 31, 15, 0, 1, VAR_SPECIAL_RESULT
	// Platino: SetMenuXOriginToRight 
	AddMultiOption 1, 0
	ShowMulti
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_RotomsRoom_GetRotomForRecall
	closemsg
	releaseall
	end

P_RotomsRoom_GetRotomForRecall:
	// Platino: GetPartyRotomCountAndFirst VAR_0x8003, VAR_RESULT
	goto P_RotomsRoom_ChooseRotomForRecall

P_RotomsRoom_ChooseRotomForRecall:
	npc_msg 2
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	closemsg
	// Platino: SelectMoveTutorPokemon 
	// Platino: GetSelectedPartySlot LOCAL_VAR_PARTY_SLOT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	goto P_RotomsRoom_ThatPokemonCantEnter

P_RotomsRoom_ThatPokemonCantEnter:
	npc_msg 3
	goto P_RotomsRoom_ApplianceEnd

P_RotomsRoom_ApplianceEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end


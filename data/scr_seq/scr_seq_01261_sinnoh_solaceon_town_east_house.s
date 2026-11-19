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


// solaceon_town_east_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SolaceonTownEastHouse_NinjaBoy
scrdef P_SolaceonTownEastHouse_PokefanF
scrdef_end

P_SolaceonTownEastHouse_NinjaBoy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset 4715, P_SolaceonTownEastHouse_YouDontHaveASealCase
	call_if_unset 16385, P_SolaceonTownEastHouse_SetVarFormNone
	// Platino: CheckPartyHasSpecies VAR_RESULT, SPECIES_UNOWN
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownEastHouse_YouDontHaveASealCase:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownEastHouse_SetVarFormNone:
	return

P_SolaceonTownEastHouse_PokefanF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4715, P_SolaceonTownEastHouse_IllExplainHowSealsWork
	npc_msg 2
	setvar VAR_SPECIAL_x8004, ITEM_SEAL_CASE
	setvar VAR_SPECIAL_x8005, 1
	giveitem_no_check ITEM_SEAL_CASE, 1
	setflag 4715
	call P_SolaceonTownEastHouse_GiveRandomSeals
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownEastHouse_IllExplainHowSealsWork:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownEastHouse_GiveRandomSeals:
	npc_msg 4
	// Platino: GiveOrTakeSeal VAR_0x8007, 1
	// Platino: GiveOrTakeSeal VAR_0x8007, 1
	// Platino: GiveOrTakeSeal VAR_0x8007, 1
	// Platino: GiveOrTakeSeal VAR_0x8007, 1
	// Platino: GiveOrTakeSeal VAR_0x8007, 1
	return


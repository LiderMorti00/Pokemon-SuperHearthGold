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


// floaroma_town: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_FloaromaTown_PokemonBreederF
scrdef P_FloaromaTown_LassWest
scrdef P_FloaromaTown_SchoolKidM
scrdef P_FloaromaTown_Beauty
scrdef P_FloaromaTown_LassEast
scrdef P_FloaromaTown_Camper
scrdef P_FloaromaTown_MapSignpost
scrdef P_FloaromaTown_SignboardFlowerShop
scrdef P_FloaromaTown_SignboardFloaromaMeadow
scrdef_end

P_FloaromaTown_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FloaromaTown_LassWest:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FloaromaTown_SchoolKidM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_FloaromaTown_OddlyPleasantMood

P_FloaromaTown_OddlyPleasantMood:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FloaromaTown_Beauty:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: FindPartySlotWithFatefulEncounterSpecies VAR_RESULT, SPECIES_SHAYMIN
	// Platino: CheckPartyHasSpecies VAR_RESULT, SPECIES_SHAYMIN
	npc_msg 3
	setvar VAR_SPECIAL_x8004, ITEM_GRACIDEA
	setvar VAR_SPECIAL_x8005, 1
	giveitem_no_check ITEM_GRACIDEA, 1
	closemsg
	releaseall
	end

P_FloaromaTown_LassEast:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FloaromaTown_Camper:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FloaromaTown_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FloaromaTown_SignboardFlowerShop:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_FloaromaTown_SignboardFloaromaMeadow:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end


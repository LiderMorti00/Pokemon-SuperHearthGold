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


// celestic_town_north_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_CelesticTownNorthHouse_ExpertM
scrdef P_CelesticTownNorthHouse_Lass
scrdef P_CelesticTownNorthHouse_Scroll
scrdef_end

P_CelesticTownNorthHouse_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_CelesticTownNorthHouse_YouWouldnt
	npc_msg 1
	goto P_CelesticTownNorthHouse_ExpertMEnd

P_CelesticTownNorthHouse_YouWouldnt:
	npc_msg 2
	goto P_CelesticTownNorthHouse_ExpertMEnd

P_CelesticTownNorthHouse_ExpertMEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTownNorthHouse_Lass:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTownNorthHouse_Scroll:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end


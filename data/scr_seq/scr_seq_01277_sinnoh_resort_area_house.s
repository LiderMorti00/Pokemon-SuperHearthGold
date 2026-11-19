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


// resort_area_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_ResortAreaHouse_Collector
scrdef P_ResortAreaHouse_OldMan
scrdef P_ResortAreaHouse_NinjaBoy
scrdef_end

P_ResortAreaHouse_Collector:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	// Platino: ApplyMovement LOCALID_COLLECTOR, ResortAreaHouse_Movement_CollectorWalkOnSpotNorth
	// Platino: WaitMovement 
	releaseall
	end

P_ResortAreaHouse_OldMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_ResortAreaHouse_NinjaBoy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_player_gender VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_ResortAreaHouse_SeenEveryPokemonSinnohMale
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_ResortAreaHouse_SeenEveryPokemonSinnohFemale
	end

P_ResortAreaHouse_SeenEveryPokemonSinnohMale:
	npc_msg 2
	goto P_ResortAreaHouse_NinjaBoyEnd

P_ResortAreaHouse_SeenEveryPokemonSinnohFemale:
	npc_msg 3
	goto P_ResortAreaHouse_NinjaBoyEnd

P_ResortAreaHouse_NinjaBoyEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end


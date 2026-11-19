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


// route_201: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_Route201_BreederM
scrdef scr_seq_shg_mart
scrdef P_Route201_SchoolKidM
scrdef P_Route201_Lass
scrdef P_Route201_ArrowSignpostTwinleafTown
scrdef P_Route201_ArrowSignpostSandgemTown
scrdef P_Route201_TrainerTipsSignpost
scrdef_end

P_Route201_BreederM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route201_SchoolKidM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route201_Lass:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4460, P_Route201_IfHPIsLowGoToAPokemonCenter
	npc_msg 2
	goto P_Route201_LassCloseMessage

P_Route201_IfHPIsLowGoToAPokemonCenter:
	npc_msg 3
	goto P_Route201_LassCloseMessage

P_Route201_LassCloseMessage:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route201_ArrowSignpostTwinleafTown:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route201_ArrowSignpostSandgemTown:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_Route201_TrainerTipsSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_services.inc"

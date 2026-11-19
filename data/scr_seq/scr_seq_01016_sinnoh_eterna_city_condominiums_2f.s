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


// eterna_city_condominiums_2f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_EternaCityCondominiums2F_ExpertF
scrdef P_EternaCityCondominiums2F_Twin
scrdef P_EternaCityCondominiums2F_ExpertM
scrdef_end

P_EternaCityCondominiums2F_ExpertF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4138, P_EternaCityCondominiums2F_LongHistory
	npc_msg 0
	setvar VAR_SPECIAL_x8004, ITEM_TM067
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_TM067, 1, P_EternaCityCondominiums2F_BagIsFull
	setflag 4138
	giveitem_no_check ITEM_TM067, 1
	closemsg
	releaseall
	end

P_EternaCityCondominiums2F_LongHistory:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityCondominiums2F_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_EternaCityCondominiums2F_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityCondominiums2F_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


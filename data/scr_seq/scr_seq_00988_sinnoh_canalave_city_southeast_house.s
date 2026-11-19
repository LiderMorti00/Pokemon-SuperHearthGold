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


// canalave_city_southeast_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_CanalaveCitySoutheastHouse_Lass
scrdef P_CanalaveCitySoutheastHouse_AceTrainerF
scrdef_end

P_CanalaveCitySoutheastHouse_Lass:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCitySoutheastHouse_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4112, P_CanalaveCitySoutheastHouse_ExplainSkillSwap
	npc_msg 1
	setvar VAR_SPECIAL_x8004, ITEM_TM048
	setvar VAR_SPECIAL_x8005, 1
	goto_if_no_item_space ITEM_TM048, 1, P_CanalaveCitySoutheastHouse_BagIsFull
	giveitem_no_check ITEM_TM048, 1
	setflag 4112
	goto P_CanalaveCitySoutheastHouse_ExplainSkillSwap

P_CanalaveCitySoutheastHouse_ExplainSkillSwap:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCitySoutheastHouse_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end


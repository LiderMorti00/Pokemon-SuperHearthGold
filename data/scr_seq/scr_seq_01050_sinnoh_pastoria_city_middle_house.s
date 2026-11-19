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


// pastoria_city_middle_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_PastoriaCityMiddleHouse_OldMan
scrdef P_PastoriaCityMiddleHouse_BugCatcher
scrdef_end

P_PastoriaCityMiddleHouse_OldMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCityMiddleHouse_BugCatcher:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4161, P_PastoriaCityMiddleHouse_YoureGood
	goto_if_set 4162, P_PastoriaCityMiddleHouse_HandlePartyCombeeGenderCount
	npc_msg 1
	setflag 4162
	goto P_PastoriaCityMiddleHouse_BugCatcherEnd

P_PastoriaCityMiddleHouse_YoureGood:
	npc_msg 2
	goto P_PastoriaCityMiddleHouse_BugCatcherEnd

P_PastoriaCityMiddleHouse_HandlePartyCombeeGenderCount:
	// Platino: CheckPartyCombeeGenderCount VAR_RESULT
	npc_msg 3
	goto_if_no_item_space ITEM_MACHO_BRACE, 1, P_PastoriaCityMiddleHouse_BagIsFull
	setflag 4161
	giveitem_no_check ITEM_MACHO_BRACE, 1
	goto P_PastoriaCityMiddleHouse_YoureGood

P_PastoriaCityMiddleHouse_BugCatcherEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PastoriaCityMiddleHouse_BagIsFull:
	npc_msg 4
	goto P_PastoriaCityMiddleHouse_BugCatcherEnd


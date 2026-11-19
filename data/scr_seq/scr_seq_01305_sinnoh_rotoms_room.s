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
	// Platino: InitLocalTextMenu 31, 15, 0, VAR_RESULT
	// Platino: SetMenuXOriginToRight 
	// Platino: AddMenuEntryImm RotomsRoom_Text_Recall, 0
	// Platino: ShowMenu 
	closemsg
	releaseall
	end


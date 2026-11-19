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


// veilstone_store_3f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VeilstoneStore3F_Attendant
scrdef P_VeilstoneStore3F_Twin
scrdef P_VeilstoneStore3F_Guitarist
scrdef scr_seq_shg_mart
scrdef scr_seq_shg_mart
scrdef P_VeilstoneStore3F_Breeder
scrdef P_VeilstoneStore3F_Directory
scrdef_end

P_VeilstoneStore3F_Attendant:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: CheckIsDepartmentStoreRegular VAR_RESULT
	npc_msg 0
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_RESULT
	AddMultiOption 1, 1
	AddMultiOption 2, 0
	ShowMulti
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_VeilstoneStore3F_AttendantFalseSwipe
	goto P_VeilstoneStore3F_AttendantPleaseEnjoyYourself

P_VeilstoneStore3F_AttendantFalseSwipe:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore3F_AttendantPleaseEnjoyYourself:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore3F_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore3F_Guitarist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore3F_Breeder:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore3F_Directory:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_services.inc"

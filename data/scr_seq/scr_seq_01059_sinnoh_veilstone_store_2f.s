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


// veilstone_store_2f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VeilstoneStore2F_Lady
scrdef P_VeilstoneStore2F_BugCatcher1
scrdef scr_seq_shg_mart
scrdef P_VeilstoneStore2F_Attendant
scrdef scr_seq_shg_mart
scrdef scr_seq_shg_mart
scrdef P_VeilstoneStore2F_BugCatcher2
scrdef P_VeilstoneStore2F_Directory
scrdef_end

P_VeilstoneStore2F_Lady:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore2F_BugCatcher1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore2F_Attendant:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: CheckIsDepartmentStoreRegular VAR_RESULT
	npc_msg 2
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_RESULT
	AddMultiOption 3, 1
	AddMultiOption 4, 0
	ShowMulti
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_VeilstoneStore2F_AttendantProtein
	goto P_VeilstoneStore2F_AttendantPleaseEnjoyYourself

P_VeilstoneStore2F_AttendantProtein:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore2F_AttendantPleaseEnjoyYourself:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore2F_BugCatcher2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore2F_Directory:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_services.inc"

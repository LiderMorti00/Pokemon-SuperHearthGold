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


// galactic_hq_4f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_hidden_0
scrdef P_GalacticHQ4F_BgSignWarpPanels
scrdef P_GalacticHQ4F_Report
scrdef_end

scr_hidden_0:
	goto_if_set 4441, scr_hidden_0_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_RAZOR_CLAW, 1, scr_hidden_0_full
	setflag 4441
	giveitem_no_check ITEM_RAZOR_CLAW, 1
	closemsg
	releaseall
	end
scr_hidden_0_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_0_end:
	end

P_GalacticHQ4F_BgSignWarpPanels:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQ4F_Report:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 1
	goto P_GalacticHQ4F_ReadWhichReport

P_GalacticHQ4F_ReadWhichReport:
	npc_msg 2
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_RESULT
	// Platino: AddMenuEntry MenuEntries_Text_GalacticReport_CreationOfSpace, 0
	// Platino: AddMenuEntry MenuEntries_Text_GalacticReport_MythicalPokemon, 1
	// Platino: AddMenuEntry MenuEntries_Text_GalacticReport_RedChain, 2
	// Platino: AddMenuEntry MenuEntries_Text_GalacticReport_Exit, 3
	ShowMulti
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_GalacticHQ4F_ReportCreationOfSpace
	compare VAR_SPECIAL_x8008, 1
	goto_if_eq P_GalacticHQ4F_ReportMythicalPokemon
	compare VAR_SPECIAL_x8008, 2
	goto_if_eq P_GalacticHQ4F_ReportRedChain
	goto P_GalacticHQ4F_ReportEnd

P_GalacticHQ4F_ReportCreationOfSpace:
	npc_msg 3
	goto P_GalacticHQ4F_ReadWhichReport

P_GalacticHQ4F_ReportMythicalPokemon:
	npc_msg 4
	goto P_GalacticHQ4F_ReadWhichReport

P_GalacticHQ4F_ReportRedChain:
	npc_msg 5
	goto P_GalacticHQ4F_ReadWhichReport

P_GalacticHQ4F_ReportEnd:
	closemsg
	releaseall
	end


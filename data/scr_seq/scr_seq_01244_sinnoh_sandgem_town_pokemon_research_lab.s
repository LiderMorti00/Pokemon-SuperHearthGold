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


// sandgem_town_pokemon_research_lab: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SandgemTownLab_ScientistM
scrdef P_SandgemTownLab_ScientistF
scrdef P_SandgemTownLab_BookshelfAdventureRuleNo1
scrdef P_SandgemTownLab_BookshelfAdventureRuleNo2
scrdef P_SandgemTownLab_BookshelfBooks
scrdef P_SandgemTownLab_BookshelfReferenceMaterial
scrdef P_SandgemTownLab_PC
scrdef P_SandgemTownLab_Refrigerator
scrdef_end

P_SandgemTownLab_ScientistM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	call P_SandgemTownLab_SetVarIfArrivedInSunyshoreCity
	// Platino: GetNationalDexEnabled VAR_RESULT
	// Platino: BufferCounterpartName 0
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SandgemTownLab_SetVarIfArrivedInSunyshoreCity:
	setvar VAR_SPECIAL_x8006, 0
	return

P_SandgemTownLab_ScientistF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	call P_SandgemTownLab_SetVarIfArrivedInSunyshoreCity
	// Platino: GetNationalDexEnabled VAR_RESULT
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SandgemTownLab_BookshelfAdventureRuleNo1:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SandgemTownLab_BookshelfAdventureRuleNo2:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SandgemTownLab_BookshelfBooks:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SandgemTownLab_BookshelfReferenceMaterial:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SandgemTownLab_PC:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SandgemTownLab_Refrigerator:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end


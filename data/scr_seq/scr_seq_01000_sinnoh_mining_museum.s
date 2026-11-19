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


// mining_museum: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_MiningMuseum_Hiker
scrdef P_MiningMuseum_Twin
scrdef P_MiningMuseum_SchoolKidM
scrdef P_MiningMuseum_FossilResearcher
scrdef P_MiningMuseum_AceTrainerF
scrdef P_MiningMuseum_PokemonBreederF
scrdef P_MiningMuseum_Collector
scrdef P_MiningMuseum_ExpertM
scrdef P_MiningMuseum_HowCoalIsMade1
scrdef P_MiningMuseum_HowCoalIsMade1
scrdef P_MiningMuseum_HowCoalIsMade2
scrdef P_MiningMuseum_HowCoalIsMade2
scrdef P_MiningMuseum_HowCoalIsMade3
scrdef P_MiningMuseum_HowCoalIsMade3
scrdef P_MiningMuseum_DisplayCoalDifferentRegions
scrdef P_MiningMuseum_DisplayCoalDifferentRegions
scrdef P_MiningMuseum_DisplayCategorizedSamples
scrdef P_MiningMuseum_DisplayCategorizedSamples
scrdef P_MiningMuseum_DisplayLamps
scrdef P_MiningMuseum_DisplayLamps
scrdef P_MiningMuseum_DisplayLamps
scrdef P_MiningMuseum_DisplayTools
scrdef P_MiningMuseum_DisplayTools
scrdef P_MiningMuseum_DisplayTools
scrdef P_MiningMuseum_DisplayItems
scrdef P_MiningMuseum_DisplayItems
scrdef P_MiningMuseum_DisplayItems
scrdef P_MiningMuseum_DisplayCoalDifferentRegions
scrdef P_MiningMuseum_DisplayCoalDifferentRegions
scrdef P_MiningMuseum_DisplayLamps
scrdef P_MiningMuseum_DisplayLamps
scrdef P_MiningMuseum_DisplayLamps
scrdef P_MiningMuseum_DisplayTools
scrdef P_MiningMuseum_DisplayTools
scrdef P_MiningMuseum_DisplayTools
scrdef P_MiningMuseum_DisplayItems
scrdef P_MiningMuseum_DisplayItems
scrdef P_MiningMuseum_DisplayItems
scrdef P_MiningMuseum_DisplayCategorizedSamples
scrdef P_MiningMuseum_DisplayCategorizedSamples
scrdef_end

P_MiningMuseum_Hiker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_SchoolKidM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_FossilResearcher:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16385, P_MiningMuseum_ExtractingPokemon
	npc_msg 3
	goto_if_unset 4123, P_MiningMuseum_NotYetReady
	// Platino: GetFossilCount VAR_0x8000
	npc_msg 4
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_MiningMuseum_DeclinedRevival
	setvar VAR_SPECIAL_x8001, 0
	setvar VAR_SPECIAL_x8004, 0
	setvar VAR_SPECIAL_x8005, 0
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_x8003
	goto P_MiningMuseum_FossilMenuLoop

P_MiningMuseum_ExtractingPokemon:
	setflag 16385
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_NotYetReady:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_DeclinedRevival:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_FossilMenuLoop:
	setvar VAR_SPECIAL_x8006, 2000
	// Platino: AddMenuEntry VAR_0x8006, VAR_0x8004
	goto P_MiningMuseum_FossilMenuContinue

P_MiningMuseum_FossilMenuContinue:
	goto P_MiningMuseum_FossilMenuLoop

P_MiningMuseum_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_Collector:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_HowCoalIsMade1:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_HowCoalIsMade2:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_HowCoalIsMade3:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_DisplayCoalDifferentRegions:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_DisplayCategorizedSamples:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_DisplayLamps:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_DisplayTools:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_MiningMuseum_DisplayItems:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end


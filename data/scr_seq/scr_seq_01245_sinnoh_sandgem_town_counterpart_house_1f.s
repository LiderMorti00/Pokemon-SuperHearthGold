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


// sandgem_town_counterpart_house_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SandgemTownCounterpartHouse1F_ExpertM
scrdef P_SandgemTownCounterpartHouse1F_Twin
scrdef_end

P_SandgemTownCounterpartHouse1F_ExpertM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: GetNationalDexEnabled VAR_RESULT
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SandgemTownCounterpartHouse1F_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: GetNationalDexEnabled VAR_RESULT
	goto P_SandgemTownCounterpartHouse1F_SameAsMyBigSibling

P_SandgemTownCounterpartHouse1F_SameAsMyBigSibling:
	get_player_gender VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_SandgemTownCounterpartHouse1F_SameAsMyBigSister
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_SandgemTownCounterpartHouse1F_SameAsMyBigBrother
	end

P_SandgemTownCounterpartHouse1F_SameAsMyBigSister:
	buffer_players_name 0
	npc_msg 1
	goto P_SandgemTownCounterpartHouse1F_CloseMessageSameAsMyBigSibling

P_SandgemTownCounterpartHouse1F_SameAsMyBigBrother:
	buffer_players_name 0
	npc_msg 2
	goto P_SandgemTownCounterpartHouse1F_CloseMessageSameAsMyBigSibling

P_SandgemTownCounterpartHouse1F_CloseMessageSameAsMyBigSibling:
	wait_button_or_walk_away
	closemsg
	releaseall
	end


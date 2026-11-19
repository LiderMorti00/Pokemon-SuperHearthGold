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


// celestic_town_pokecenter_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_seq_shg_nurse
scrdef P_CelesticTownPokecenter1F_ExpertF
scrdef P_CelesticTownPokecenter1F_Twin
scrdef P_CelesticTownPokecenter1F_PokefanM
scrdef_end

P_CelesticTownPokecenter1F_ExpertF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTownPokecenter1F_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTownPokecenter1F_PokefanM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4718, P_CelesticTownPokecenter1F_ItsAboutTrust
	npc_msg 2
	// Platino: GetPartyMonFriendship VAR_RESULT, VAR_0x8000
	goto P_CelesticTownPokecenter1F_GiveGreatBall

P_CelesticTownPokecenter1F_ItsAboutTrust:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CelesticTownPokecenter1F_GiveGreatBall:
	npc_msg 4
	goto_if_no_item_space ITEM_GREAT_BALL, 1, P_CelesticTownPokecenter1F_BagIsFull
	giveitem_no_check ITEM_GREAT_BALL, 1
	setflag 4718
	goto P_CelesticTownPokecenter1F_ItsAboutTrust

P_CelesticTownPokecenter1F_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_services.inc"

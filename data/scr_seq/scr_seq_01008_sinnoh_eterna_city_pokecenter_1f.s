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


// eterna_city_pokecenter_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_EternaCityPokecenter1F_SchoolKidM
scrdef P_EternaCityPokecenter1F_BattleGirl
scrdef scr_seq_shg_nurse
scrdef P_EternaCityPokecenter1F_PokemonBreederF
scrdef_end

P_EternaCityPokecenter1F_SchoolKidM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4131, P_EternaCityPokecenter1F_IGotMyPokemonBack
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityPokecenter1F_IGotMyPokemonBack:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityPokecenter1F_BattleGirl:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_EternaCityPokecenter1F_PokemonBreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: CheckPoketchAppRegistered POKETCH_APPID_FRIENDSHIPCHECKER, VAR_RESULT
	// Platino: BufferPartyMonSpecies 0, VAR_0x8000
	npc_msg 3
	// Platino: GetPartyMonFriendship VAR_RESULT, VAR_0x8000
	goto P_EternaCityPokecenter1F_ItSeemsToLikeYou

P_EternaCityPokecenter1F_ItSeemsToLikeYou:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_services.inc"

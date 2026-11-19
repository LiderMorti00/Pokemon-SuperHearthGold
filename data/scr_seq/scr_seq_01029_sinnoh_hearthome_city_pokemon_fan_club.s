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


// hearthome_city_pokemon_fan_club: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_HearthomeCityPokemonFanClub_Gentleman
scrdef P_HearthomeCityPokemonFanClub_Beauty
scrdef P_HearthomeCityPokemonFanClub_Psyduck
scrdef P_HearthomeCityPokemonFanClub_Buneary
scrdef P_HearthomeCityPokemonFanClub_Clefairy
scrdef_end

P_HearthomeCityPokemonFanClub_Gentleman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4153, P_HearthomeCityPokemonFanClub_WeAreNumberOneFanClub
	npc_msg 0
	goto_if_no_item_space ITEM_POFFIN_CASE, 1, P_HearthomeCityPokemonFanClub_BagIsFull
	giveitem_no_check ITEM_POFFIN_CASE, 1
	setflag 4153
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCityPokemonFanClub_WeAreNumberOneFanClub:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCityPokemonFanClub_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_HearthomeCityPokemonFanClub_Beauty:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: BufferPartyMonNickname 0, VAR_0x8000
	npc_msg 3
	// Platino: GetPartyMonFriendship VAR_RESULT, VAR_0x8000
	goto P_HearthomeCityPokemonFanClub_Friendship255

P_HearthomeCityPokemonFanClub_Friendship255:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCityPokemonFanClub_Psyduck:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_PSYDUCK, 0
	npc_msg 5
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCityPokemonFanClub_Buneary:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_BUNEARY, 0
	npc_msg 6
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCityPokemonFanClub_Clefairy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_CLEFAIRY, 0
	npc_msg 7
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end


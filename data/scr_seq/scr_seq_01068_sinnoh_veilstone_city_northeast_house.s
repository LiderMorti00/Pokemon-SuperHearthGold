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


// veilstone_city_northeast_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VeilstoneCityNortheastHouse_PokefanM
scrdef P_VeilstoneCityNortheastHouse_PokefanF
scrdef_end

P_VeilstoneCityNortheastHouse_PokefanM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4182, P_VeilstoneCityNortheastHouse_GalacticsBuildingBugsMe
	goto_if_set 4183, P_VeilstoneCityNortheastHouse_CanYouTakePoryon
	setflag 4183
	npc_msg 0
	goto P_VeilstoneCityNortheastHouse_AcceptPorygonYesNo

P_VeilstoneCityNortheastHouse_GalacticsBuildingBugsMe:
	npc_msg 1
	goto P_VeilstoneCityNortheastHouse_PokefanMEnd

P_VeilstoneCityNortheastHouse_CanYouTakePoryon:
	npc_msg 2
	goto P_VeilstoneCityNortheastHouse_AcceptPorygonYesNo

P_VeilstoneCityNortheastHouse_AcceptPorygonYesNo:
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_VeilstoneCityNortheastHouse_AcceptPorygon
	goto P_VeilstoneCityNortheastHouse_DontAcceptPorygon

P_VeilstoneCityNortheastHouse_PokefanMEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCityNortheastHouse_AcceptPorygon:
	npc_msg 3
	// Platino: PlayFanfare SEQ_FANFA4_sseq
	buffer_players_name 0
	npc_msg 4
	wait_fanfare
	// Platino: GivePokemon SPECIES_PORYGON, 25, ITEM_NONE, VAR_RESULT
	setflag 4182
	npc_msg 5
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_VeilstoneCityNortheastHouse_NicknamePorygon
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_VeilstoneCityNortheastHouse_DontNicknamePorygon
	end

P_VeilstoneCityNortheastHouse_DontAcceptPorygon:
	npc_msg 6
	goto P_VeilstoneCityNortheastHouse_PokefanMEnd

P_VeilstoneCityNortheastHouse_NicknamePorygon:
	closemsg
	// Platino: SubVar VAR_MAP_LOCAL_0x00, 1
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: OpenPokemonNamingScreen VAR_MAP_LOCAL_0x00, VAR_RESULT
	call P_VeilstoneCityNortheastHouse_IncrementRecordPokemonNicknamed
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_VeilstoneCityNortheastHouse_DontNicknamePorygon:
	closemsg
	releaseall
	end

P_VeilstoneCityNortheastHouse_IncrementRecordPokemonNicknamed:
	// Platino: IncrementGameRecord RECORD_POKEMON_NICKNAMED
	return

P_VeilstoneCityNortheastHouse_PokefanF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end


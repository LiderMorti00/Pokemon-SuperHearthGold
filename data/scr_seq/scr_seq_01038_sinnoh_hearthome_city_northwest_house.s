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


// hearthome_city_northwest_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_HearthomeCityNorthwestHouse_Bebe
scrdef_end

P_HearthomeCityNorthwestHouse_Bebe:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4154, P_HearthomeCityNorthwestHouse_AlreadyReceivedEevee
	goto_if_set 4155, P_HearthomeCityNorthwestHouse_SoDoYouWantEevee
	setflag 4155
	npc_msg 0
	goto P_HearthomeCityNorthwestHouse_AcceptEeveeYesNoMenu

P_HearthomeCityNorthwestHouse_AlreadyReceivedEevee:
	// Platino: GetNationalDexEnabled VAR_RESULT
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCityNorthwestHouse_SoDoYouWantEevee:
	npc_msg 2
	goto P_HearthomeCityNorthwestHouse_AcceptEeveeYesNoMenu

P_HearthomeCityNorthwestHouse_AcceptEeveeYesNoMenu:
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_HearthomeCityNorthwestHouse_AcceptEevee
	goto P_HearthomeCityNorthwestHouse_DeclineEevee

P_HearthomeCityNorthwestHouse_AcceptEevee:
	npc_msg 3
	// Platino: PlayFanfare SEQ_FANFA4_sseq
	buffer_players_name 0
	npc_msg 4
	wait_fanfare
	// Platino: GivePokemon SPECIES_EEVEE, 20, ITEM_NONE, VAR_RESULT
	setflag 4154
	npc_msg 5
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_HearthomeCityNorthwestHouse_GiveNickname
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_HearthomeCityNorthwestHouse_DontGiveNickname
	end

P_HearthomeCityNorthwestHouse_DeclineEevee:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_HearthomeCityNorthwestHouse_GiveNickname:
	closemsg
	// Platino: SubVar VAR_MAP_LOCAL_0x00, 1
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: OpenPokemonNamingScreen VAR_MAP_LOCAL_0x00, VAR_RESULT
	call P_HearthomeCityNorthwestHouse_IncrementRecordPokemonNicknamed
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_HearthomeCityNorthwestHouse_DontGiveNickname:
	closemsg
	releaseall
	end

P_HearthomeCityNorthwestHouse_IncrementRecordPokemonNicknamed:
	// Platino: IncrementGameRecord RECORD_POKEMON_NICKNAMED
	return


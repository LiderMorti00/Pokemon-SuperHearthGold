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


// pokemon_mansion_office: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef P_PokemonMansionOffice_MrBacklot
scrdef P_PokemonMansionOffice_OldMan
scrdef P_PokemonMansionOffice_Statue
scrdef P_PokemonMansionOffice_Book
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_TM087
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

P_PokemonMansionOffice_MrBacklot:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4544, P_PokemonMansionOffice_ThereAreCutePokemon
	goto P_PokemonMansionOffice_ThereAreCutePokemon

P_PokemonMansionOffice_ThereAreCutePokemon:
	// Platino: GetTrophyGardenSlot1Species VAR_0x8000
	// Platino: BufferSpeciesNameFromVar 0, VAR_0x8000, 0, 0
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PokemonMansionOffice_OldMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Platino: GetNationalDexEnabled VAR_RESULT
	goto P_PokemonMansionOffice_OldManMessage

P_PokemonMansionOffice_OldManMessage:
	goto_if_set 4544, P_PokemonMansionOffice_ThereWereSomePokemon
	// Platino: CheckGameCompleted VAR_RESULT
	call P_PokemonMansionOffice_MasterIsWonderful
	wait_button_or_walk_away
	closemsg
	// Platino: ApplyMovement LOCALID_OLD_MAN, PokemonMansionOffice_Movement_OldManFaceSouth
	// Platino: WaitMovement 
	releaseall
	end

P_PokemonMansionOffice_ThereWereSomePokemon:
	// Platino: GetTrophyGardenSlot1Species VAR_0x8000
	// Platino: BufferSpeciesNameFromVar 0, VAR_0x8000, 0, 0
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	// Platino: ApplyMovement LOCALID_OLD_MAN, PokemonMansionOffice_Movement_OldManFaceSouth
	// Platino: WaitMovement 
	releaseall
	end

P_PokemonMansionOffice_MasterIsWonderful:
	npc_msg 2
	return

P_PokemonMansionOffice_Statue:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PokemonMansionOffice_Book:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_PokemonMansionOffice_ReadBook
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_PokemonMansionOffice_PutBookBack
	end

P_PokemonMansionOffice_ReadBook:
	npc_msg 5
	goto_if_set 4545, P_PokemonMansionOffice_PutBookBack
	// Platino: CheckHasSeenSpecies SPECIES_MANAPHY, VAR_RESULT
	// Platino: DrawPokemonPreview SPECIES_MANAPHY, GENDER_MALE
	wait_button
	// Platino: RemovePokemonPreview 
	setflag 4545
	npc_msg 6
	goto P_PokemonMansionOffice_BookEnd

P_PokemonMansionOffice_PutBookBack:
	buffer_players_name 0
	npc_msg 7
	goto P_PokemonMansionOffice_BookEnd

P_PokemonMansionOffice_BookEnd:
	wait_button_or_walk_away
	closemsg
	releaseall
	end


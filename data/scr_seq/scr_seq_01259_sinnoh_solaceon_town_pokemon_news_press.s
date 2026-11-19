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


// solaceon_town_pokemon_news_press: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SolaceonTownPokemonNewsPress_GymGuide
scrdef P_SolaceonTownPokemonNewsPress_PokemonBreederM
scrdef P_SolaceonTownPokemonNewsPress_PC
scrdef_end

P_SolaceonTownPokemonNewsPress_GymGuide:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4712, P_SolaceonTownPokemonNewsPress_TryGiveReward
	goto_if_set 4713, P_SolaceonTownPokemonNewsPress_AnotherAssignmentTomorrow
	goto_if_unset 4714, P_SolaceonTownPokemonNewsPress_ExpertWeveBeenLookingFor
	goto P_SolaceonTownPokemonNewsPress_HeresYourAssignment

P_SolaceonTownPokemonNewsPress_TryGiveReward:
	goto_if_no_item_space ITEM_HEART_SCALE, 1, P_SolaceonTownPokemonNewsPress_BagIsFull
	setvar VAR_SPECIAL_x8004, 0
	setvar VAR_SPECIAL_x8005, 3
	goto P_SolaceonTownPokemonNewsPress_GiveReward

P_SolaceonTownPokemonNewsPress_AnotherAssignmentTomorrow:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownPokemonNewsPress_ExpertWeveBeenLookingFor:
	setflag 4714
	npc_msg 1
	goto P_SolaceonTownPokemonNewsPress_SetNewsPressRequestedPokemon

P_SolaceonTownPokemonNewsPress_HeresYourAssignment:
	npc_msg 2
	goto P_SolaceonTownPokemonNewsPress_SetNewsPressRequestedPokemon

P_SolaceonTownPokemonNewsPress_BagIsFull:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownPokemonNewsPress_GiveReward:
	npc_msg 4
	clearflag 4712
	setvar VAR_SPECIAL_x8004, ITEM_HEART_SCALE
	setvar VAR_SPECIAL_x8005, 1
	giveitem_no_check ITEM_HEART_SCALE, 1
	closemsg
	releaseall
	end

P_SolaceonTownPokemonNewsPress_SetNewsPressRequestedPokemon:
	// Platino: GetRandomSeenSpecies VAR_RESULT
	// Platino: SetNewsPressDeadline 1
	// Platino: BufferSpeciesNameFromVar 0, VAR_POKEMON_NEWS_PRESS_REQUESTED_POKEMON, 0, 0
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownPokemonNewsPress_PokemonBreederM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownPokemonNewsPress_PC:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	npc_msg 8
	MultiLocalText 1, 1, 0, 1, VAR_SPECIAL_RESULT
	// Platino: AddMenuEntry MenuEntries_Text_Article_DuskBall, 0
	// Platino: AddMenuEntry MenuEntries_Text_Article_HealBall, 1
	// Platino: AddMenuEntry MenuEntries_Text_Article_QuickBall, 2
	// Platino: AddMenuEntry MenuEntries_Text_Article_DiveBall, 3
	// Platino: AddMenuEntry MenuEntries_Text_Article_Exit, 4
	ShowMulti
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8008, 0
	goto_if_eq P_SolaceonTownPokemonNewsPress_ArticleDuskBall
	compare VAR_SPECIAL_x8008, 1
	goto_if_eq P_SolaceonTownPokemonNewsPress_ArticleHealBall
	compare VAR_SPECIAL_x8008, 2
	goto_if_eq P_SolaceonTownPokemonNewsPress_ArticleQuickBall
	compare VAR_SPECIAL_x8008, 3
	goto_if_eq P_SolaceonTownPokemonNewsPress_ArticleDiveBall
	goto P_SolaceonTownPokemonNewsPress_PCEnd

P_SolaceonTownPokemonNewsPress_ArticleDuskBall:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownPokemonNewsPress_ArticleHealBall:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownPokemonNewsPress_ArticleQuickBall:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownPokemonNewsPress_ArticleDiveBall:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SolaceonTownPokemonNewsPress_PCEnd:
	closemsg
	releaseall
	end


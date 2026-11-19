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


// pokemon_mansion_maids_room: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef P_PokemonMansionMaidsRoom_MaidMiddle
scrdef P_PokemonMansionMaidsRoom_MaidEast
scrdef scr_hidden_3
scrdef P_PokemonMansionMaidsRoom_Bed
scrdef P_PokemonMansionMaidsRoom_Bed
scrdef P_PokemonMansionMaidsRoom_Bed
scrdef P_PokemonMansionMaidsRoom_Bed
scrdef P_PokemonMansionMaidsRoom_Bed
scrdef P_PokemonMansionMaidsRoom_Bed
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_LUXURY_BALL
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_3:
	goto_if_set 4541, scr_hidden_3_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_PROTEIN, 1, scr_hidden_3_full
	setflag 4541
	giveitem_no_check ITEM_PROTEIN, 1
	closemsg
	releaseall
	end
scr_hidden_3_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_3_end:
	end

P_PokemonMansionMaidsRoom_MaidMiddle:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4542, P_PokemonMansionMaidsRoom_TrainerThatPokemonLove
	npc_msg 0
	goto_if_no_item_space ITEM_SOOTHE_BELL, 1, P_PokemonMansionMaidsRoom_BagIsFull
	setflag 4542
	giveitem_no_check ITEM_SOOTHE_BELL, 1
	closemsg
	releaseall
	end

P_PokemonMansionMaidsRoom_TrainerThatPokemonLove:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PokemonMansionMaidsRoom_BagIsFull:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

P_PokemonMansionMaidsRoom_MaidEast:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PokemonMansionMaidsRoom_Bed:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_PokemonMansionMaidsRoom_Rest
	goto P_PokemonMansionMaidsRoom_BedEnd

P_PokemonMansionMaidsRoom_Rest:
	buffer_players_name 0
	npc_msg 4
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: PlayFanfare SEQ_ASA_sseq
	wait_fanfare
	// Platino: HealParty 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	buffer_players_name 0
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_PokemonMansionMaidsRoom_BedEnd:
	closemsg
	releaseall
	end


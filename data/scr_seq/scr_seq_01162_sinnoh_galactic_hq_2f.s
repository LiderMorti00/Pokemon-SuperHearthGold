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


// galactic_hq_2f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef scr_item_1
scrdef P_GalacticHQ2F_Bed
scrdef scr_hidden_3
scrdef scr_hidden_4
scrdef P_GalacticHQ2F_BgSignNapRoom
scrdef P_GalacticHQ2F_BgSignTVRoom
scrdef P_GalacticHQ2F_BgSignCredo
scrdef P_GalacticHQ2F_Refrigerator
scrdef P_GalacticHQ2F_KitchenSink
scrdef P_GalacticHQ2F_KitchenSink
scrdef P_GalacticHQ2F_Bed
scrdef P_GalacticHQ2F_Bed
scrdef P_GalacticHQ2F_Bed
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_MAX_REVIVE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_item_1:
	setvar VAR_SPECIAL_x8008, ITEM_GREEN_SHARD
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

scr_hidden_3:
	goto_if_set 4433, scr_hidden_3_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_POKE_DOLL, 1, scr_hidden_3_full
	setflag 4433
	giveitem_no_check ITEM_POKE_DOLL, 1
	closemsg
	releaseall
	end
scr_hidden_3_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_3_end:
	end

scr_hidden_4:
	goto_if_set 4434, scr_hidden_4_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_MAX_POTION, 1, scr_hidden_4_full
	setflag 4434
	giveitem_no_check ITEM_MAX_POTION, 1
	closemsg
	releaseall
	end
scr_hidden_4_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_4_end:
	end

P_GalacticHQ2F_Bed:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_GalacticHQ2F_TakeARest
	goto P_GalacticHQ2F_BedEnd

P_GalacticHQ2F_TakeARest:
	buffer_players_name 0
	npc_msg 1
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: PlayFanfare SEQ_ASA_sseq
	wait_fanfare
	// Platino: HealParty 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	buffer_players_name 0
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQ2F_BedEnd:
	closemsg
	releaseall
	end

P_GalacticHQ2F_BgSignNapRoom:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQ2F_BgSignTVRoom:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQ2F_BgSignCredo:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQ2F_Refrigerator:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_GalacticHQ2F_KitchenSink:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end


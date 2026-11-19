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


// twinleaf_town: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_TwinleafTown_BreederF
scrdef P_TwinleafTown_Collector
scrdef P_TwinleafTown_Guitarist
scrdef P_TwinleafTown_MapSignpost
scrdef P_TwinleafTown_MailboxPlayer
scrdef P_TwinleafTown_MailboxRival
scrdef scr_hidden_6
scrdef_end

scr_hidden_6:
	goto_if_set 4705, scr_hidden_6_end
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_no_item_space ITEM_ODD_KEYSTONE, 1, scr_hidden_6_full
	setflag 4705
	giveitem_no_check ITEM_ODD_KEYSTONE, 1
	closemsg
	releaseall
	end
scr_hidden_6_full:
	callstd std_bag_is_full
	closemsg
	releaseall
scr_hidden_6_end:
	end

P_TwinleafTown_BreederF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4460, P_TwinleafTown_HelpingPutTogetherPokedex
	goto P_TwinleafTown_YouLookGoodTogether

P_TwinleafTown_HelpingPutTogetherPokedex:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTown_YouLookGoodTogether:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTown_Collector:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTown_Guitarist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4460, P_TwinleafTown_EveryoneGoesOnAdventures
	goto P_TwinleafTown_RivalWentTearingOffOuch

P_TwinleafTown_EveryoneGoesOnAdventures:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTown_RivalWentTearingOffOuch:
	// Platino: BufferRivalName 0
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTown_MapSignpost:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTown_MailboxPlayer:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_TwinleafTown_MailboxRival:
	// Platino: BufferRivalName 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end


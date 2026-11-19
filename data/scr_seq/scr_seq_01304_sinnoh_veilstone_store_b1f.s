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


// veilstone_store_b1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VeilstoneStoreB1F_Attendant1
scrdef scr_seq_shg_mart
scrdef scr_seq_shg_mart
scrdef P_VeilstoneStoreB1F_Socialite1
scrdef P_VeilstoneStoreB1F_Attendant2
scrdef scr_seq_shg_mart
scrdef scr_seq_shg_mart
scrdef P_VeilstoneStoreB1F_Socialite2
scrdef P_VeilstoneStoreB1F_Gentleman
scrdef P_VeilstoneStoreB1F_Directory
scrdef_end

P_VeilstoneStoreB1F_Attendant1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStoreB1F_Socialite1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStoreB1F_Attendant2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStoreB1F_Socialite2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStoreB1F_Gentleman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStoreB1F_Directory:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_services.inc"

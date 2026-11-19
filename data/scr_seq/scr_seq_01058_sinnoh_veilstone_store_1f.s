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


// veilstone_store_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VeilstoneStore1F_Attendant
scrdef P_VeilstoneStore1F_MiddleAgedMan
scrdef P_VeilstoneStore1F_Lady
scrdef P_VeilstoneStore1F_Socialite
scrdef scr_seq_shg_mart
scrdef scr_seq_shg_mart
scrdef P_VeilstoneStore1F_BgSign
scrdef P_VeilstoneStore1F_Directory
scrdef_end

P_VeilstoneStore1F_Attendant:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore1F_MiddleAgedMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore1F_Lady:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore1F_Socialite:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4176, P_VeilstoneStore1F_Socialite_AfterMaskGiven
	// Platino: GetPlayerStarterSpecies VAR_RESULT
	// Platino: BufferAccessoryNameWithArticle 0, LOCAL_VAR_ACCESSORY_ID
	npc_msg 3
	setflag 4176
	closemsg
	releaseall
	end

P_VeilstoneStore1F_Socialite_AfterMaskGiven:
	// Platino: BufferAccessoryName 0, VAR_VEILSTONE_STORE_1F_ACCESSORY_STARTER_MASK
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore1F_BgSign:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneStore1F_Directory:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_services.inc"

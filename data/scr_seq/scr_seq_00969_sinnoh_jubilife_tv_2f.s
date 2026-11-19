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


// jubilife_tv_2f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_JubilifeTV2F_Idol
scrdef P_JubilifeTV2F_GymGuide
scrdef P_JubilifeTV2F_Roughneck
scrdef_end

P_JubilifeTV2F_Idol:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV2F_GymGuide:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4100, P_JubilifeTV2F_IHopeYouCollectAccessories
	// Platino: GetPlayerStarterSpecies VAR_RESULT
	// Platino: BufferAccessoryNameWithArticle 0, VAR_0x8004
	npc_msg 1
	setvar VAR_SPECIAL_x8005, 1
	setflag 4100
	closemsg
	releaseall
	end

P_JubilifeTV2F_IHopeYouCollectAccessories:
	// Platino: BufferAccessoryName 0, VAR_JUBILIFE_TV_2F_ACCESSORY_STARTER_MASK
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV2F_Roughneck:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


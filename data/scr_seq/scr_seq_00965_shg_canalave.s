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

// Scripts de Ciudad Canal (Sinnoh). Los textos están en MSG_BANK_SHG.

.data


scrdef scr_seq_shg_canalave_000
scrdef_end

scr_seq_shg_canalave_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	msgbox_extern MSG_BANK_SHG, SHG_MSG_CANALAVE_ASK_OLIVINE
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _to_olivine
	msgbox_extern MSG_BANK_SHG, SHG_MSG_CANALAVE_ASK_VERMILION
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _to_vermilion
	msgbox_extern MSG_BANK_SHG, SHG_MSG_SAILOR_DECLINE
	closemsg
	releaseall
	end

_to_olivine:
	msgbox_extern MSG_BANK_SHG, SHG_MSG_SAILOR_DEPART
	closemsg
	play_se SEQ_SE_DP_SHIP01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_P01R0101, 0, SHG_PORT_RETURN_X, SHG_PORT_RETURN_Z, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_to_vermilion:
	msgbox_extern MSG_BANK_SHG, SHG_MSG_SAILOR_DEPART
	closemsg
	play_se SEQ_SE_DP_SHIP01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_P01R0103, 0, SHG_PORT_RETURN_X, SHG_PORT_RETURN_Z, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

// Marinero de Ciudad Canal: barco a Olivo y Carmín. Textos en MSG_BANK_SHG.

scr_seq_shg_canalave_sailor:
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

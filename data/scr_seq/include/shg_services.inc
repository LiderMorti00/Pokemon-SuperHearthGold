// Enfermera y dependiente de Sinnoh.

scr_seq_shg_nurse:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_shg_mart:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 0
	callstd std_pokemart
	releaseall
	end


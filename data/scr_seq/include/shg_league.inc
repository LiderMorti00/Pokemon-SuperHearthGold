// Liga Pokémon de Sinnoh: guardia, Alto Mando y Cintia. Textos en MSG_BANK_SHG.

// Guardia de la puerta de la Liga: con las 8 medallas de Sinnoh empieza una ronda del Alto Mando
scr_seq_shg_league_guard:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_SHG_BADGE_COAL, _guard_no
	goto_if_unset FLAG_SHG_BADGE_FOREST, _guard_no
	goto_if_unset FLAG_SHG_BADGE_RELIC, _guard_no
	goto_if_unset FLAG_SHG_BADGE_COBBLE, _guard_no
	goto_if_unset FLAG_SHG_BADGE_FEN, _guard_no
	goto_if_unset FLAG_SHG_BADGE_MINE, _guard_no
	goto_if_unset FLAG_SHG_BADGE_ICICLE, _guard_no
	goto_if_unset FLAG_SHG_BADGE_BEACON, _guard_no
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_GUARD_OK
	closemsg
	clearflag FLAG_SHG_DEFEATED_AARON
	clearflag FLAG_SHG_DEFEATED_BERTHA
	clearflag FLAG_SHG_DEFEATED_FLINT
	clearflag FLAG_SHG_DEFEATED_LUCIAN
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_SHG_POKEMON_LEAGUE_AARON_ROOM, 0, 8, 10, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_guard_no:
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_NEED_BADGES
	closemsg
	releaseall
	end

scr_seq_shg_e4_aaron:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_DEFEATED_AARON, _aaron_after
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_AARON_INTRO
	closemsg
	trainer_battle 1116, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _shg_league_lost
	setflag FLAG_SHG_DEFEATED_AARON
	play_se SEQ_SE_DP_KI_GASYAN
	hide_person 1
	goto _aaron_after

_aaron_after:
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_AARON_AFTER
	closemsg
	releaseall
	end

scr_seq_shg_e4_bertha:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_DEFEATED_BERTHA, _bertha_after
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_BERTHA_INTRO
	closemsg
	trainer_battle 1117, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _shg_league_lost
	setflag FLAG_SHG_DEFEATED_BERTHA
	play_se SEQ_SE_DP_KI_GASYAN
	hide_person 1
	goto _bertha_after

_bertha_after:
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_BERTHA_AFTER
	closemsg
	releaseall
	end

scr_seq_shg_e4_flint:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_DEFEATED_FLINT, _flint_after
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_FLINT_INTRO
	closemsg
	trainer_battle 1118, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _shg_league_lost
	setflag FLAG_SHG_DEFEATED_FLINT
	play_se SEQ_SE_DP_KI_GASYAN
	hide_person 1
	goto _flint_after

_flint_after:
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_FLINT_AFTER
	closemsg
	releaseall
	end

scr_seq_shg_e4_lucian:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_DEFEATED_LUCIAN, _lucian_after
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_LUCIAN_INTRO
	closemsg
	trainer_battle 1119, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _shg_league_lost
	setflag FLAG_SHG_DEFEATED_LUCIAN
	play_se SEQ_SE_DP_KI_GASYAN
	hide_person 1
	goto _lucian_after

_lucian_after:
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_LUCIAN_AFTER
	closemsg
	releaseall
	end

scr_seq_shg_cynthia:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_CYNTHIA_INTRO
	closemsg
	trainer_battle 1120, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _shg_league_lost
	setflag FLAG_SHG_SINNOH_CHAMPION
	msgbox_extern MSG_BANK_SHG, SHG_MSG_LEAGUE_CYNTHIA_WIN
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_SHG_POKEMON_LEAGUE_NORTH_POKECENTER_1F, 0, 11, 5, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_shg_league_lost:
	white_out
	releaseall
	end

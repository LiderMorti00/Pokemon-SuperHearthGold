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

// Líderes de los gimnasios de Sinnoh. Todos los gimnasios usan este archivo de scripts y el
// líder de cada uno es el objeto con el script N (1-8, en el orden de Platino).
// Los textos están en MSG_BANK_SHG; las medallas son flags (FLAG_SHG_BADGE_*).


.data

scrdef scr_seq_shg_gym_roark
scrdef scr_seq_shg_gym_gardenia
scrdef scr_seq_shg_gym_fantina
scrdef scr_seq_shg_gym_maylene
scrdef scr_seq_shg_gym_wake
scrdef scr_seq_shg_gym_byron
scrdef scr_seq_shg_gym_candice
scrdef scr_seq_shg_gym_volkner
scrdef_end

// roark: MT -> flag 1040
scr_seq_shg_gym_roark:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_BADGE_COAL, _roark_beaten
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_ROARK_INTRO
	closemsg
	trainer_battle 1108, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _roark_lost
	setflag FLAG_SHG_BADGE_COAL
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_ROARK_INTRO + 1
	buffer_players_name 0
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_ROARK_INTRO + 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	goto _roark_tm

_roark_tm:
	goto_if_no_item_space ITEM_TM076, 1, _roark_bag_full
	callstd std_give_item_verbose
	setflag 1040
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_ROARK_INTRO + 3
	closemsg
	releaseall
	end

_roark_bag_full:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_roark_beaten:
	goto_if_unset 1040, _roark_tm
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_ROARK_INTRO + 3
	closemsg
	releaseall
	end

_roark_lost:
	white_out
	releaseall
	end

// gardenia: MT -> flag 1041
scr_seq_shg_gym_gardenia:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_BADGE_FOREST, _gardenia_beaten
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_GARDENIA_INTRO
	closemsg
	trainer_battle 1109, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _gardenia_lost
	setflag FLAG_SHG_BADGE_FOREST
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_GARDENIA_INTRO + 1
	buffer_players_name 0
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_GARDENIA_INTRO + 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	goto _gardenia_tm

_gardenia_tm:
	goto_if_no_item_space ITEM_TM086, 1, _gardenia_bag_full
	callstd std_give_item_verbose
	setflag 1041
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_GARDENIA_INTRO + 3
	closemsg
	releaseall
	end

_gardenia_bag_full:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_gardenia_beaten:
	goto_if_unset 1041, _gardenia_tm
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_GARDENIA_INTRO + 3
	closemsg
	releaseall
	end

_gardenia_lost:
	white_out
	releaseall
	end

// fantina: MT -> flag 1042
scr_seq_shg_gym_fantina:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_BADGE_RELIC, _fantina_beaten
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_FANTINA_INTRO
	closemsg
	trainer_battle 1110, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _fantina_lost
	setflag FLAG_SHG_BADGE_RELIC
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_FANTINA_INTRO + 1
	buffer_players_name 0
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_FANTINA_INTRO + 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	goto _fantina_tm

_fantina_tm:
	goto_if_no_item_space ITEM_TM065, 1, _fantina_bag_full
	callstd std_give_item_verbose
	setflag 1042
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_FANTINA_INTRO + 3
	closemsg
	releaseall
	end

_fantina_bag_full:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_fantina_beaten:
	goto_if_unset 1042, _fantina_tm
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_FANTINA_INTRO + 3
	closemsg
	releaseall
	end

_fantina_lost:
	white_out
	releaseall
	end

// maylene: MT -> flag 1043
scr_seq_shg_gym_maylene:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_BADGE_COBBLE, _maylene_beaten
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_MAYLENE_INTRO
	closemsg
	trainer_battle 1111, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _maylene_lost
	setflag FLAG_SHG_BADGE_COBBLE
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_MAYLENE_INTRO + 1
	buffer_players_name 0
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_MAYLENE_INTRO + 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	goto _maylene_tm

_maylene_tm:
	goto_if_no_item_space ITEM_TM060, 1, _maylene_bag_full
	callstd std_give_item_verbose
	setflag 1043
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_MAYLENE_INTRO + 3
	closemsg
	releaseall
	end

_maylene_bag_full:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_maylene_beaten:
	goto_if_unset 1043, _maylene_tm
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_MAYLENE_INTRO + 3
	closemsg
	releaseall
	end

_maylene_lost:
	white_out
	releaseall
	end

// wake: MT -> flag 1044
scr_seq_shg_gym_wake:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_BADGE_FEN, _wake_beaten
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_CRASHER_WAKE_INTRO
	closemsg
	trainer_battle 1112, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _wake_lost
	setflag FLAG_SHG_BADGE_FEN
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_CRASHER_WAKE_INTRO + 1
	buffer_players_name 0
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_CRASHER_WAKE_INTRO + 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	goto _wake_tm

_wake_tm:
	goto_if_no_item_space ITEM_TM055, 1, _wake_bag_full
	callstd std_give_item_verbose
	setflag 1044
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_CRASHER_WAKE_INTRO + 3
	closemsg
	releaseall
	end

_wake_bag_full:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_wake_beaten:
	goto_if_unset 1044, _wake_tm
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_CRASHER_WAKE_INTRO + 3
	closemsg
	releaseall
	end

_wake_lost:
	white_out
	releaseall
	end

// byron: MT -> flag 1045
scr_seq_shg_gym_byron:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_BADGE_MINE, _byron_beaten
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_BYRON_INTRO
	closemsg
	trainer_battle 1113, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _byron_lost
	setflag FLAG_SHG_BADGE_MINE
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_BYRON_INTRO + 1
	buffer_players_name 0
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_BYRON_INTRO + 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	goto _byron_tm

_byron_tm:
	goto_if_no_item_space ITEM_TM091, 1, _byron_bag_full
	callstd std_give_item_verbose
	setflag 1045
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_BYRON_INTRO + 3
	closemsg
	releaseall
	end

_byron_bag_full:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_byron_beaten:
	goto_if_unset 1045, _byron_tm
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_BYRON_INTRO + 3
	closemsg
	releaseall
	end

_byron_lost:
	white_out
	releaseall
	end

// candice: MT -> flag 1046
scr_seq_shg_gym_candice:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_BADGE_ICICLE, _candice_beaten
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_CANDICE_INTRO
	closemsg
	trainer_battle 1114, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _candice_lost
	setflag FLAG_SHG_BADGE_ICICLE
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_CANDICE_INTRO + 1
	buffer_players_name 0
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_CANDICE_INTRO + 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	goto _candice_tm

_candice_tm:
	goto_if_no_item_space ITEM_TM072, 1, _candice_bag_full
	callstd std_give_item_verbose
	setflag 1046
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_CANDICE_INTRO + 3
	closemsg
	releaseall
	end

_candice_bag_full:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_candice_beaten:
	goto_if_unset 1046, _candice_tm
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_CANDICE_INTRO + 3
	closemsg
	releaseall
	end

_candice_lost:
	white_out
	releaseall
	end

// volkner: MT -> flag 1047
scr_seq_shg_gym_volkner:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SHG_BADGE_BEACON, _volkner_beaten
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_VOLKNER_INTRO
	closemsg
	trainer_battle 1115, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _volkner_lost
	setflag FLAG_SHG_BADGE_BEACON
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_VOLKNER_INTRO + 1
	buffer_players_name 0
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_VOLKNER_INTRO + 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	goto _volkner_tm

_volkner_tm:
	goto_if_no_item_space ITEM_TM057, 1, _volkner_bag_full
	callstd std_give_item_verbose
	setflag 1047
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_VOLKNER_INTRO + 3
	closemsg
	releaseall
	end

_volkner_bag_full:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_volkner_beaten:
	goto_if_unset 1047, _volkner_tm
	msgbox_extern MSG_BANK_SHG, SHG_MSG_GYM_VOLKNER_INTRO + 3
	closemsg
	releaseall
	end

_volkner_lost:
	white_out
	releaseall
	end

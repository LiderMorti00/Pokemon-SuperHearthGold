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


// old_chateau_back_middle_west_room: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_item_0
scrdef P_OldChateauBackMiddleWestRoom_TV
scrdef P_OldChateauBackMiddleWestRoom_TV
scrdef_end

scr_item_0:
	setvar VAR_SPECIAL_x8008, ITEM_DREAD_PLATE
	setvar VAR_SPECIAL_x8009, 1
	callstd std_itemball_variadic
	end

P_OldChateauBackMiddleWestRoom_TV:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 4424, P_OldChateauBackMiddleWestRoom_TVHasMalevolentFeel
	goto_if_set 4425, P_OldChateauBackMiddleWestRoom_TVHasMalevolentFeel
	GetTimePeriod VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_lt P_OldChateauBackMiddleWestRoom_TVHasMalevolentFeel
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_OldChateauBackMiddleWestRoom_End
	buffer_players_name 0
	npc_msg 1
	closemsg
	play_cry SPECIES_ROTOM, 0
	wait_cry
	setflag 4425
	// Platino: StartWildBattle SPECIES_ROTOM, 20
	// Platino: CheckDidNotCapture VAR_RESULT
	goto P_OldChateauBackMiddleWestRoom_RotomDisappearedIntoTV

P_OldChateauBackMiddleWestRoom_TVHasMalevolentFeel:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OldChateauBackMiddleWestRoom_End:
	closemsg
	releaseall
	end

P_OldChateauBackMiddleWestRoom_RotomDisappearedIntoTV:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


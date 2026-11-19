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


// canalave_library_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_CanalaveLibrary1F_Receptionist
scrdef P_CanalaveLibrary1F_Lass
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Shelves
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Shelves
scrdef P_CanalaveLibrary1F_Shelves
scrdef P_CanalaveLibrary1F_Shelves
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Bookshelves
scrdef P_CanalaveLibrary1F_Shelves
scrdef P_CanalaveLibrary1F_Shelves
scrdef P_CanalaveLibrary1F_Shelves
scrdef P_CanalaveLibrary1F_Shelves
scrdef P_CanalaveLibrary1F_Shelves
scrdef_end

P_CanalaveLibrary1F_Receptionist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4108, P_CanalaveLibrary1F_ThatWasntMeScreaming
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary1F_ThatWasntMeScreaming:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary1F_Lass:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 4108, P_CanalaveLibrary1F_ImAllAgitated
	npc_msg 2
	faceplayer
	npc_msg 3
	closemsg
	// Platino: ApplyMovement LOCALID_LASS, CanalaveLibrary1F_Movement_LassFaceNorth
	// Platino: WaitMovement 
	releaseall
	end

P_CanalaveLibrary1F_ImAllAgitated:
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary1F_Bookshelves:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveLibrary1F_Shelves:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end


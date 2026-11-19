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


// veilstone_city_southwest_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_VeilstoneCitySouthwestHouse_Beauty
scrdef P_VeilstoneCitySouthwestHouse_Youngster
scrdef P_VeilstoneCitySouthwestHouse_Pachirisu
scrdef_end

P_VeilstoneCitySouthwestHouse_Beauty:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4184, P_VeilstoneCitySouthwestHouse_ComeBackTomorrow
	npc_msg 0
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq P_VeilstoneCitySouthwestHouse_ImNotShady
	npc_msg 1
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: SelectMoveTutorPokemon 
	// Platino: GetSelectedPartySlot VAR_MAP_LOCAL_0x00
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	npc_msg 2
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: BufferPartyMonNickname 0, VAR_MAP_LOCAL_0x00
	npc_msg 3
	setflag 4184
	// Platino: IncreasePartyMonFriendship 3, VAR_MAP_LOCAL_0x00
	// Platino: TryGetRandomMassageGirlAccessory VAR_0x8004
	npc_msg 4
	setvar VAR_SPECIAL_x8005, 1
	goto P_VeilstoneCitySouthwestHouse_DropByAgainTomorrow

P_VeilstoneCitySouthwestHouse_ComeBackTomorrow:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCitySouthwestHouse_ImNotShady:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCitySouthwestHouse_DropByAgainTomorrow:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCitySouthwestHouse_Youngster:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_VeilstoneCitySouthwestHouse_Pachirisu:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	play_cry SPECIES_PACHIRISU, 0
	npc_msg 9
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end


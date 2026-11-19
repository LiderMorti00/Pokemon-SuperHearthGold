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


// sunyshore_city_east_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SunyshoreCityEastHouse_Scientist
scrdef_end

P_SunyshoreCityEastHouse_Scientist:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_SunyshoreCityEastHouse_TryCheckNatures

P_SunyshoreCityEastHouse_TryCheckNatures:
	// Platino: CheckPoketchAppRegistered POKETCH_APPID_ROULETTE, VAR_RESULT
	// Platino: CheckPoketchAppRegistered POKETCH_APPID_DOTART, VAR_RESULT
	// Platino: CheckPoketchAppRegistered POKETCH_APPID_CALENDAR, VAR_RESULT
	goto P_SunyshoreCityEastHouse_CheckSeriousNature

P_SunyshoreCityEastHouse_CheckSeriousNature:
	// Platino: FindPartySlotWithNature VAR_0x8000, NATURE_SERIOUS
	goto P_SunyshoreCityEastHouse_GiveCalendarApp

P_SunyshoreCityEastHouse_GiveCalendarApp:
	// Platino: BufferPartyMonSpecies 0, VAR_0x8000
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end


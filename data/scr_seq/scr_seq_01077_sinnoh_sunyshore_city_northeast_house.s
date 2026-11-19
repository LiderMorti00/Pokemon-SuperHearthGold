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


// sunyshore_city_northeast_house: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_SunyshoreCityEastHouse_Julia
scrdef_end

P_SunyshoreCityEastHouse_Julia:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4190, P_SunyshoreCityNortheastHouse_GoToTellAnotherStoryTomorrow
	goto_if_set 4191, P_SunyshoreCityNortheastHouse_PleaseVisitTomorrow
	goto_if_unset 4192, P_SunyshoreCityNortheastHouse_TellMeStories
	call P_SunyshoreCityNortheastHouse_CheckHasTodaysRibbon
	goto P_SunyshoreCityNortheastHouse_AskDailyStory

P_SunyshoreCityNortheastHouse_GoToTellAnotherStoryTomorrow:
	goto P_SunyshoreCityNortheastHouse_TellAnotherStoryTomorrow

P_SunyshoreCityNortheastHouse_PleaseVisitTomorrow:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCityNortheastHouse_TellMeStories:
	setflag 4192
	setflag 4191
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCityNortheastHouse_CheckHasTodaysRibbon:
	goto P_SunyshoreCityNortheastHouse_CheckHasRibbonSnooze

P_SunyshoreCityNortheastHouse_AskDailyStory:
	goto P_SunyshoreCityNortheastHouse_AskSaturdayStory

P_SunyshoreCityNortheastHouse_TellAnotherStoryTomorrow:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCityNortheastHouse_CheckHasRibbonSnooze:
	// Platino: GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_SNOOZE
	return

P_SunyshoreCityNortheastHouse_AskSaturdayStory:
	npc_msg 3
	wait_button
	closemsg
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ChooseCustomMessageWord VAR_RESULT, VAR_0x8000
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	// Platino: BufferCustomMessageWord 0, VAR_0x8000
	npc_msg 4
	setflag 4190
	// Platino: SetPartyMonRibbon VAR_0x8002, RIBBON_SNOOZE
	// Platino: BufferRibbonName 3, RIBBON_SNOOZE
	goto P_SunyshoreCityNortheastHouse_GiveRibbon

P_SunyshoreCityNortheastHouse_GiveRibbon:
	// Platino: BufferPartyMonSpecies 1, VAR_0x8002
	buffer_players_name 2
	npc_msg 5
	// Platino: PlayFanfare SEQ_FANFA1_sseq
	npc_msg 6
	wait_fanfare
	npc_msg 7
	goto P_SunyshoreCityNortheastHouse_TellAnotherStoryTomorrow


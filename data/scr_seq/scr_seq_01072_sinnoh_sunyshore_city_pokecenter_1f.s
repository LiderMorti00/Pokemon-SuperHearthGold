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


// sunyshore_city_pokecenter_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef scr_seq_shg_nurse
scrdef P_SunyshoreCityPokecenter1F_OldMan
scrdef P_SunyshoreCityPokecenter1F_NinjaBoy
scrdef P_SunyshoreCityPokecenter1F_MiddleAgedMan
scrdef_end

P_SunyshoreCityPokecenter1F_OldMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCityPokecenter1F_NinjaBoy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_SunyshoreCityPokecenter1F_AwesomelyCoolEightBadges

P_SunyshoreCityPokecenter1F_AwesomelyCoolEightBadges:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_SunyshoreCityPokecenter1F_MiddleAgedMan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_services.inc"

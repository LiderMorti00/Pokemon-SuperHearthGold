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


// canalave_city_mart: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_CanalaveCityMart_Lady
scrdef P_CanalaveCityMart_Pokefan
scrdef scr_seq_shg_mart
scrdef scr_seq_shg_mart
scrdef_end

P_CanalaveCityMart_Lady:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_item_name 0, ITEM_MAX_POTION
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_CanalaveCityMart_Pokefan:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_item_name 0, ITEM_X_ATTACK
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_services.inc"

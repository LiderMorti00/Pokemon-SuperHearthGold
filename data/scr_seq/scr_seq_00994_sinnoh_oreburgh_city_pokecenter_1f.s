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


// oreburgh_city_pokecenter_1f: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_OreburghCityPokecenter1F_Psychic
scrdef P_OreburghCityPokecenter1F_AceTrainerF
scrdef P_OreburghCityPokecenter1F_NinjaBoy
scrdef scr_seq_shg_nurse
scrdef P_OreburghCityPokecenter1F_Gentleman
scrdef P_OreburghCityPokecenter1F_KidWithNDSWest
scrdef P_OreburghCityPokecenter1F_KidWithNDSEast
scrdef_end

P_OreburghCityPokecenter1F_Psychic:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 4119, P_OreburghCityPokecenter1F_WhatKindOfTrainerDoYouLike
	npc_msg 0
	goto P_OreburghCityPokecenter1F_BeWhichKindOfTrainer

P_OreburghCityPokecenter1F_WhatKindOfTrainerDoYouLike:
	// Platino: BufferTrainerClassFromAppearance 0
	npc_msg 1
	goto P_OreburghCityPokecenter1F_BeWhichKindOfTrainer

P_OreburghCityPokecenter1F_BeWhichKindOfTrainer:
	npc_msg 2
	// Platino: LoadTrainerAppearances 
	// Platino: InitGlobalTextMenu 1, 1, 0, VAR_RESULT
	// Platino: AddMenuEntryImm MenuEntries_Text_TrainerAppearanceVariant1, 0
	// Platino: AddMenuEntryImm MenuEntries_Text_TrainerAppearanceVariant2, 1
	// Platino: AddMenuEntryImm MenuEntries_Text_TrainerAppearanceVariant3, 2
	// Platino: AddMenuEntryImm MenuEntries_Text_TrainerAppearanceVariant4, 3
	// Platino: AddMenuEntryImm MenuEntries_Text_TrainerAppearancesExit, 4
	// Platino: ShowMenu 
	// Platino: GetTrainerInfoTrainerClass VAR_0x8004, VAR_0x8005
	// Platino: BufferTrainerClassNameWithArticle 0, VAR_0x8005
	// Platino: CapitalizeFirstLetter 0
	npc_msg 3
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq P_OreburghCityPokecenter1F_SetTrainerClass
	goto P_OreburghCityPokecenter1F_BeWhichKindOfTrainer

P_OreburghCityPokecenter1F_SetTrainerClass:
	// Platino: BufferTrainerClassNameWithArticle 0, VAR_0x8005
	npc_msg 4
	setflag 4119
	// Platino: CalculateTrainerInfoAppearance VAR_0x8004, VAR_0x8005
	// Platino: SetTrainerInfoAppearance VAR_0x8005
	goto P_OreburghCityPokecenter1F_IllJustTalkToYouLater

P_OreburghCityPokecenter1F_IllJustTalkToYouLater:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityPokecenter1F_AceTrainerF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityPokecenter1F_NinjaBoy:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityPokecenter1F_Gentleman:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto P_OreburghCityPokecenter1F_WhatOrWhoIsTeamGalactic

P_OreburghCityPokecenter1F_WhatOrWhoIsTeamGalactic:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityPokecenter1F_KidWithNDSWest:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_OreburghCityPokecenter1F_KidWithNDSEast:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

#include "data/scr_seq/include/shg_services.inc"

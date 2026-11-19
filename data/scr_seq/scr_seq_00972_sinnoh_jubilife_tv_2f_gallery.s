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


// jubilife_tv_2f_gallery: generado por tools/sinnoh/sync_events.py a partir de Platino.

.data

scrdef P_JubilifeTV2FGallery_Hiker
scrdef P_JubilifeTV2FGallery_PokemonBreederM
scrdef P_JubilifeTV2FGallery_Twin
scrdef P_JubilifeTV2FGallery_Frame0
scrdef P_JubilifeTV2FGallery_Frame1
scrdef P_JubilifeTV2FGallery_Frame2
scrdef P_JubilifeTV2FGallery_Frame3
scrdef P_JubilifeTV2FGallery_Frame4
scrdef P_JubilifeTV2FGallery_Frame5
scrdef P_JubilifeTV2FGallery_Frame6
scrdef P_JubilifeTV2FGallery_Frame7
scrdef P_JubilifeTV2FGallery_Frame8
scrdef P_JubilifeTV2FGallery_Frame9
scrdef P_JubilifeTV2FGallery_Frame10
scrdef_end

P_JubilifeTV2FGallery_Hiker:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	call_if_unset 4101, P__006F
	end

P__006F:
	return

P_JubilifeTV2FGallery_PokemonBreederM:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV2FGallery_Twin:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

P_JubilifeTV2FGallery_Frame0:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: DressUpPhotoHasData 0, VAR_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDressUpPhoto 0, VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_JubilifeTV2FGallery_Frame1:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: DressUpPhotoHasData 1, VAR_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDressUpPhoto 1, VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_JubilifeTV2FGallery_Frame2:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: DressUpPhotoHasData 2, VAR_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDressUpPhoto 2, VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_JubilifeTV2FGallery_Frame3:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: DressUpPhotoHasData 3, VAR_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDressUpPhoto 3, VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_JubilifeTV2FGallery_Frame4:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: DressUpPhotoHasData 4, VAR_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDressUpPhoto 4, VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_JubilifeTV2FGallery_Frame5:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: DressUpPhotoHasData 5, VAR_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDressUpPhoto 5, VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_JubilifeTV2FGallery_Frame6:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: DressUpPhotoHasData 6, VAR_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDressUpPhoto 6, VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_JubilifeTV2FGallery_Frame7:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: DressUpPhotoHasData 7, VAR_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDressUpPhoto 7, VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_JubilifeTV2FGallery_Frame8:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: DressUpPhotoHasData 8, VAR_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDressUpPhoto 8, VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_JubilifeTV2FGallery_Frame9:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: DressUpPhotoHasData 9, VAR_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDressUpPhoto 9, VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end

P_JubilifeTV2FGallery_Frame10:
	play_se SEQ_SE_DP_SELECT
	lockall
	// Platino: DressUpPhotoHasData 10, VAR_RESULT
	// Platino: FadeScreenOut 
	// Platino: WaitFadeScreen 
	// Platino: ShowDressUpPhoto 10, VAR_RESULT
	// Platino: ReturnToField 
	// Platino: FadeScreenIn 
	// Platino: WaitFadeScreen 
	releaseall
	end


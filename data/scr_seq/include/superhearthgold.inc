// Constantes comunes de Pokémon SuperHearthGold para los scripts de campo.

// Banco de textos propio (data/text/854.txt)
.equ MSG_BANK_SHG, 854

// Mensajes de MSG_BANK_SHG
.equ SHG_MSG_OAK_SINNOH, 0
.equ SHG_MSG_SAILOR_NO_PERMISSION, 1
.equ SHG_MSG_SAILOR_ASK_SINNOH, 2
.equ SHG_MSG_SAILOR_DEPART, 3
.equ SHG_MSG_SAILOR_DECLINE, 4
.equ SHG_MSG_CANALAVE_ASK_OLIVINE, 5
.equ SHG_MSG_CANALAVE_ASK_VERMILION, 6

// Flags propios: se usan flags de objetos ocultos sin uso de HGSS (1031-1080)
.equ FLAG_SHG_SINNOH_UNLOCKED, 1031   // el Prof. Oak ha dado permiso para viajar a Sinnoh

// Flag que pone el combate contra Red en la cima del Monte Plateado
.equ FLAG_SHG_DEFEATED_RED, FLAG_UNK_25F

// IDs de HGSS de los mapas de Sinnoh (MAP_SHG_*), generados con los datos de Platino
.include "data/scr_seq/include/sinnoh_maps.inc"

// Llegada en barco al muelle de Ciudad Canal (coordenadas de la matriz de Sinnoh recortada;
// en Platino es (45, 749)) y regreso a los puertos de Olivo y Carmín.
.equ SHG_CANALAVE_DOCK_X, 45
.equ SHG_CANALAVE_DOCK_Z, 589
.equ SHG_PORT_RETURN_X, 7
.equ SHG_PORT_RETURN_Z, 7

// --- Gimnasios de Sinnoh (scr_seq_00966_shg_sinnoh_gyms.s) ---
.equ SHG_MSG_GYM_ROARK_INTRO, 7
.equ SHG_MSG_GYM_GARDENIA_INTRO, 11
.equ SHG_MSG_GYM_FANTINA_INTRO, 15
.equ SHG_MSG_GYM_MAYLENE_INTRO, 19
.equ SHG_MSG_GYM_CRASHER_WAKE_INTRO, 23
.equ SHG_MSG_GYM_BYRON_INTRO, 27
.equ SHG_MSG_GYM_CANDICE_INTRO, 31
.equ SHG_MSG_GYM_VOLKNER_INTRO, 35
// intro, intro+1 = derrota, intro+2 = medalla, intro+3 = después
.equ SHG_MSG_LEAGUE_NEED_BADGES, 39

// Medallas de Sinnoh (de momento como flags; la caja de medallas de Platino es de la fase 5)
.equ FLAG_SHG_BADGE_COAL, 1032
.equ FLAG_SHG_BADGE_FOREST, 1033
.equ FLAG_SHG_BADGE_RELIC, 1034
.equ FLAG_SHG_BADGE_COBBLE, 1035
.equ FLAG_SHG_BADGE_FEN, 1036
.equ FLAG_SHG_BADGE_MINE, 1037
.equ FLAG_SHG_BADGE_ICICLE, 1038
.equ FLAG_SHG_BADGE_BEACON, 1039

// --- Liga Pokémon de Sinnoh (scr_seq_00967_shg_sinnoh_league.s) ---
.equ SHG_MSG_LEAGUE_GUARD_OK, 40
.equ SHG_MSG_LEAGUE_AARON_INTRO, 41
.equ SHG_MSG_LEAGUE_AARON_AFTER, 42
.equ SHG_MSG_LEAGUE_BERTHA_INTRO, 43
.equ SHG_MSG_LEAGUE_BERTHA_AFTER, 44
.equ SHG_MSG_LEAGUE_FLINT_INTRO, 45
.equ SHG_MSG_LEAGUE_FLINT_AFTER, 46
.equ SHG_MSG_LEAGUE_LUCIAN_INTRO, 47
.equ SHG_MSG_LEAGUE_LUCIAN_AFTER, 48
.equ SHG_MSG_LEAGUE_CYNTHIA_INTRO, 49
.equ SHG_MSG_LEAGUE_CYNTHIA_WIN, 50
.equ SHG_MSG_LEAGUE_CYNTHIA_AFTER, 51

// Liga: flags de la ronda actual del Alto Mando (se borran al entrar) y de campeón de Sinnoh
.equ FLAG_SHG_DEFEATED_AARON, 1049
.equ FLAG_SHG_DEFEATED_BERTHA, 1050
.equ FLAG_SHG_DEFEATED_FLINT, 1051
.equ FLAG_SHG_DEFEATED_LUCIAN, 1052
.equ FLAG_SHG_SINNOH_CHAMPION, 1053
// MT entregadas por los líderes: 1040-1047 (ver scr_seq_00966)

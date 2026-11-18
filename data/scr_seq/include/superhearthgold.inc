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

// Mapas de Sinnoh (cabeceras de HGSS, ver data/sinnoh/zones.json)
.equ MAP_SHG_CANALAVE_CITY, 254

// Llegada en barco al muelle de Ciudad Canal (coordenadas de la matriz de Sinnoh recortada;
// en Platino es (45, 749)) y regreso a los puertos de Olivo y Carmín.
.equ SHG_CANALAVE_DOCK_X, 45
.equ SHG_CANALAVE_DOCK_Z, 589
.equ SHG_PORT_RETURN_X, 7
.equ SHG_PORT_RETURN_Z, 7

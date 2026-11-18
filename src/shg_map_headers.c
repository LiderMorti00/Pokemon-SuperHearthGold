/*
 * Pokémon SuperHearthGold: cabeceras de mapa dinámicas.
 *
 * HGSS guarda sus 540 cabeceras de mapa en una tabla fija dentro de arm9 (sMapHeaders, 0x020F6BE0,
 * 24 bytes por cabecera). Para poder añadir los mapas de Sinnoh, las cabeceras se mueven al NARC
 * a/0/5/0 (sin uso en HGSS; es el mismo sitio que usa el parche de "dynamic headers" de DSPRE),
 * un archivo por cabecera, y se cargan bajo demanda en un búfer de una sola entrada.
 *
 * Todas las funciones MapHeader_Get* de arm9 llaman primero a la función que valida el ID de mapa
 * (0x0203B268) y luego leen sMapHeaders[id]. Se sustituye esa función por ShgMapHeader_Load(), que
 * carga la cabecera pedida en gShgMapHeaderBuf y devuelve 0, y los punteros a sMapHeaders de esas
 * funciones se redirigen a gShgMapHeaderBuf (ver "repoints" y "hooks").
 *
 * tools/sinnoh/import_sinnoh.py genera a/0/5/0 a partir de la tabla original y de los mapas de Sinnoh.
 */
#include "../include/types.h"
#include "../include/superhearthgold_maps.h"

#define SHG_MAP_HEADER_NARC 50 // a/0/5/0
#define SHG_MAP_HEADER_SIZE 24

u8 ALIGN4 gShgMapHeaderBuf[SHG_MAP_HEADER_SIZE] = {0};
static u16 sShgLoadedMapId = 0;
static u8 sShgHeaderLoaded = 0;

u32 LONG_CALL ShgMapHeader_Load(u32 mapId)
{
    if (mapId >= SHG_NUM_MAP_HEADERS) {
        mapId = 1; // igual que el original: un ID no válido pasa a ser el mapa 1
    }
    if (!sShgHeaderLoaded || sShgLoadedMapId != mapId) {
        ReadWholeNarcMemberByIdPair(gShgMapHeaderBuf, SHG_MAP_HEADER_NARC, mapId);
        sShgLoadedMapId = mapId;
        sShgHeaderLoaded = 1;
    }
    return 0;
}

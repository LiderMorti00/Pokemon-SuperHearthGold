/*
 * Pokémon SuperHearthGold: plantas de los ascensores.
 *
 * get_dynamic_warp_floor_no devuelve la planta del mapa desde el que se entró al ascensor
 * (MapNumToFloorNo, overlay 1, 0x021EE81C). La función de HGSS solo conoce los ascensores de Johto
 * y Kanto; esta versión añade los de Sinnoh (data/sinnoh/elevator_floors.h, con la numeración de
 * Platino: plantas por encima del mapa).
 */
#include "../include/types.h"

#include "../data/sinnoh/elevator_floors.h"

int LONG_CALL ShgMapNumToFloorNo(u32 mapId)
{
    for (int i = 0; i < SHG_NUM_ELEVATOR_FLOORS; i++) {
        if (sShgElevatorFloors[i][0] == mapId) {
            return sShgElevatorFloors[i][1];
        }
    }
    // ascensores de HGSS (mismos valores que la función original)
    static const u16 sHgFloors[][2] = {
        { 189, 0 }, { 190, 1 },                         // Torre Radio: 5P y mirador
        { 115, 0 }, { 225, 1 },                         // Faro de Olivo
        { 402, 0 }, { 403, 1 },                         // Silph S.A.
        { 200, 0 }, { 191, 1 }, { 192, 2 }, { 193, 3 }, // Centro Comercial de Trigal
        { 194, 4 }, { 195, 5 }, { 196, 6 },
        { 370, 0 }, { 371, 1 }, { 372, 2 }, { 373, 3 }, // Centro Comercial de Azulona
        { 374, 4 }, { 375, 5 },
        { 376, 0 }, { 377, 1 }, { 378, 2 }, { 379, 3 }, // Mansión Azulona
    };
    for (u32 i = 0; i < sizeof(sHgFloors) / sizeof(sHgFloors[0]); i++) {
        if (sHgFloors[i][0] == mapId) {
            return sHgFloors[i][1];
        }
    }
    return 0;
}

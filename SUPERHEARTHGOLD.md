# Pokémon SuperHearthGold

Romhack de Pokémon HeartGold (USA) construido sobre [hg-engine](https://github.com/BluRosie/hg-engine).
Añade el tipo Hada, los Pokémon y movimientos hasta la Gen 9, y un viaje de postgame a la región de Sinnoh.

## Decisiones del proyecto

- **Base:** hg-engine (`upstream` = `BluRosie/hg-engine`). El tipo Hada viene de hg-engine
  (`FAIRY_TYPE_IMPLEMENTED 1` en `include/config.h`) y ocupa el tipo 9 ("???").
- **Sinnoh** se porta desde el decomp de Platino ([pret/pokeplatinum](https://github.com/pret/pokeplatinum)):
  mapas, eventos, encuentros, entrenadores y textos. No hace falta una ROM de Platino.
- **Desbloqueo:** al vencer a Red. El Prof. Oak habilita el viaje en barco y el S.S. Aqua
  ofrece un nuevo destino desde Ciudad Olivo y Ciudad Carmín hasta **Ciudad Canal**.
- **Contenido de Sinnoh:** solo gimnasios, entrenadores y Liga; sin la trama del Equipo Galaxia.
  Se quitan los bloqueos de ruta ligados a la historia.
- **Niveles:** postgame, aproximadamente nivel 60–85.
- **MO:** el jugador llega con todas las MO de HGSS. Despejar no existe como MO en HGSS, así que
  se quita la niebla de la Ruta 210 y de la Torre Perdida.
- **Medallas:** Johto y Kanto usan la caja de HGSS; Sinnoh tendrá una vista propia con los
  gráficos de Platino (fase final). Hasta entonces las medallas de Sinnoh se guardan como flags.

## Fases

1. [x] Base hg-engine + tipo Hada verificado con pruebas de combate (`data/battle_tests/fairy/`).
2. [ ] Herramientas de conversión Platino → HGSS (terreno, matrices, texturas, edificios,
       cabeceras de mapa, eventos, scripts, textos) y primer tramo caminable:
       Canal, Ruta 218, Jubileo y rutas 202–204, con el barco desde Olivo/Carmín.
3. [ ] Resto del mapa de Sinnoh.
4. [ ] Encuentros, entrenadores, gimnasios y Liga de Sinnoh.
5. [ ] Mapa del Pokégear, Pokédex de Sinnoh y caja de medallas de Platino.

## Compilar

Igual que hg-engine (ver `README.md`): copia tu ROM de HeartGold USA como `rom.nds`
(sha1 `4fcded0e2713dc03929845de631d0932ea2b5a37`) en la raíz y ejecuta `make -j$(nproc)`.
El resultado es `test.nds`. La ROM no se sube nunca a la repo (`*.nds` está en `.gitignore`).

## Pruebas del tipo Hada

```sh
make AUTO_TEST=Y TEST_FILTER="fairy" -j$(nproc)
# test.sav: https://github.com/BluRosie/hg-engine/raw/workflows/assets/test.sav
SDL_VIDEODRIVER=dummy scripts/run_tests.sh
```

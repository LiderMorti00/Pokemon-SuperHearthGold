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
2. [ ] Herramientas de conversión Platino → HGSS y primer tramo caminable.
   - [x] Importador de mapas (`tools/sinnoh/import_sinnoh.py`): terreno, matriz, texturas,
         edificios y cabeceras. Canal, Ruta 218, Jubileo, rutas 202–204 y Pirita.
   - [x] Barco desde Olivo/Carmín hasta Canal (ver «El viaje a Sinnoh»).
   - [ ] Ampliar la tabla de cabeceras de mapa (ahora se reutilizan cabeceras sin uso de HGSS).
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

## El viaje a Sinnoh

1. Tras vencer a Red (flag `FLAG_UNK_25F`) y haber recibido el inicial de Kanto, al hablar con el
   Prof. Oak en su laboratorio te da permiso para viajar a Sinnoh (`FLAG_SHG_SINNOH_UNLOCKED`).
2. En los puertos del S.S. Aqua de Ciudad Olivo y Ciudad Carmín hay un marinero nuevo que, con
   ese permiso, te lleva al muelle de Ciudad Canal.
3. En el muelle de Canal otro marinero te lleva de vuelta a Olivo o a Carmín.

Archivos: `data/scr_seq/scr_seq_00152_*.s` (puerto de Olivo), `00154_*` (puerto de Carmín),
`00740_*` (laboratorio de Oak), `00965_shg_canalave.s` (Canal), los textos en
`data/text/854.txt` y las constantes en `data/scr_seq/include/superhearthgold.inc`.
Los scripts de Olivo, Carmín y Oak son los originales de HGSS (sacados con el volcador de
hg-engine y comprobados byte a byte) con los añadidos marcados como `SuperHearthGold`.
Los textos nuevos están en inglés, como el resto de la ROM.

## Cómo funciona la importación de Sinnoh

- `data/sinnoh/` guarda los recursos de Platino que se usan (terreno, texturas, edificios,
  cabeceras y la matriz de Sinnoh). Se regeneran con
  `python3 tools/sinnoh/sync_from_pokeplatinum.py /ruta/a/pokeplatinum`.
- `data/sinnoh/zones.json` dice qué zonas se importan, qué cabecera de HGSS ocupa cada una,
  su nombre de lugar (HGSS ya trae los nombres de Sinnoh), su música y su tipo de mapa.
- `make` ejecuta `tools/sinnoh/import_sinnoh.py` después de preparar los NARC de hg-engine.
  El importador parte siempre de los archivos de `rom.nds`, así que se puede compilar las veces
  que haga falta.

Detalles técnicos que hubo que resolver:

- El terreno de Platino solo necesita una sección de sonido ambiente vacía para HGSS.
- HGSS admite matrices de 799 celdas como máximo; la de Sinnoh (30×30) se recorta a 30×25 y las
  coordenadas de eventos se desplazan 5 celdas hacia arriba.
- Cada modelo de edificio necesita su entrada en `bm_field_matshp.dat` y en `a/1/0/7`
  (animaciones); sin ellas el juego se cuelga al cargar el mapa.

### Probar los mapas sin barco

```sh
SINNOH_DEBUG_WARP=1 make -j$(nproc)
```

En esa ROM, tres puertas de Ciudad Cerezo llevan a Sinnoh: la del Centro Pokémon a Ciudad Canal
la de la Tienda a Jubileo y la de la casa del suroeste a Pirita; la cuarta casa lleva al puerto de
Ciudad Olivo para probar el barco. Al compilar sin la variable, las puertas
vuelven a ser las normales.

### Limitaciones actuales

- Sin NPCs, carteles ni entradas a edificios todavía (las puertas no llevan a ningún sitio y no
  se abren).
- La música es de HGSS (HGSS no incluye las canciones de Sinnoh).

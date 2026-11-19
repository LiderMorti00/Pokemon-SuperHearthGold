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
2. [x] Herramientas de conversión Platino → HGSS, barco desde Olivo/Carmín hasta Canal.
3. [x] Todo Sinnoh: exteriores e interiores y su música.
   - [x] Cabeceras de mapa dinámicas (sin el límite de 540 de HGSS).
   - [x] 463 mapas de Sinnoh (todo menos Subsuelo, Mundo Distorsión, Frente Batalla, salas Wi-Fi,
         concursos y mapas sin uso de Platino), con sus warps.
   - [x] Música de Sinnoh (75 canciones de Platino; ver «Música»).
4. [x] Encuentros, entrenadores, gimnasios y Liga de Sinnoh (ver «Fase 4»).
5. [ ] Resto de Sinnoh y menús (ver «Fase 5»).
   - [x] NPCs, carteles, objetos del suelo y objetos ocultos.
   - [x] Sprites de mapa de Platino que faltaban (Alto Mando, recepcionistas, guías...).
   - [x] Ascensores.
   - [ ] Mecanismos de los gimnasios (botones de Pradera, plataformas de Canal, engranajes de
         Marina, reloj de Vetusta, sacos de Rocavelo, bolas de nieve de Puntaneva).
   - [ ] Caja de medallas de Platino, mapa del Pokégear y Pokédex de Sinnoh.

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

- `python3 tools/sinnoh/sync_from_pokeplatinum.py /ruta/a/pokeplatinum` genera `data/sinnoh/`:
  `zones.json` (una entrada por mapa importado: ID de HGSS, nombre de lugar, tipo, música,
  área, matriz y warps ya traducidos), las matrices, el terreno, las texturas y los edificios.
  También genera `include/superhearthgold_maps.h` y `data/scr_seq/include/sinnoh_maps.inc`
  (constantes `MAP_SHG_*`). Todo eso se versiona, así que compilar no necesita pokeplatinum.
- Los ajustes a mano (NPCs, scripts propios de una zona) van en `data/sinnoh/zone_overrides.json`.
- `make` ejecuta `tools/sinnoh/import_sinnoh.py` después de preparar los NARC de hg-engine.
  El importador parte siempre de los archivos de `rom.nds`, así que se puede compilar las veces
  que haga falta.

### Cabeceras de mapa dinámicas

HGSS guarda sus 540 cabeceras en una tabla fija de arm9. `src/shg_map_headers.c` sustituye la
función que valida el ID de mapa (0x0203B268) por una que carga la cabecera pedida desde
`a/0/5/0` (un archivo por cabecera, sin uso en HGSS; es el mismo sitio que el parche de DSPRE),
y las funciones `MapHeader_Get*` leen de ese búfer (`hooks` y `repoints`). Los mapas de Sinnoh
tienen los IDs 540 en adelante.

### Detalles técnicos que hubo que resolver

- El terreno de Platino solo necesita una sección de sonido ambiente vacía para HGSS.
- HGSS admite matrices de 799 celdas como máximo; la de Sinnoh (30×30) se recorta a 30×25 y las
  coordenadas de eventos se desplazan 5 celdas hacia arriba.
- Cada modelo de edificio necesita su entrada en la tabla material/forma (`bm_*_matshp.dat`) y
  en la de animaciones (`a/1/0/7` o `a/1/0/8`); sin ellas el juego se cuelga al cargar el mapa.
- El gestor de áreas guarda los modelos en una tabla de 550 entradas indexada por ID, así que los
  edificios de áreas exteriores se añaden a los exteriores de HGSS (340 + 159) y los de interiores
  a los interiores (222 + 247).

### Música

`python3 tools/sinnoh/sync_music.py /ruta/a/pokeplatinum` convierte las canciones de campo de
Platino (con la herramienta `nitrosfx` del decomp) a `data/sinnoh/sound/`, y el importador las
añade al SDAT en cada compilación.

- HGSS tiene siempre cargado su propio `WAVE_ARC_BASIC` (431 KB) y el montón de sonido es de
  780 KB, así que no cabe además el de Platino (458 KB). Cada canción lleva su propio banco de
  instrumentos con solo los que usa; las ondas idénticas en los dos juegos (33) se toman del BASIC
  de HGSS y el resto de `WAVE_ARC_PL_BASIC`, que se carga onda a onda (carga individual de hg-engine).
- Con una canción de HGSS cargada quedan unos 165 KB libres. Las canciones que necesitan más de
  120 KB de ondas (`BUDGET` en `sync_music.py`) usan una copia del BASIC de Platino a la mitad de
  frecuencia: suenan algo más apagadas, pero dejan unos 40 KB libres para gritos y efectos.
- hg-engine trata los bancos de sonido 2-494 y desde el 778 como gritos de Pokémon, así que los
  bancos y archivos de ondas nuevos ocupan huecos libres entre el 495 y el 777.

### Probar los mapas sin barco

```sh
SINNOH_DEBUG_WARP=1 make -j$(nproc)
SINNOH_DEBUG_WARP=1 SINNOH_DEBUG_TARGETS="snowpoint_city,pokemon_league,eterna_forest" make -j$(nproc)
```

En esa ROM cuatro puertas de Ciudad Cerezo llevan a Sinnoh: la del Centro Pokémon, la de la Tienda
y la de la casa del suroeste a los Centros Pokémon de Canal, Jubileo y Pirita, y la cuarta casa al
puerto de Ciudad Olivo. `SINNOH_DEBUG_TARGETS` cambia esos destinos (nombres de `zones.json`,
opcionalmente `mapa:warp`). Al compilar sin la variable, las puertas vuelven a ser las normales.

## Fase 4: Pokémon salvajes, entrenadores, gimnasios y Liga

Todo se genera desde el decomp de Platino:

```sh
python3 tools/sinnoh/sync_encounters.py /ruta/a/pokeplatinum   # data/sinnoh/encounters.*
python3 tools/sinnoh/sync_trainers.py /ruta/a/pokeplatinum     # trainers.*
```

- **Pokémon salvajes** (`data/sinnoh/encounters.h`, bancos 142-245 de `data/Encounters.c`): niveles
  50 + nivel/2. La mañana y el día usan las sustituciones de día de Platino y la noche las de noche,
  así que el sistema de día y noche de HGSS cambia los encuentros. Los edificios encienden sus
  ventanas de noche con la iluminación de las áreas de HGSS.
- **Entrenadores**: 380 (IDs 741-1120), con sus textos de Platino. Sin reclutas ni comandantes del
  Equipo Galaxia ni el rival. Niveles 50 + nivel/2 con los movimientos que aprenden por nivel. Las
  banderas de "vencido" de los IDs 1040 o más van al bloque libre 0x9D4 (`src/shg_trainer_flags.c`).
  `trainerdatagen` nombra ahora los archivos con 4 cifras (con IDs de 4 cifras la narc salía
  desordenada).
- **Gimnasios** (`data/scr_seq/include/shg_gyms.inc`): los 8 líderes con sus equipos de
  revancha de Platino (niveles 61-78) y su MT. Las medallas son las flags 1032-1039 (`FLAG_SHG_BADGE_*`)
  hasta que llegue la caja de medallas de Platino (fase 5). Los puzles de Platino no existen (no hay
  scripts de botones, ascensores ni engranajes), pero todos los líderes son accesibles: en Pradera
  Mananti espera junto a la entrada y en Canal los objetos se colocan a ras de suelo.
- **Liga** (`data/scr_seq/include/shg_league.inc`): el guardia del Centro Pokémon norte
  comprueba las 8 medallas y lleva a la sala de Alecrán. Cada miembro del Alto Mando tapa la salida
  hasta que se le vence y la salida lleva directa a la sala siguiente (sin ascensores). Al vencer a
  Cintia se vuelve al Centro Pokémon norte (flag 1053, sin Salón de la Fama). La ronda se reinicia
  al hablar con el guardia.
- **Servicios**: enfermeras y dependientes en Centros Pokémon y tiendas de Sinnoh
  (`data/scr_seq/include/shg_services.inc`).
- Mapas: `zone_overrides.json` admite `objects` (`script` = etiqueta de un script de
  `data/scr_seq/include/shg_*.inc`; `flag` para ocultar), `warp_targets` y `flatten_y`.

`SINNOH_DEBUG_NO_TRAINERS=1` quita los entrenadores de los mapas (útil para probar rutas).

## Fase 5: NPCs, carteles, objetos, sprites y ascensores

```sh
python3 tools/sinnoh/sync_sprites.py /ruta/a/pokeplatinum /ruta/a/pokeheartgold
python3 tools/sinnoh/sync_events.py /ruta/a/pokeplatinum
```

- **Scripts por mapa**: `sync_events.py` traduce los scripts de Platino de cada NPC y cartel a
  comandos de HGSS y genera un archivo de scripts y un banco de textos por mapa
  (`data/scr_seq/scr_seq_00965..01311_sinnoh_*.s`, `data/text/855..1201.txt`) y
  `data/sinnoh/events.json` (objetos, eventos de fondo y carteles de cada mapa). Traduce mensajes,
  menús sí/no y de opciones, regalos de objetos, tiendas, gritos, hora del día, sexo del jugador y
  ascensores. Lo que depende de la trama de Platino se evalúa como si ya hubiera terminado (las
  variables de la historia toman su valor máximo y las flags de la historia están puestas). Los
  comandos que no tienen equivalente quedan como comentario `// Platino: ...` en el script.
- **NPCs**: 623, con sus diálogos. No se importan los ocultos por la historia, los de enlaces Wi-Fi
  ni los de Subsuelo, concursos, Poké-reloj o el Frente de Batalla.
- **Objetos**: 314 en el suelo (`std_itemball_variadic` de HGSS) y 261 ocultos (se recogen al pulsar
  A delante de la casilla; el Zahorí de HGSS no los detecta).
- **Flags ampliadas**: objetos, objetos ocultos y regalos de NPC usan las flags 0x1000-0x12FF (768),
  guardadas en 96 bytes nuevos del bloque «misc» (`src/shg_flags.c`). Era todo el sitio que quedaba
  en el primer bloque del guardado. Las partidas anteriores a este cambio se adaptan con
  `python3 tools/sinnoh/convert_save.py vieja.sav nueva.sav`.
- **Carteles**: en Platino son objetos con modelo 3D; aquí son edificios. Sus texturas se fusionan
  en los conjuntos de texturas de las áreas (`tools/sinnoh/nitro_tex.py`, que reescribe el bloque
  TEX0 y sus diccionarios) y la casilla queda bloqueada.
- **Sprites** (`sync_sprites.py`): los sprites de Platino con índice < 146 son los de HGSS; el resto
  se asigna por nombre. 30 sprites de NPC nuevos se convierten de los PNG de Platino (Alto Mando,
  recepcionistas, guías de gimnasio, gente de Puntaneva...) y se añaden con `NEW_NPC_ENTRY` de
  hg-engine (etiquetas 7000+). Los Pokémon usan los sprites de acompañante de hg-engine.
- **Ascensores**: menú de plantas, animación y warp dinámico como en Platino. HGSS ya tiene esos
  comandos; `src/shg_elevators.c` añade las plantas de los ascensores de Sinnoh a
  `get_dynamic_warp_floor_no`. Los warps «volver al anterior» (4095) llevan el ancla 256 para que
  HGSS recuerde desde dónde se entró.
- **Caja de medallas**: en Sinnoh (mapas 540 en adelante) la ficha de entrenador se ve como en
  Platino: la ficha (la de HGSS, con su personaje) arriba y la caja de Platino en la pantalla
  táctil, con la tapa de los líderes de gimnasio; el botón de la caja abre la tapa y enseña las 8
  medallas de Sinnoh. En Johto y Kanto no cambia nada. `import_sinnoh.py` convierte los gráficos
  de Platino (`data/sinnoh/badge_case/`) y los añade como archivos 78-91 de `a/0/4/9`;
  `src/shg_trainer_card.c` elige las medallas que se marcan y, al abrir la ficha en Sinnoh, cambia
  en la RAM del overlay 51 los archivos que carga, las posiciones de las medallas, el fondo BG3
  (la tapa, de 256 colores) y el orden de las pantallas, y se encarga del botón de la tapa.
- `tools/narcpy.py` ordena los archivos por número y descarta duplicados (con más de 1000 archivos
  se mezclaban nombres de 3 y 4 cifras).

### Limitaciones actuales

- Mecanismos de gimnasio: en Platino son ~4000 líneas de código propio (`gym_features.c`) que
  mueven agua, plataformas, engranajes y el reloj. Aquí todos los líderes son accesibles, pero sin
  esos mecanismos.
- Mapa del Pokégear y Pokédex de Sinnoh: pendientes.
- Ficha en Sinnoh: como la ficha queda en la pantalla de arriba, se gira con ←/→ y se cierra con
  B; no se puede firmar (hay que hacerlo en Johto o Kanto). Las medallas brillan o se ensucian con
  el estado de pulido de las 8 medallas de Johto (HGSS guarda uno por hueco), no se pueden pulir y
  no tienen la animación de destellos de Platino; la tapa se abre sin animación.
- Los diálogos con menús largos o funciones de Platino sin equivalente (tutores, intercambios...)
  se quedan en el texto.
- No se ha visto en el emulador la animación de apertura de las puertas (los warps sí funcionan).
- Las canciones de evento, combate y Pokémon legendarios de Platino no están importadas (solo las
  de los mapas).

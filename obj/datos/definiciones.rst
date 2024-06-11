                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module definiciones
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _cpct_memcpy
                             12 	.globl _hisc
                             13 	.globl _vaso_lleno
                             14 	.globl _pmanzana
                             15 	.globl _ppera
                             16 	.globl _pjugador
                             17 	.globl _item1
                             18 	.globl _player
                             19 	.globl _array
                             20 	.globl _vidas
                             21 	.globl _puntos_centena
                             22 	.globl _puntos_decena
                             23 	.globl _y_start_manzana
                             24 	.globl _x_start_manzana
                             25 	.globl _caida_objeto
                             26 	.globl _vx_manzana
                             27 	.globl _spr_manzana
                             28 	.globl _y_manzana
                             29 	.globl _x_manzana
                             30 	.globl _vx_pera
                             31 	.globl _spr_pera
                             32 	.globl _y_pera
                             33 	.globl _x_pera
                             34 	.globl _vy_jug
                             35 	.globl _spr_jugador
                             36 	.globl _y_jugador
                             37 	.globl _x_jugador
                             38 	.globl _pera2_init
                             39 	.globl _pera_init
                             40 	.globl _manzana_init
                             41 	.globl _player_init
                             42 	.globl _iniciar_valores
                             43 	.globl _inicia_objetos
                             44 ;--------------------------------------------------------
                             45 ; special function registers
                             46 ;--------------------------------------------------------
                             47 ;--------------------------------------------------------
                             48 ; ram data
                             49 ;--------------------------------------------------------
                             50 	.area _DATA
   956F                      51 _x_jugador::
   956F                      52 	.ds 1
   9570                      53 _y_jugador::
   9570                      54 	.ds 1
   9571                      55 _spr_jugador::
   9571                      56 	.ds 2
   9573                      57 _vy_jug::
   9573                      58 	.ds 1
   9574                      59 _x_pera::
   9574                      60 	.ds 1
   9575                      61 _y_pera::
   9575                      62 	.ds 1
   9576                      63 _spr_pera::
   9576                      64 	.ds 2
   9578                      65 _vx_pera::
   9578                      66 	.ds 1
   9579                      67 _x_manzana::
   9579                      68 	.ds 1
   957A                      69 _y_manzana::
   957A                      70 	.ds 1
   957B                      71 _spr_manzana::
   957B                      72 	.ds 2
   957D                      73 _vx_manzana::
   957D                      74 	.ds 1
   957E                      75 _caida_objeto::
   957E                      76 	.ds 1
   957F                      77 _x_start_manzana::
   957F                      78 	.ds 1
   9580                      79 _y_start_manzana::
   9580                      80 	.ds 1
   9581                      81 _puntos_decena::
   9581                      82 	.ds 1
   9582                      83 _puntos_centena::
   9582                      84 	.ds 1
   9583                      85 _vidas::
   9583                      86 	.ds 1
   9584                      87 _array::
   9584                      88 	.ds 100
   95E8                      89 _player::
   95E8                      90 	.ds 10
   95F2                      91 _item1::
   95F2                      92 	.ds 10
   95FC                      93 _pjugador::
   95FC                      94 	.ds 2
   95FE                      95 _ppera::
   95FE                      96 	.ds 2
   9600                      97 _pmanzana::
   9600                      98 	.ds 2
   9602                      99 _vaso_lleno::
   9602                     100 	.ds 1
   9603                     101 _hisc::
   9603                     102 	.ds 1
                            103 ;--------------------------------------------------------
                            104 ; ram data
                            105 ;--------------------------------------------------------
                            106 	.area _INITIALIZED
                            107 ;--------------------------------------------------------
                            108 ; absolute external ram data
                            109 ;--------------------------------------------------------
                            110 	.area _DABS (ABS)
                            111 ;--------------------------------------------------------
                            112 ; global & static initialisations
                            113 ;--------------------------------------------------------
                            114 	.area _HOME
                            115 	.area _GSINIT
                            116 	.area _GSFINAL
                            117 	.area _GSINIT
                            118 ;--------------------------------------------------------
                            119 ; Home
                            120 ;--------------------------------------------------------
                            121 	.area _HOME
                            122 	.area _HOME
                            123 ;--------------------------------------------------------
                            124 ; code
                            125 ;--------------------------------------------------------
                            126 	.area _CODE
                            127 ;src/datos/definiciones.c:28: void iniciar_valores(){
                            128 ;	---------------------------------
                            129 ; Function iniciar_valores
                            130 ; ---------------------------------
   836D                     131 _iniciar_valores::
                            132 ;src/datos/definiciones.c:29: x_manzana       =   x_start_objeto;
   836D 21 79 95      [10]  133 	ld	hl,#_x_manzana + 0
   8370 36 3C         [10]  134 	ld	(hl), #0x3c
                            135 ;src/datos/definiciones.c:30: y_manzana       =   y_frame_1;
   8372 21 7A 95      [10]  136 	ld	hl,#_y_manzana + 0
   8375 36 0A         [10]  137 	ld	(hl), #0x0a
                            138 ;src/datos/definiciones.c:31: puntos          =   '0';
   8377 21 07 96      [10]  139 	ld	hl,#_puntos + 0
   837A 36 30         [10]  140 	ld	(hl), #0x30
                            141 ;src/datos/definiciones.c:32: puntos_decena   =   '0';
   837C 21 81 95      [10]  142 	ld	hl,#_puntos_decena + 0
   837F 36 30         [10]  143 	ld	(hl), #0x30
                            144 ;src/datos/definiciones.c:33: puntos_centena  =   '0';
   8381 21 82 95      [10]  145 	ld	hl,#_puntos_centena + 0
   8384 36 30         [10]  146 	ld	(hl), #0x30
                            147 ;src/datos/definiciones.c:34: vidas           =   '3';
   8386 21 83 95      [10]  148 	ld	hl,#_vidas + 0
   8389 36 33         [10]  149 	ld	(hl), #0x33
                            150 ;src/datos/definiciones.c:35: vx_manzana      =   -1;
   838B 21 7D 95      [10]  151 	ld	hl,#_vx_manzana + 0
   838E 36 FF         [10]  152 	ld	(hl), #0xff
                            153 ;src/datos/definiciones.c:36: caida_objeto    =   x_jugador + RIGHTPNG_W + 1;//posicion donde conprueba si jugador coge objeto
   8390 21 7E 95      [10]  154 	ld	hl, #_caida_objeto
   8393 3A 6F 95      [13]  155 	ld	a,(#_x_jugador + 0)
   8396 C6 05         [ 7]  156 	add	a, #0x05
   8398 77            [ 7]  157 	ld	(hl), a
                            158 ;src/datos/definiciones.c:37: pjugador        =   &array[0];
   8399 01 84 95      [10]  159 	ld	bc, #_array+0
   839C ED 43 FC 95   [20]  160 	ld	(_pjugador), bc
                            161 ;src/datos/definiciones.c:38: pmanzana        =   &array[1];
   83A0 21 0A 00      [10]  162 	ld	hl, #0x000a
   83A3 09            [11]  163 	add	hl, bc
   83A4 22 00 96      [16]  164 	ld	(_pmanzana), hl
                            165 ;src/datos/definiciones.c:39: ppera           =   &array[2];
   83A7 21 14 00      [10]  166 	ld	hl, #0x0014
   83AA 09            [11]  167 	add	hl, bc
   83AB 22 FE 95      [16]  168 	ld	(_ppera), hl
                            169 ;src/datos/definiciones.c:40: vmem_ahora      =   0xC000; 
   83AE 21 00 C0      [10]  170 	ld	hl, #0xc000
   83B1 22 6D 95      [16]  171 	ld	(_vmem_ahora), hl
                            172 ;src/datos/definiciones.c:41: vaso_lleno      =   vacio;
   83B4 21 02 96      [10]  173 	ld	hl,#_vaso_lleno + 0
   83B7 36 00         [10]  174 	ld	(hl), #0x00
   83B9 C9            [10]  175 	ret
                            176 ;src/datos/definiciones.c:52: void inicia_objetos(){
                            177 ;	---------------------------------
                            178 ; Function inicia_objetos
                            179 ; ---------------------------------
   83BA                     180 _inicia_objetos::
                            181 ;src/datos/definiciones.c:53: cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
   83BA 21 0A 00      [10]  182 	ld	hl, #0x000a
   83BD E5            [11]  183 	push	hl
   83BE 21 D9 83      [10]  184 	ld	hl, #_player_init
   83C1 E5            [11]  185 	push	hl
   83C2 21 84 95      [10]  186 	ld	hl, #_array
   83C5 E5            [11]  187 	push	hl
   83C6 CD 2B 8C      [17]  188 	call	_cpct_memcpy
                            189 ;src/datos/definiciones.c:55: cpct_memcpy (&array[1], &pera_init, sizeof(array[0]));
   83C9 21 0A 00      [10]  190 	ld	hl, #0x000a
   83CC E5            [11]  191 	push	hl
   83CD 21 ED 83      [10]  192 	ld	hl, #_pera_init
   83D0 E5            [11]  193 	push	hl
   83D1 21 8E 95      [10]  194 	ld	hl, #(_array + 0x000a)
   83D4 E5            [11]  195 	push	hl
   83D5 CD 2B 8C      [17]  196 	call	_cpct_memcpy
   83D8 C9            [10]  197 	ret
   83D9                     198 _player_init:
   83D9 01                  199 	.db #0x01	; 1
   83DA 0A                  200 	.db #0x0a	; 10
   83DB 0A                  201 	.db #0x0a	; 10
   83DC 00                  202 	.db #0x00	;  0
   83DD 00                  203 	.db #0x00	;  0
   83DE 04                  204 	.db #0x04	; 4
   83DF 28                  205 	.db #0x28	; 40
   83E0 74 80               206 	.dw _rightpng
   83E2 00                  207 	.db #0x00	; 0
   83E3                     208 _manzana_init:
   83E3 01                  209 	.db #0x01	; 1
   83E4 50                  210 	.db #0x50	; 80	'P'
   83E5 0A                  211 	.db #0x0a	; 10
   83E6 FF                  212 	.db #0xff	; -1
   83E7 00                  213 	.db #0x00	;  0
   83E8 03                  214 	.db #0x03	; 3
   83E9 18                  215 	.db #0x18	; 24
   83EA 5C 81               216 	.dw _manzana
   83EC 3C                  217 	.db #0x3c	; 60
   83ED                     218 _pera_init:
   83ED 01                  219 	.db #0x01	; 1
   83EE 3C                  220 	.db #0x3c	; 60
   83EF 32                  221 	.db #0x32	; 50	'2'
   83F0 FF                  222 	.db #0xff	; -1
   83F1 00                  223 	.db #0x00	;  0
   83F2 03                  224 	.db #0x03	; 3
   83F3 18                  225 	.db #0x18	; 24
   83F4 14 81               226 	.dw _pera
   83F6 3C                  227 	.db #0x3c	; 60
   83F7                     228 _pera2_init:
   83F7 01                  229 	.db #0x01	; 1
   83F8 46                  230 	.db #0x46	; 70	'F'
   83F9 64                  231 	.db #0x64	; 100	'd'
   83FA FF                  232 	.db #0xff	; -1
   83FB 00                  233 	.db #0x00	;  0
   83FC 03                  234 	.db #0x03	; 3
   83FD 18                  235 	.db #0x18	; 24
   83FE 14 81               236 	.dw _pera
   8400 3C                  237 	.db #0x3c	; 60
                            238 	.area _CODE
                            239 	.area _INITIALIZER
                            240 	.area _CABS (ABS)

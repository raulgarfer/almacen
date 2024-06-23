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
   955F                      51 _x_jugador::
   955F                      52 	.ds 1
   9560                      53 _y_jugador::
   9560                      54 	.ds 1
   9561                      55 _spr_jugador::
   9561                      56 	.ds 2
   9563                      57 _vy_jug::
   9563                      58 	.ds 1
   9564                      59 _x_pera::
   9564                      60 	.ds 1
   9565                      61 _y_pera::
   9565                      62 	.ds 1
   9566                      63 _spr_pera::
   9566                      64 	.ds 2
   9568                      65 _vx_pera::
   9568                      66 	.ds 1
   9569                      67 _x_manzana::
   9569                      68 	.ds 1
   956A                      69 _y_manzana::
   956A                      70 	.ds 1
   956B                      71 _spr_manzana::
   956B                      72 	.ds 2
   956D                      73 _vx_manzana::
   956D                      74 	.ds 1
   956E                      75 _caida_objeto::
   956E                      76 	.ds 1
   956F                      77 _x_start_manzana::
   956F                      78 	.ds 1
   9570                      79 _y_start_manzana::
   9570                      80 	.ds 1
   9571                      81 _puntos_decena::
   9571                      82 	.ds 1
   9572                      83 _puntos_centena::
   9572                      84 	.ds 1
   9573                      85 _vidas::
   9573                      86 	.ds 1
   9574                      87 _array::
   9574                      88 	.ds 100
   95D8                      89 _player::
   95D8                      90 	.ds 10
   95E2                      91 _item1::
   95E2                      92 	.ds 10
   95EC                      93 _pjugador::
   95EC                      94 	.ds 2
   95EE                      95 _ppera::
   95EE                      96 	.ds 2
   95F0                      97 _pmanzana::
   95F0                      98 	.ds 2
   95F2                      99 _vaso_lleno::
   95F2                     100 	.ds 1
   95F3                     101 _hisc::
   95F3                     102 	.ds 1
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
   836A                     131 _iniciar_valores::
                            132 ;src/datos/definiciones.c:29: x_manzana       =   x_start_objeto;
   836A 21 69 95      [10]  133 	ld	hl,#_x_manzana + 0
   836D 36 3C         [10]  134 	ld	(hl), #0x3c
                            135 ;src/datos/definiciones.c:30: y_manzana       =   y_frame_1;
   836F 21 6A 95      [10]  136 	ld	hl,#_y_manzana + 0
   8372 36 0A         [10]  137 	ld	(hl), #0x0a
                            138 ;src/datos/definiciones.c:31: puntos          =   '0';
   8374 21 F7 95      [10]  139 	ld	hl,#_puntos + 0
   8377 36 30         [10]  140 	ld	(hl), #0x30
                            141 ;src/datos/definiciones.c:32: puntos_decena   =   '0';
   8379 21 71 95      [10]  142 	ld	hl,#_puntos_decena + 0
   837C 36 30         [10]  143 	ld	(hl), #0x30
                            144 ;src/datos/definiciones.c:33: puntos_centena  =   '0';
   837E 21 72 95      [10]  145 	ld	hl,#_puntos_centena + 0
   8381 36 30         [10]  146 	ld	(hl), #0x30
                            147 ;src/datos/definiciones.c:34: vidas           =   '3';
   8383 21 73 95      [10]  148 	ld	hl,#_vidas + 0
   8386 36 33         [10]  149 	ld	(hl), #0x33
                            150 ;src/datos/definiciones.c:35: vx_manzana      =   -1;
   8388 21 6D 95      [10]  151 	ld	hl,#_vx_manzana + 0
   838B 36 FF         [10]  152 	ld	(hl), #0xff
                            153 ;src/datos/definiciones.c:36: caida_objeto    =   x_jugador + RIGHTPNG_W + 1;//posicion donde conprueba si jugador coge objeto
   838D 21 6E 95      [10]  154 	ld	hl, #_caida_objeto
   8390 3A 5F 95      [13]  155 	ld	a,(#_x_jugador + 0)
   8393 C6 05         [ 7]  156 	add	a, #0x05
   8395 77            [ 7]  157 	ld	(hl), a
                            158 ;src/datos/definiciones.c:37: pjugador        =   &array[0];
   8396 01 74 95      [10]  159 	ld	bc, #_array+0
   8399 ED 43 EC 95   [20]  160 	ld	(_pjugador), bc
                            161 ;src/datos/definiciones.c:38: pmanzana        =   &array[1];
   839D 21 0A 00      [10]  162 	ld	hl, #0x000a
   83A0 09            [11]  163 	add	hl, bc
   83A1 22 F0 95      [16]  164 	ld	(_pmanzana), hl
                            165 ;src/datos/definiciones.c:39: ppera           =   &array[2];
   83A4 21 14 00      [10]  166 	ld	hl, #0x0014
   83A7 09            [11]  167 	add	hl, bc
   83A8 22 EE 95      [16]  168 	ld	(_ppera), hl
                            169 ;src/datos/definiciones.c:40: vmem_ahora      =   0xC000; 
   83AB 21 00 C0      [10]  170 	ld	hl, #0xc000
   83AE 22 5D 95      [16]  171 	ld	(_vmem_ahora), hl
                            172 ;src/datos/definiciones.c:41: vaso_lleno      =   vacio;
   83B1 21 F2 95      [10]  173 	ld	hl,#_vaso_lleno + 0
   83B4 36 00         [10]  174 	ld	(hl), #0x00
   83B6 C9            [10]  175 	ret
                            176 ;src/datos/definiciones.c:52: void inicia_objetos(){
                            177 ;	---------------------------------
                            178 ; Function inicia_objetos
                            179 ; ---------------------------------
   83B7                     180 _inicia_objetos::
                            181 ;src/datos/definiciones.c:53: cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
   83B7 21 0A 00      [10]  182 	ld	hl, #0x000a
   83BA E5            [11]  183 	push	hl
   83BB 21 D6 83      [10]  184 	ld	hl, #_player_init
   83BE E5            [11]  185 	push	hl
   83BF 21 74 95      [10]  186 	ld	hl, #_array
   83C2 E5            [11]  187 	push	hl
   83C3 CD 1B 8C      [17]  188 	call	_cpct_memcpy
                            189 ;src/datos/definiciones.c:54: cpct_memcpy (&array[1], &pera_init, sizeof(array[0]));
   83C6 21 0A 00      [10]  190 	ld	hl, #0x000a
   83C9 E5            [11]  191 	push	hl
   83CA 21 EA 83      [10]  192 	ld	hl, #_pera_init
   83CD E5            [11]  193 	push	hl
   83CE 21 7E 95      [10]  194 	ld	hl, #(_array + 0x000a)
   83D1 E5            [11]  195 	push	hl
   83D2 CD 1B 8C      [17]  196 	call	_cpct_memcpy
   83D5 C9            [10]  197 	ret
   83D6                     198 _player_init:
   83D6 01                  199 	.db #0x01	; 1
   83D7 0A                  200 	.db #0x0a	; 10
   83D8 0A                  201 	.db #0x0a	; 10
   83D9 00                  202 	.db #0x00	;  0
   83DA 00                  203 	.db #0x00	;  0
   83DB 04                  204 	.db #0x04	; 4
   83DC 28                  205 	.db #0x28	; 40
   83DD 74 80               206 	.dw _rightpng
   83DF 00                  207 	.db #0x00	; 0
   83E0                     208 _manzana_init:
   83E0 01                  209 	.db #0x01	; 1
   83E1 50                  210 	.db #0x50	; 80	'P'
   83E2 0A                  211 	.db #0x0a	; 10
   83E3 FF                  212 	.db #0xff	; -1
   83E4 00                  213 	.db #0x00	;  0
   83E5 03                  214 	.db #0x03	; 3
   83E6 18                  215 	.db #0x18	; 24
   83E7 5C 81               216 	.dw _manzana
   83E9 3C                  217 	.db #0x3c	; 60
   83EA                     218 _pera_init:
   83EA 01                  219 	.db #0x01	; 1
   83EB 3C                  220 	.db #0x3c	; 60
   83EC 32                  221 	.db #0x32	; 50	'2'
   83ED FF                  222 	.db #0xff	; -1
   83EE 00                  223 	.db #0x00	;  0
   83EF 03                  224 	.db #0x03	; 3
   83F0 18                  225 	.db #0x18	; 24
   83F1 14 81               226 	.dw _pera
   83F3 3C                  227 	.db #0x3c	; 60
   83F4                     228 _pera2_init:
   83F4 01                  229 	.db #0x01	; 1
   83F5 46                  230 	.db #0x46	; 70	'F'
   83F6 64                  231 	.db #0x64	; 100	'd'
   83F7 FF                  232 	.db #0xff	; -1
   83F8 00                  233 	.db #0x00	;  0
   83F9 03                  234 	.db #0x03	; 3
   83FA 18                  235 	.db #0x18	; 24
   83FB 14 81               236 	.dw _pera
   83FD 3C                  237 	.db #0x3c	; 60
                            238 	.area _CODE
                            239 	.area _INITIALIZER
                            240 	.area _CABS (ABS)

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
                             12 	.globl _vaso_lleno
                             13 	.globl _pmanzana
                             14 	.globl _ppera
                             15 	.globl _pjugador
                             16 	.globl _item1
                             17 	.globl _player
                             18 	.globl _array
                             19 	.globl _vidas
                             20 	.globl _puntos_centena
                             21 	.globl _puntos_decena
                             22 	.globl _y_start_manzana
                             23 	.globl _x_start_manzana
                             24 	.globl _caida_objeto
                             25 	.globl _vx_manzana
                             26 	.globl _spr_manzana
                             27 	.globl _y_manzana
                             28 	.globl _x_manzana
                             29 	.globl _vx_pera
                             30 	.globl _spr_pera
                             31 	.globl _y_pera
                             32 	.globl _x_pera
                             33 	.globl _vy_jug
                             34 	.globl _spr_jugador
                             35 	.globl _y_jugador
                             36 	.globl _x_jugador
                             37 	.globl _pera2_init
                             38 	.globl _pera_init
                             39 	.globl _manzana_init
                             40 	.globl _player_init
                             41 	.globl _iniciar_valores
                             42 	.globl _inicia_objetos
                             43 ;--------------------------------------------------------
                             44 ; special function registers
                             45 ;--------------------------------------------------------
                             46 ;--------------------------------------------------------
                             47 ; ram data
                             48 ;--------------------------------------------------------
                             49 	.area _DATA
   55F5                      50 _x_jugador::
   55F5                      51 	.ds 1
   55F6                      52 _y_jugador::
   55F6                      53 	.ds 1
   55F7                      54 _spr_jugador::
   55F7                      55 	.ds 2
   55F9                      56 _vy_jug::
   55F9                      57 	.ds 1
   55FA                      58 _x_pera::
   55FA                      59 	.ds 1
   55FB                      60 _y_pera::
   55FB                      61 	.ds 1
   55FC                      62 _spr_pera::
   55FC                      63 	.ds 2
   55FE                      64 _vx_pera::
   55FE                      65 	.ds 1
   55FF                      66 _x_manzana::
   55FF                      67 	.ds 1
   5600                      68 _y_manzana::
   5600                      69 	.ds 1
   5601                      70 _spr_manzana::
   5601                      71 	.ds 2
   5603                      72 _vx_manzana::
   5603                      73 	.ds 1
   5604                      74 _caida_objeto::
   5604                      75 	.ds 1
   5605                      76 _x_start_manzana::
   5605                      77 	.ds 1
   5606                      78 _y_start_manzana::
   5606                      79 	.ds 1
   5607                      80 _puntos_decena::
   5607                      81 	.ds 1
   5608                      82 _puntos_centena::
   5608                      83 	.ds 1
   5609                      84 _vidas::
   5609                      85 	.ds 1
   560A                      86 _array::
   560A                      87 	.ds 100
   566E                      88 _player::
   566E                      89 	.ds 10
   5678                      90 _item1::
   5678                      91 	.ds 10
   5682                      92 _pjugador::
   5682                      93 	.ds 2
   5684                      94 _ppera::
   5684                      95 	.ds 2
   5686                      96 _pmanzana::
   5686                      97 	.ds 2
   5688                      98 _vaso_lleno::
   5688                      99 	.ds 1
                            100 ;--------------------------------------------------------
                            101 ; ram data
                            102 ;--------------------------------------------------------
                            103 	.area _INITIALIZED
                            104 ;--------------------------------------------------------
                            105 ; absolute external ram data
                            106 ;--------------------------------------------------------
                            107 	.area _DABS (ABS)
                            108 ;--------------------------------------------------------
                            109 ; global & static initialisations
                            110 ;--------------------------------------------------------
                            111 	.area _HOME
                            112 	.area _GSINIT
                            113 	.area _GSFINAL
                            114 	.area _GSINIT
                            115 ;--------------------------------------------------------
                            116 ; Home
                            117 ;--------------------------------------------------------
                            118 	.area _HOME
                            119 	.area _HOME
                            120 ;--------------------------------------------------------
                            121 ; code
                            122 ;--------------------------------------------------------
                            123 	.area _CODE
                            124 ;src/datos/definiciones.c:27: void iniciar_valores(){
                            125 ;	---------------------------------
                            126 ; Function iniciar_valores
                            127 ; ---------------------------------
   44ED                     128 _iniciar_valores::
                            129 ;src/datos/definiciones.c:28: x_manzana       =   x_start_objeto;
   44ED 21 FF 55      [10]  130 	ld	hl,#_x_manzana + 0
   44F0 36 3C         [10]  131 	ld	(hl), #0x3c
                            132 ;src/datos/definiciones.c:29: y_manzana       =   y_frame_1;
   44F2 21 00 56      [10]  133 	ld	hl,#_y_manzana + 0
   44F5 36 0A         [10]  134 	ld	(hl), #0x0a
                            135 ;src/datos/definiciones.c:30: puntos          =   '0';
   44F7 21 8C 56      [10]  136 	ld	hl,#_puntos + 0
   44FA 36 30         [10]  137 	ld	(hl), #0x30
                            138 ;src/datos/definiciones.c:31: puntos_decena   =   '0';
   44FC 21 07 56      [10]  139 	ld	hl,#_puntos_decena + 0
   44FF 36 30         [10]  140 	ld	(hl), #0x30
                            141 ;src/datos/definiciones.c:32: puntos_centena  =   '0';
   4501 21 08 56      [10]  142 	ld	hl,#_puntos_centena + 0
   4504 36 30         [10]  143 	ld	(hl), #0x30
                            144 ;src/datos/definiciones.c:33: vidas           =   '3';
   4506 21 09 56      [10]  145 	ld	hl,#_vidas + 0
   4509 36 33         [10]  146 	ld	(hl), #0x33
                            147 ;src/datos/definiciones.c:34: vx_manzana      =   -1;
   450B 21 03 56      [10]  148 	ld	hl,#_vx_manzana + 0
   450E 36 FF         [10]  149 	ld	(hl), #0xff
                            150 ;src/datos/definiciones.c:35: caida_objeto    =   x_jugador + RIGHTPNG_W + 1;//posicion donde conprueba si jugador coge objeto
   4510 21 04 56      [10]  151 	ld	hl, #_caida_objeto
   4513 3A F5 55      [13]  152 	ld	a,(#_x_jugador + 0)
   4516 C6 05         [ 7]  153 	add	a, #0x05
   4518 77            [ 7]  154 	ld	(hl), a
                            155 ;src/datos/definiciones.c:36: pjugador        =   &array[0];
   4519 01 0A 56      [10]  156 	ld	bc, #_array+0
   451C ED 43 82 56   [20]  157 	ld	(_pjugador), bc
                            158 ;src/datos/definiciones.c:37: pmanzana        =   &array[1];
   4520 21 0A 00      [10]  159 	ld	hl, #0x000a
   4523 09            [11]  160 	add	hl, bc
   4524 22 86 56      [16]  161 	ld	(_pmanzana), hl
                            162 ;src/datos/definiciones.c:38: ppera           =   &array[2];
   4527 21 14 00      [10]  163 	ld	hl, #0x0014
   452A 09            [11]  164 	add	hl, bc
   452B 22 84 56      [16]  165 	ld	(_ppera), hl
                            166 ;src/datos/definiciones.c:39: vmem_ahora      =   0xC000; 
   452E 21 00 C0      [10]  167 	ld	hl, #0xc000
   4531 22 F3 55      [16]  168 	ld	(_vmem_ahora), hl
                            169 ;src/datos/definiciones.c:40: vaso_lleno      =   vacio;
   4534 21 88 56      [10]  170 	ld	hl,#_vaso_lleno + 0
   4537 36 00         [10]  171 	ld	(hl), #0x00
   4539 C9            [10]  172 	ret
                            173 ;src/datos/definiciones.c:50: void inicia_objetos(){
                            174 ;	---------------------------------
                            175 ; Function inicia_objetos
                            176 ; ---------------------------------
   453A                     177 _inicia_objetos::
                            178 ;src/datos/definiciones.c:51: cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
   453A 21 0A 00      [10]  179 	ld	hl, #0x000a
   453D E5            [11]  180 	push	hl
   453E 21 59 45      [10]  181 	ld	hl, #_player_init
   4541 E5            [11]  182 	push	hl
   4542 21 0A 56      [10]  183 	ld	hl, #_array
   4545 E5            [11]  184 	push	hl
   4546 CD B1 4C      [17]  185 	call	_cpct_memcpy
                            186 ;src/datos/definiciones.c:53: cpct_memcpy (&array[1], &pera_init, sizeof(array[0]));
   4549 21 0A 00      [10]  187 	ld	hl, #0x000a
   454C E5            [11]  188 	push	hl
   454D 21 6D 45      [10]  189 	ld	hl, #_pera_init
   4550 E5            [11]  190 	push	hl
   4551 21 14 56      [10]  191 	ld	hl, #(_array + 0x000a)
   4554 E5            [11]  192 	push	hl
   4555 CD B1 4C      [17]  193 	call	_cpct_memcpy
   4558 C9            [10]  194 	ret
   4559                     195 _player_init:
   4559 01                  196 	.db #0x01	; 1
   455A 0A                  197 	.db #0x0a	; 10
   455B 0A                  198 	.db #0x0a	; 10
   455C 00                  199 	.db #0x00	;  0
   455D 00                  200 	.db #0x00	;  0
   455E 04                  201 	.db #0x04	; 4
   455F 28                  202 	.db #0x28	; 40
   4560 F4 41               203 	.dw _rightpng
   4562 00                  204 	.db #0x00	; 0
   4563                     205 _manzana_init:
   4563 01                  206 	.db #0x01	; 1
   4564 50                  207 	.db #0x50	; 80	'P'
   4565 0A                  208 	.db #0x0a	; 10
   4566 FF                  209 	.db #0xff	; -1
   4567 00                  210 	.db #0x00	;  0
   4568 03                  211 	.db #0x03	; 3
   4569 18                  212 	.db #0x18	; 24
   456A DC 42               213 	.dw _manzana
   456C 3C                  214 	.db #0x3c	; 60
   456D                     215 _pera_init:
   456D 01                  216 	.db #0x01	; 1
   456E 3C                  217 	.db #0x3c	; 60
   456F 32                  218 	.db #0x32	; 50	'2'
   4570 FF                  219 	.db #0xff	; -1
   4571 00                  220 	.db #0x00	;  0
   4572 03                  221 	.db #0x03	; 3
   4573 18                  222 	.db #0x18	; 24
   4574 94 42               223 	.dw _pera
   4576 3C                  224 	.db #0x3c	; 60
   4577                     225 _pera2_init:
   4577 01                  226 	.db #0x01	; 1
   4578 46                  227 	.db #0x46	; 70	'F'
   4579 64                  228 	.db #0x64	; 100	'd'
   457A FF                  229 	.db #0xff	; -1
   457B 00                  230 	.db #0x00	;  0
   457C 03                  231 	.db #0x03	; 3
   457D 18                  232 	.db #0x18	; 24
   457E 94 42               233 	.dw _pera
   4580 3C                  234 	.db #0x3c	; 60
                            235 	.area _CODE
                            236 	.area _INITIALIZER
                            237 	.area _CABS (ABS)

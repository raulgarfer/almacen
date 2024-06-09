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
                             13 	.globl _pobjeto2
                             14 	.globl _pobjeto1
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
                             37 	.globl _pera_init
                             38 	.globl _manzana_init
                             39 	.globl _player_init
                             40 	.globl _iniciar_valores
                             41 	.globl _inicia_objetos
                             42 ;--------------------------------------------------------
                             43 ; special function registers
                             44 ;--------------------------------------------------------
                             45 ;--------------------------------------------------------
                             46 ; ram data
                             47 ;--------------------------------------------------------
                             48 	.area _DATA
   5612                      49 _x_jugador::
   5612                      50 	.ds 1
   5613                      51 _y_jugador::
   5613                      52 	.ds 1
   5614                      53 _spr_jugador::
   5614                      54 	.ds 2
   5616                      55 _vy_jug::
   5616                      56 	.ds 1
   5617                      57 _x_pera::
   5617                      58 	.ds 1
   5618                      59 _y_pera::
   5618                      60 	.ds 1
   5619                      61 _spr_pera::
   5619                      62 	.ds 2
   561B                      63 _vx_pera::
   561B                      64 	.ds 1
   561C                      65 _x_manzana::
   561C                      66 	.ds 1
   561D                      67 _y_manzana::
   561D                      68 	.ds 1
   561E                      69 _spr_manzana::
   561E                      70 	.ds 2
   5620                      71 _vx_manzana::
   5620                      72 	.ds 1
   5621                      73 _caida_objeto::
   5621                      74 	.ds 1
   5622                      75 _x_start_manzana::
   5622                      76 	.ds 1
   5623                      77 _y_start_manzana::
   5623                      78 	.ds 1
   5624                      79 _puntos_decena::
   5624                      80 	.ds 1
   5625                      81 _puntos_centena::
   5625                      82 	.ds 1
   5626                      83 _vidas::
   5626                      84 	.ds 1
   5627                      85 _array::
   5627                      86 	.ds 100
   568B                      87 _player::
   568B                      88 	.ds 10
   5695                      89 _item1::
   5695                      90 	.ds 10
   569F                      91 _pjugador::
   569F                      92 	.ds 2
   56A1                      93 _pobjeto1::
   56A1                      94 	.ds 2
   56A3                      95 _pobjeto2::
   56A3                      96 	.ds 2
   56A5                      97 _vaso_lleno::
   56A5                      98 	.ds 1
                             99 ;--------------------------------------------------------
                            100 ; ram data
                            101 ;--------------------------------------------------------
                            102 	.area _INITIALIZED
                            103 ;--------------------------------------------------------
                            104 ; absolute external ram data
                            105 ;--------------------------------------------------------
                            106 	.area _DABS (ABS)
                            107 ;--------------------------------------------------------
                            108 ; global & static initialisations
                            109 ;--------------------------------------------------------
                            110 	.area _HOME
                            111 	.area _GSINIT
                            112 	.area _GSFINAL
                            113 	.area _GSINIT
                            114 ;--------------------------------------------------------
                            115 ; Home
                            116 ;--------------------------------------------------------
                            117 	.area _HOME
                            118 	.area _HOME
                            119 ;--------------------------------------------------------
                            120 ; code
                            121 ;--------------------------------------------------------
                            122 	.area _CODE
                            123 ;src/datos/definiciones.c:27: void iniciar_valores(){
                            124 ;	---------------------------------
                            125 ; Function iniciar_valores
                            126 ; ---------------------------------
   44EA                     127 _iniciar_valores::
                            128 ;src/datos/definiciones.c:28: x_manzana       =   x_start_objeto;
   44EA 21 1C 56      [10]  129 	ld	hl,#_x_manzana + 0
   44ED 36 3C         [10]  130 	ld	(hl), #0x3c
                            131 ;src/datos/definiciones.c:29: y_manzana       =   y_frame_1;
   44EF 21 1D 56      [10]  132 	ld	hl,#_y_manzana + 0
   44F2 36 0A         [10]  133 	ld	(hl), #0x0a
                            134 ;src/datos/definiciones.c:30: puntos          =   '0';
   44F4 21 A8 56      [10]  135 	ld	hl,#_puntos + 0
   44F7 36 30         [10]  136 	ld	(hl), #0x30
                            137 ;src/datos/definiciones.c:31: puntos_decena   =   '0';
   44F9 21 24 56      [10]  138 	ld	hl,#_puntos_decena + 0
   44FC 36 30         [10]  139 	ld	(hl), #0x30
                            140 ;src/datos/definiciones.c:32: puntos_centena  =   '0';
   44FE 21 25 56      [10]  141 	ld	hl,#_puntos_centena + 0
   4501 36 30         [10]  142 	ld	(hl), #0x30
                            143 ;src/datos/definiciones.c:33: vidas           =   '3';
   4503 21 26 56      [10]  144 	ld	hl,#_vidas + 0
   4506 36 33         [10]  145 	ld	(hl), #0x33
                            146 ;src/datos/definiciones.c:34: vx_manzana      =   -1;
   4508 21 20 56      [10]  147 	ld	hl,#_vx_manzana + 0
   450B 36 FF         [10]  148 	ld	(hl), #0xff
                            149 ;src/datos/definiciones.c:35: caida_objeto    =   x_jugador + RIGHTPNG_W + 1;//posicion donde conprueba si jugador coge objeto
   450D 21 21 56      [10]  150 	ld	hl, #_caida_objeto
   4510 3A 12 56      [13]  151 	ld	a,(#_x_jugador + 0)
   4513 C6 05         [ 7]  152 	add	a, #0x05
   4515 77            [ 7]  153 	ld	(hl), a
                            154 ;src/datos/definiciones.c:36: pjugador        =   &array[0];
   4516 01 27 56      [10]  155 	ld	bc, #_array+0
   4519 ED 43 9F 56   [20]  156 	ld	(_pjugador), bc
                            157 ;src/datos/definiciones.c:37: pobjeto1        =   &array[1];
   451D 21 0A 00      [10]  158 	ld	hl, #0x000a
   4520 09            [11]  159 	add	hl, bc
   4521 22 A1 56      [16]  160 	ld	(_pobjeto1), hl
                            161 ;src/datos/definiciones.c:38: pobjeto2        =   &array[2];
   4524 21 14 00      [10]  162 	ld	hl, #0x0014
   4527 09            [11]  163 	add	hl, bc
   4528 22 A3 56      [16]  164 	ld	(_pobjeto2), hl
                            165 ;src/datos/definiciones.c:39: vmem_ahora      =   0xC000; 
   452B 21 00 C0      [10]  166 	ld	hl, #0xc000
   452E 22 10 56      [16]  167 	ld	(_vmem_ahora), hl
                            168 ;src/datos/definiciones.c:40: vaso_lleno      =   vacio;
   4531 21 A5 56      [10]  169 	ld	hl,#_vaso_lleno + 0
   4534 36 00         [10]  170 	ld	(hl), #0x00
   4536 C9            [10]  171 	ret
                            172 ;src/datos/definiciones.c:49: void inicia_objetos(){
                            173 ;	---------------------------------
                            174 ; Function inicia_objetos
                            175 ; ---------------------------------
   4537                     176 _inicia_objetos::
                            177 ;src/datos/definiciones.c:50: cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
   4537 21 0A 00      [10]  178 	ld	hl, #0x000a
   453A E5            [11]  179 	push	hl
   453B 21 65 45      [10]  180 	ld	hl, #_player_init
   453E E5            [11]  181 	push	hl
   453F 21 27 56      [10]  182 	ld	hl, #_array
   4542 E5            [11]  183 	push	hl
   4543 CD CE 4C      [17]  184 	call	_cpct_memcpy
                            185 ;src/datos/definiciones.c:51: cpct_memcpy (&array[2], &manzana_init, sizeof(array[0]));
   4546 21 0A 00      [10]  186 	ld	hl, #0x000a
   4549 E5            [11]  187 	push	hl
   454A 21 6F 45      [10]  188 	ld	hl, #_manzana_init
   454D E5            [11]  189 	push	hl
   454E 21 3B 56      [10]  190 	ld	hl, #(_array + 0x0014)
   4551 E5            [11]  191 	push	hl
   4552 CD CE 4C      [17]  192 	call	_cpct_memcpy
                            193 ;src/datos/definiciones.c:52: cpct_memcpy (&array[1], &pera_init, sizeof(array[0]));
   4555 21 0A 00      [10]  194 	ld	hl, #0x000a
   4558 E5            [11]  195 	push	hl
   4559 21 79 45      [10]  196 	ld	hl, #_pera_init
   455C E5            [11]  197 	push	hl
   455D 21 31 56      [10]  198 	ld	hl, #(_array + 0x000a)
   4560 E5            [11]  199 	push	hl
   4561 CD CE 4C      [17]  200 	call	_cpct_memcpy
   4564 C9            [10]  201 	ret
   4565                     202 _player_init:
   4565 01                  203 	.db #0x01	; 1
   4566 0A                  204 	.db #0x0a	; 10
   4567 0A                  205 	.db #0x0a	; 10
   4568 00                  206 	.db #0x00	;  0
   4569 00                  207 	.db #0x00	;  0
   456A 04                  208 	.db #0x04	; 4
   456B 28                  209 	.db #0x28	; 40
   456C F4 41               210 	.dw _rightpng
   456E 00                  211 	.db #0x00	; 0
   456F                     212 _manzana_init:
   456F 01                  213 	.db #0x01	; 1
   4570 50                  214 	.db #0x50	; 80	'P'
   4571 0A                  215 	.db #0x0a	; 10
   4572 FF                  216 	.db #0xff	; -1
   4573 00                  217 	.db #0x00	;  0
   4574 03                  218 	.db #0x03	; 3
   4575 18                  219 	.db #0x18	; 24
   4576 DC 42               220 	.dw _manzana
   4578 3C                  221 	.db #0x3c	; 60
   4579                     222 _pera_init:
   4579 01                  223 	.db #0x01	; 1
   457A 3C                  224 	.db #0x3c	; 60
   457B 32                  225 	.db #0x32	; 50	'2'
   457C FF                  226 	.db #0xff	; -1
   457D 00                  227 	.db #0x00	;  0
   457E 03                  228 	.db #0x03	; 3
   457F 18                  229 	.db #0x18	; 24
   4580 94 42               230 	.dw _pera
   4582 3C                  231 	.db #0x3c	; 60
                            232 	.area _CODE
                            233 	.area _INITIALIZER
                            234 	.area _CABS (ABS)

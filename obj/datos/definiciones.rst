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
                             12 	.globl _pobjeto2
                             13 	.globl _pobjeto1
                             14 	.globl _pjugador
                             15 	.globl _item1
                             16 	.globl _player
                             17 	.globl _array
                             18 	.globl _vidas
                             19 	.globl _puntos_centena
                             20 	.globl _puntos_decena
                             21 	.globl _y_start_manzana
                             22 	.globl _x_start_manzana
                             23 	.globl _caida_objeto
                             24 	.globl _vx_manzana
                             25 	.globl _spr_manzana
                             26 	.globl _y_manzana
                             27 	.globl _x_manzana
                             28 	.globl _vx_pera
                             29 	.globl _spr_pera
                             30 	.globl _y_pera
                             31 	.globl _x_pera
                             32 	.globl _vy_jug
                             33 	.globl _spr_jugador
                             34 	.globl _y_jugador
                             35 	.globl _x_jugador
                             36 	.globl _pera_init
                             37 	.globl _manzana_init
                             38 	.globl _player_init
                             39 	.globl _iniciar_valores
                             40 	.globl _inicia_objetos
                             41 ;--------------------------------------------------------
                             42 ; special function registers
                             43 ;--------------------------------------------------------
                             44 ;--------------------------------------------------------
                             45 ; ram data
                             46 ;--------------------------------------------------------
                             47 	.area _DATA
   4C9C                      48 _x_jugador::
   4C9C                      49 	.ds 1
   4C9D                      50 _y_jugador::
   4C9D                      51 	.ds 1
   4C9E                      52 _spr_jugador::
   4C9E                      53 	.ds 2
   4CA0                      54 _vy_jug::
   4CA0                      55 	.ds 1
   4CA1                      56 _x_pera::
   4CA1                      57 	.ds 1
   4CA2                      58 _y_pera::
   4CA2                      59 	.ds 1
   4CA3                      60 _spr_pera::
   4CA3                      61 	.ds 2
   4CA5                      62 _vx_pera::
   4CA5                      63 	.ds 1
   4CA6                      64 _x_manzana::
   4CA6                      65 	.ds 1
   4CA7                      66 _y_manzana::
   4CA7                      67 	.ds 1
   4CA8                      68 _spr_manzana::
   4CA8                      69 	.ds 2
   4CAA                      70 _vx_manzana::
   4CAA                      71 	.ds 1
   4CAB                      72 _caida_objeto::
   4CAB                      73 	.ds 1
   4CAC                      74 _x_start_manzana::
   4CAC                      75 	.ds 1
   4CAD                      76 _y_start_manzana::
   4CAD                      77 	.ds 1
   4CAE                      78 _puntos_decena::
   4CAE                      79 	.ds 1
   4CAF                      80 _puntos_centena::
   4CAF                      81 	.ds 1
   4CB0                      82 _vidas::
   4CB0                      83 	.ds 1
   4CB1                      84 _array::
   4CB1                      85 	.ds 100
   4D15                      86 _player::
   4D15                      87 	.ds 10
   4D1F                      88 _item1::
   4D1F                      89 	.ds 10
   4D29                      90 _pjugador::
   4D29                      91 	.ds 2
   4D2B                      92 _pobjeto1::
   4D2B                      93 	.ds 2
   4D2D                      94 _pobjeto2::
   4D2D                      95 	.ds 2
                             96 ;--------------------------------------------------------
                             97 ; ram data
                             98 ;--------------------------------------------------------
                             99 	.area _INITIALIZED
                            100 ;--------------------------------------------------------
                            101 ; absolute external ram data
                            102 ;--------------------------------------------------------
                            103 	.area _DABS (ABS)
                            104 ;--------------------------------------------------------
                            105 ; global & static initialisations
                            106 ;--------------------------------------------------------
                            107 	.area _HOME
                            108 	.area _GSINIT
                            109 	.area _GSFINAL
                            110 	.area _GSINIT
                            111 ;--------------------------------------------------------
                            112 ; Home
                            113 ;--------------------------------------------------------
                            114 	.area _HOME
                            115 	.area _HOME
                            116 ;--------------------------------------------------------
                            117 ; code
                            118 ;--------------------------------------------------------
                            119 	.area _CODE
                            120 ;src/datos/definiciones.c:26: void iniciar_valores(){
                            121 ;	---------------------------------
                            122 ; Function iniciar_valores
                            123 ; ---------------------------------
   43B0                     124 _iniciar_valores::
                            125 ;src/datos/definiciones.c:27: x_manzana       =   x_start_objeto;
   43B0 21 A6 4C      [10]  126 	ld	hl,#_x_manzana + 0
   43B3 36 3C         [10]  127 	ld	(hl), #0x3c
                            128 ;src/datos/definiciones.c:28: y_manzana       =   y_frame_1;
   43B5 21 A7 4C      [10]  129 	ld	hl,#_y_manzana + 0
   43B8 36 0A         [10]  130 	ld	(hl), #0x0a
                            131 ;src/datos/definiciones.c:29: puntos          =   '0';
   43BA 21 31 4D      [10]  132 	ld	hl,#_puntos + 0
   43BD 36 30         [10]  133 	ld	(hl), #0x30
                            134 ;src/datos/definiciones.c:30: puntos_decena   =   '0';
   43BF 21 AE 4C      [10]  135 	ld	hl,#_puntos_decena + 0
   43C2 36 30         [10]  136 	ld	(hl), #0x30
                            137 ;src/datos/definiciones.c:31: puntos_centena  =   '0';
   43C4 21 AF 4C      [10]  138 	ld	hl,#_puntos_centena + 0
   43C7 36 30         [10]  139 	ld	(hl), #0x30
                            140 ;src/datos/definiciones.c:32: vidas           =   '3';
   43C9 21 B0 4C      [10]  141 	ld	hl,#_vidas + 0
   43CC 36 33         [10]  142 	ld	(hl), #0x33
                            143 ;src/datos/definiciones.c:33: vx_manzana      =   -1;
   43CE 21 AA 4C      [10]  144 	ld	hl,#_vx_manzana + 0
   43D1 36 FF         [10]  145 	ld	(hl), #0xff
                            146 ;src/datos/definiciones.c:34: caida_objeto    =   x_jugador + DERECHA_W + 1;//posicion donde conprueba si jugador coge objeto
   43D3 21 AB 4C      [10]  147 	ld	hl, #_caida_objeto
   43D6 3A 9C 4C      [13]  148 	ld	a,(#_x_jugador + 0)
   43D9 C6 03         [ 7]  149 	add	a, #0x03
   43DB 77            [ 7]  150 	ld	(hl), a
                            151 ;src/datos/definiciones.c:35: pjugador        =   &array[0];
   43DC 01 B1 4C      [10]  152 	ld	bc, #_array+0
   43DF ED 43 29 4D   [20]  153 	ld	(_pjugador), bc
                            154 ;src/datos/definiciones.c:36: pobjeto1        =   &array[1];
   43E3 21 0A 00      [10]  155 	ld	hl, #0x000a
   43E6 09            [11]  156 	add	hl, bc
   43E7 22 2B 4D      [16]  157 	ld	(_pobjeto1), hl
                            158 ;src/datos/definiciones.c:37: pobjeto2        =   &array[2];
   43EA 21 14 00      [10]  159 	ld	hl, #0x0014
   43ED 09            [11]  160 	add	hl, bc
   43EE 22 2D 4D      [16]  161 	ld	(_pobjeto2), hl
                            162 ;src/datos/definiciones.c:38: vmem_ahora      =   0xC000; 
   43F1 21 00 C0      [10]  163 	ld	hl, #0xc000
   43F4 22 9A 4C      [16]  164 	ld	(_vmem_ahora), hl
   43F7 C9            [10]  165 	ret
                            166 ;src/datos/definiciones.c:47: void inicia_objetos(){
                            167 ;	---------------------------------
                            168 ; Function inicia_objetos
                            169 ; ---------------------------------
   43F8                     170 _inicia_objetos::
                            171 ;src/datos/definiciones.c:48: cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
   43F8 21 0A 00      [10]  172 	ld	hl, #0x000a
   43FB E5            [11]  173 	push	hl
   43FC 21 26 44      [10]  174 	ld	hl, #_player_init
   43FF E5            [11]  175 	push	hl
   4400 21 B1 4C      [10]  176 	ld	hl, #_array
   4403 E5            [11]  177 	push	hl
   4404 CD 81 4B      [17]  178 	call	_cpct_memcpy
                            179 ;src/datos/definiciones.c:49: cpct_memcpy (&array[1], &manzana_init, sizeof(array[0]));
   4407 21 0A 00      [10]  180 	ld	hl, #0x000a
   440A E5            [11]  181 	push	hl
   440B 21 30 44      [10]  182 	ld	hl, #_manzana_init
   440E E5            [11]  183 	push	hl
   440F 21 BB 4C      [10]  184 	ld	hl, #(_array + 0x000a)
   4412 E5            [11]  185 	push	hl
   4413 CD 81 4B      [17]  186 	call	_cpct_memcpy
                            187 ;src/datos/definiciones.c:50: cpct_memcpy (&array[2], &pera_init, sizeof(array[0]));
   4416 21 0A 00      [10]  188 	ld	hl, #0x000a
   4419 E5            [11]  189 	push	hl
   441A 21 3A 44      [10]  190 	ld	hl, #_pera_init
   441D E5            [11]  191 	push	hl
   441E 21 C5 4C      [10]  192 	ld	hl, #(_array + 0x0014)
   4421 E5            [11]  193 	push	hl
   4422 CD 81 4B      [17]  194 	call	_cpct_memcpy
   4425 C9            [10]  195 	ret
   4426                     196 _player_init:
   4426 01                  197 	.db #0x01	; 1
   4427 0A                  198 	.db #0x0a	; 10
   4428 0A                  199 	.db #0x0a	; 10
   4429 00                  200 	.db #0x00	;  0
   442A 00                  201 	.db #0x00	;  0
   442B 04                  202 	.db #0x04	; 4
   442C 28                  203 	.db #0x28	; 40
   442D F4 41               204 	.dw _rightpng
   442F 00                  205 	.db #0x00	; 0
   4430                     206 _manzana_init:
   4430 01                  207 	.db #0x01	; 1
   4431 50                  208 	.db #0x50	; 80	'P'
   4432 0A                  209 	.db #0x0a	; 10
   4433 FF                  210 	.db #0xff	; -1
   4434 00                  211 	.db #0x00	;  0
   4435 02                  212 	.db #0x02	; 2
   4436 10                  213 	.db #0x10	; 16
   4437 B4 42               214 	.dw _manzana
   4439 50                  215 	.db #0x50	; 80	'P'
   443A                     216 _pera_init:
   443A 01                  217 	.db #0x01	; 1
   443B 3C                  218 	.db #0x3c	; 60
   443C 32                  219 	.db #0x32	; 50	'2'
   443D FF                  220 	.db #0xff	; -1
   443E 00                  221 	.db #0x00	;  0
   443F 02                  222 	.db #0x02	; 2
   4440 10                  223 	.db #0x10	; 16
   4441 94 42               224 	.dw _pera
   4443 3C                  225 	.db #0x3c	; 60
                            226 	.area _CODE
                            227 	.area _INITIALIZER
                            228 	.area _CABS (ABS)

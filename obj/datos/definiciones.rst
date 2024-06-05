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
   4D3A                      49 _x_jugador::
   4D3A                      50 	.ds 1
   4D3B                      51 _y_jugador::
   4D3B                      52 	.ds 1
   4D3C                      53 _spr_jugador::
   4D3C                      54 	.ds 2
   4D3E                      55 _vy_jug::
   4D3E                      56 	.ds 1
   4D3F                      57 _x_pera::
   4D3F                      58 	.ds 1
   4D40                      59 _y_pera::
   4D40                      60 	.ds 1
   4D41                      61 _spr_pera::
   4D41                      62 	.ds 2
   4D43                      63 _vx_pera::
   4D43                      64 	.ds 1
   4D44                      65 _x_manzana::
   4D44                      66 	.ds 1
   4D45                      67 _y_manzana::
   4D45                      68 	.ds 1
   4D46                      69 _spr_manzana::
   4D46                      70 	.ds 2
   4D48                      71 _vx_manzana::
   4D48                      72 	.ds 1
   4D49                      73 _caida_objeto::
   4D49                      74 	.ds 1
   4D4A                      75 _x_start_manzana::
   4D4A                      76 	.ds 1
   4D4B                      77 _y_start_manzana::
   4D4B                      78 	.ds 1
   4D4C                      79 _puntos_decena::
   4D4C                      80 	.ds 1
   4D4D                      81 _puntos_centena::
   4D4D                      82 	.ds 1
   4D4E                      83 _vidas::
   4D4E                      84 	.ds 1
   4D4F                      85 _array::
   4D4F                      86 	.ds 100
   4DB3                      87 _player::
   4DB3                      88 	.ds 10
   4DBD                      89 _item1::
   4DBD                      90 	.ds 10
   4DC7                      91 _pjugador::
   4DC7                      92 	.ds 2
   4DC9                      93 _pobjeto1::
   4DC9                      94 	.ds 2
   4DCB                      95 _pobjeto2::
   4DCB                      96 	.ds 2
   4DCD                      97 _vaso_lleno::
   4DCD                      98 	.ds 1
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
   447B                     127 _iniciar_valores::
                            128 ;src/datos/definiciones.c:28: x_manzana       =   x_start_objeto;
   447B 21 44 4D      [10]  129 	ld	hl,#_x_manzana + 0
   447E 36 3C         [10]  130 	ld	(hl), #0x3c
                            131 ;src/datos/definiciones.c:29: y_manzana       =   y_frame_1;
   4480 21 45 4D      [10]  132 	ld	hl,#_y_manzana + 0
   4483 36 0A         [10]  133 	ld	(hl), #0x0a
                            134 ;src/datos/definiciones.c:30: puntos          =   '0';
   4485 21 D0 4D      [10]  135 	ld	hl,#_puntos + 0
   4488 36 30         [10]  136 	ld	(hl), #0x30
                            137 ;src/datos/definiciones.c:31: puntos_decena   =   '0';
   448A 21 4C 4D      [10]  138 	ld	hl,#_puntos_decena + 0
   448D 36 30         [10]  139 	ld	(hl), #0x30
                            140 ;src/datos/definiciones.c:32: puntos_centena  =   '0';
   448F 21 4D 4D      [10]  141 	ld	hl,#_puntos_centena + 0
   4492 36 30         [10]  142 	ld	(hl), #0x30
                            143 ;src/datos/definiciones.c:33: vidas           =   '3';
   4494 21 4E 4D      [10]  144 	ld	hl,#_vidas + 0
   4497 36 33         [10]  145 	ld	(hl), #0x33
                            146 ;src/datos/definiciones.c:34: vx_manzana      =   -1;
   4499 21 48 4D      [10]  147 	ld	hl,#_vx_manzana + 0
   449C 36 FF         [10]  148 	ld	(hl), #0xff
                            149 ;src/datos/definiciones.c:35: caida_objeto    =   x_jugador + RIGHTPNG_W + 1;//posicion donde conprueba si jugador coge objeto
   449E 21 49 4D      [10]  150 	ld	hl, #_caida_objeto
   44A1 3A 3A 4D      [13]  151 	ld	a,(#_x_jugador + 0)
   44A4 C6 05         [ 7]  152 	add	a, #0x05
   44A6 77            [ 7]  153 	ld	(hl), a
                            154 ;src/datos/definiciones.c:36: pjugador        =   &array[0];
   44A7 01 4F 4D      [10]  155 	ld	bc, #_array+0
   44AA ED 43 C7 4D   [20]  156 	ld	(_pjugador), bc
                            157 ;src/datos/definiciones.c:37: pobjeto1        =   &array[1];
   44AE 21 0A 00      [10]  158 	ld	hl, #0x000a
   44B1 09            [11]  159 	add	hl, bc
   44B2 22 C9 4D      [16]  160 	ld	(_pobjeto1), hl
                            161 ;src/datos/definiciones.c:38: pobjeto2        =   &array[2];
   44B5 21 14 00      [10]  162 	ld	hl, #0x0014
   44B8 09            [11]  163 	add	hl, bc
   44B9 22 CB 4D      [16]  164 	ld	(_pobjeto2), hl
                            165 ;src/datos/definiciones.c:39: vmem_ahora      =   0xC000; 
   44BC 21 00 C0      [10]  166 	ld	hl, #0xc000
   44BF 22 38 4D      [16]  167 	ld	(_vmem_ahora), hl
                            168 ;src/datos/definiciones.c:40: vaso_lleno      =   vacio;
   44C2 21 CD 4D      [10]  169 	ld	hl,#_vaso_lleno + 0
   44C5 36 00         [10]  170 	ld	(hl), #0x00
   44C7 C9            [10]  171 	ret
                            172 ;src/datos/definiciones.c:49: void inicia_objetos(){
                            173 ;	---------------------------------
                            174 ; Function inicia_objetos
                            175 ; ---------------------------------
   44C8                     176 _inicia_objetos::
                            177 ;src/datos/definiciones.c:50: cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
   44C8 21 0A 00      [10]  178 	ld	hl, #0x000a
   44CB E5            [11]  179 	push	hl
   44CC 21 F6 44      [10]  180 	ld	hl, #_player_init
   44CF E5            [11]  181 	push	hl
   44D0 21 4F 4D      [10]  182 	ld	hl, #_array
   44D3 E5            [11]  183 	push	hl
   44D4 CD 1F 4C      [17]  184 	call	_cpct_memcpy
                            185 ;src/datos/definiciones.c:51: cpct_memcpy (&array[1], &manzana_init, sizeof(array[0]));
   44D7 21 0A 00      [10]  186 	ld	hl, #0x000a
   44DA E5            [11]  187 	push	hl
   44DB 21 00 45      [10]  188 	ld	hl, #_manzana_init
   44DE E5            [11]  189 	push	hl
   44DF 21 59 4D      [10]  190 	ld	hl, #(_array + 0x000a)
   44E2 E5            [11]  191 	push	hl
   44E3 CD 1F 4C      [17]  192 	call	_cpct_memcpy
                            193 ;src/datos/definiciones.c:52: cpct_memcpy (&array[2], &pera_init, sizeof(array[0]));
   44E6 21 0A 00      [10]  194 	ld	hl, #0x000a
   44E9 E5            [11]  195 	push	hl
   44EA 21 0A 45      [10]  196 	ld	hl, #_pera_init
   44ED E5            [11]  197 	push	hl
   44EE 21 63 4D      [10]  198 	ld	hl, #(_array + 0x0014)
   44F1 E5            [11]  199 	push	hl
   44F2 CD 1F 4C      [17]  200 	call	_cpct_memcpy
   44F5 C9            [10]  201 	ret
   44F6                     202 _player_init:
   44F6 01                  203 	.db #0x01	; 1
   44F7 0A                  204 	.db #0x0a	; 10
   44F8 0A                  205 	.db #0x0a	; 10
   44F9 00                  206 	.db #0x00	;  0
   44FA 00                  207 	.db #0x00	;  0
   44FB 04                  208 	.db #0x04	; 4
   44FC 28                  209 	.db #0x28	; 40
   44FD F4 41               210 	.dw _rightpng
   44FF 00                  211 	.db #0x00	; 0
   4500                     212 _manzana_init:
   4500 01                  213 	.db #0x01	; 1
   4501 50                  214 	.db #0x50	; 80	'P'
   4502 0A                  215 	.db #0x0a	; 10
   4503 FF                  216 	.db #0xff	; -1
   4504 00                  217 	.db #0x00	;  0
   4505 02                  218 	.db #0x02	; 2
   4506 10                  219 	.db #0x10	; 16
   4507 B4 42               220 	.dw _manzana
   4509 50                  221 	.db #0x50	; 80	'P'
   450A                     222 _pera_init:
   450A 01                  223 	.db #0x01	; 1
   450B 3C                  224 	.db #0x3c	; 60
   450C 32                  225 	.db #0x32	; 50	'2'
   450D FF                  226 	.db #0xff	; -1
   450E 00                  227 	.db #0x00	;  0
   450F 02                  228 	.db #0x02	; 2
   4510 10                  229 	.db #0x10	; 16
   4511 94 42               230 	.dw _pera
   4513 3C                  231 	.db #0x3c	; 60
                            232 	.area _CODE
                            233 	.area _INITIALIZER
                            234 	.area _CABS (ABS)

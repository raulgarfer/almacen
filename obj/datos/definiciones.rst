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
   8E20                      51 _x_jugador::
   8E20                      52 	.ds 1
   8E21                      53 _y_jugador::
   8E21                      54 	.ds 1
   8E22                      55 _spr_jugador::
   8E22                      56 	.ds 2
   8E24                      57 _vy_jug::
   8E24                      58 	.ds 1
   8E25                      59 _x_pera::
   8E25                      60 	.ds 1
   8E26                      61 _y_pera::
   8E26                      62 	.ds 1
   8E27                      63 _spr_pera::
   8E27                      64 	.ds 2
   8E29                      65 _vx_pera::
   8E29                      66 	.ds 1
   8E2A                      67 _x_manzana::
   8E2A                      68 	.ds 1
   8E2B                      69 _y_manzana::
   8E2B                      70 	.ds 1
   8E2C                      71 _spr_manzana::
   8E2C                      72 	.ds 2
   8E2E                      73 _vx_manzana::
   8E2E                      74 	.ds 1
   8E2F                      75 _caida_objeto::
   8E2F                      76 	.ds 1
   8E30                      77 _x_start_manzana::
   8E30                      78 	.ds 1
   8E31                      79 _y_start_manzana::
   8E31                      80 	.ds 1
   8E32                      81 _puntos_decena::
   8E32                      82 	.ds 1
   8E33                      83 _puntos_centena::
   8E33                      84 	.ds 1
   8E34                      85 _vidas::
   8E34                      86 	.ds 1
   8E35                      87 _array::
   8E35                      88 	.ds 100
   8E99                      89 _player::
   8E99                      90 	.ds 10
   8EA3                      91 _item1::
   8EA3                      92 	.ds 10
   8EAD                      93 _pjugador::
   8EAD                      94 	.ds 2
   8EAF                      95 _ppera::
   8EAF                      96 	.ds 2
   8EB1                      97 _pmanzana::
   8EB1                      98 	.ds 2
   8EB3                      99 _vaso_lleno::
   8EB3                     100 	.ds 1
   8EB4                     101 _hisc::
   8EB4                     102 	.ds 1
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
   8176                     131 _iniciar_valores::
                            132 ;src/datos/definiciones.c:29: x_manzana       =   x_start_objeto;
   8176 21 2A 8E      [10]  133 	ld	hl,#_x_manzana + 0
   8179 36 3C         [10]  134 	ld	(hl), #0x3c
                            135 ;src/datos/definiciones.c:30: y_manzana       =   y_frame_1;
   817B 21 2B 8E      [10]  136 	ld	hl,#_y_manzana + 0
   817E 36 0A         [10]  137 	ld	(hl), #0x0a
                            138 ;src/datos/definiciones.c:31: puntos          =   '0';
   8180 21 B8 8E      [10]  139 	ld	hl,#_puntos + 0
   8183 36 30         [10]  140 	ld	(hl), #0x30
                            141 ;src/datos/definiciones.c:32: puntos_decena   =   '0';
   8185 21 32 8E      [10]  142 	ld	hl,#_puntos_decena + 0
   8188 36 30         [10]  143 	ld	(hl), #0x30
                            144 ;src/datos/definiciones.c:33: puntos_centena  =   '0';
   818A 21 33 8E      [10]  145 	ld	hl,#_puntos_centena + 0
   818D 36 30         [10]  146 	ld	(hl), #0x30
                            147 ;src/datos/definiciones.c:34: vidas           =   '3';
   818F 21 34 8E      [10]  148 	ld	hl,#_vidas + 0
   8192 36 33         [10]  149 	ld	(hl), #0x33
                            150 ;src/datos/definiciones.c:35: vx_manzana      =   -1;
   8194 21 2E 8E      [10]  151 	ld	hl,#_vx_manzana + 0
   8197 36 FF         [10]  152 	ld	(hl), #0xff
                            153 ;src/datos/definiciones.c:36: caida_objeto    =   x_jugador + RIGHTPNG_W + 1;//posicion donde conprueba si jugador coge objeto
   8199 21 2F 8E      [10]  154 	ld	hl, #_caida_objeto
   819C 3A 20 8E      [13]  155 	ld	a,(#_x_jugador + 0)
   819F C6 05         [ 7]  156 	add	a, #0x05
   81A1 77            [ 7]  157 	ld	(hl), a
                            158 ;src/datos/definiciones.c:37: pjugador        =   &array[0];
   81A2 01 35 8E      [10]  159 	ld	bc, #_array+0
   81A5 ED 43 AD 8E   [20]  160 	ld	(_pjugador), bc
                            161 ;src/datos/definiciones.c:38: pmanzana        =   &array[1];
   81A9 21 0A 00      [10]  162 	ld	hl, #0x000a
   81AC 09            [11]  163 	add	hl, bc
   81AD 22 B1 8E      [16]  164 	ld	(_pmanzana), hl
                            165 ;src/datos/definiciones.c:39: ppera           =   &array[2];
   81B0 21 14 00      [10]  166 	ld	hl, #0x0014
   81B3 09            [11]  167 	add	hl, bc
   81B4 22 AF 8E      [16]  168 	ld	(_ppera), hl
                            169 ;src/datos/definiciones.c:40: vmem_ahora      =   0xC000; 
   81B7 21 00 C0      [10]  170 	ld	hl, #0xc000
   81BA 22 1E 8E      [16]  171 	ld	(_vmem_ahora), hl
                            172 ;src/datos/definiciones.c:41: vaso_lleno      =   vacio;
   81BD 21 B3 8E      [10]  173 	ld	hl,#_vaso_lleno + 0
   81C0 36 00         [10]  174 	ld	(hl), #0x00
   81C2 C9            [10]  175 	ret
                            176 ;src/datos/definiciones.c:52: void inicia_objetos(){
                            177 ;	---------------------------------
                            178 ; Function inicia_objetos
                            179 ; ---------------------------------
   81C3                     180 _inicia_objetos::
                            181 ;src/datos/definiciones.c:53: cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
   81C3 21 0A 00      [10]  182 	ld	hl, #0x000a
   81C6 E5            [11]  183 	push	hl
   81C7 21 E2 81      [10]  184 	ld	hl, #_player_init
   81CA E5            [11]  185 	push	hl
   81CB 21 35 8E      [10]  186 	ld	hl, #_array
   81CE E5            [11]  187 	push	hl
   81CF CD 05 8D      [17]  188 	call	_cpct_memcpy
                            189 ;src/datos/definiciones.c:54: cpct_memcpy (&array[1], &pera_init, sizeof(array[0]));
   81D2 21 0A 00      [10]  190 	ld	hl, #0x000a
   81D5 E5            [11]  191 	push	hl
   81D6 21 F6 81      [10]  192 	ld	hl, #_pera_init
   81D9 E5            [11]  193 	push	hl
   81DA 21 3F 8E      [10]  194 	ld	hl, #(_array + 0x000a)
   81DD E5            [11]  195 	push	hl
   81DE CD 05 8D      [17]  196 	call	_cpct_memcpy
   81E1 C9            [10]  197 	ret
   81E2                     198 _player_init:
   81E2 01                  199 	.db #0x01	; 1
   81E3 0A                  200 	.db #0x0a	; 10
   81E4 0A                  201 	.db #0x0a	; 10
   81E5 00                  202 	.db #0x00	;  0
   81E6 00                  203 	.db #0x00	;  0
   81E7 04                  204 	.db #0x04	; 4
   81E8 28                  205 	.db #0x28	; 40
   81E9 80 7E               206 	.dw _rightpng
   81EB 00                  207 	.db #0x00	; 0
   81EC                     208 _manzana_init:
   81EC 01                  209 	.db #0x01	; 1
   81ED 50                  210 	.db #0x50	; 80	'P'
   81EE 0A                  211 	.db #0x0a	; 10
   81EF FF                  212 	.db #0xff	; -1
   81F0 00                  213 	.db #0x00	;  0
   81F1 03                  214 	.db #0x03	; 3
   81F2 18                  215 	.db #0x18	; 24
   81F3 68 7F               216 	.dw _manzana
   81F5 3C                  217 	.db #0x3c	; 60
   81F6                     218 _pera_init:
   81F6 01                  219 	.db #0x01	; 1
   81F7 3C                  220 	.db #0x3c	; 60
   81F8 32                  221 	.db #0x32	; 50	'2'
   81F9 FF                  222 	.db #0xff	; -1
   81FA 00                  223 	.db #0x00	;  0
   81FB 03                  224 	.db #0x03	; 3
   81FC 18                  225 	.db #0x18	; 24
   81FD 20 7F               226 	.dw _pera
   81FF 3C                  227 	.db #0x3c	; 60
   8200                     228 _pera2_init:
   8200 01                  229 	.db #0x01	; 1
   8201 46                  230 	.db #0x46	; 70	'F'
   8202 64                  231 	.db #0x64	; 100	'd'
   8203 FF                  232 	.db #0xff	; -1
   8204 00                  233 	.db #0x00	;  0
   8205 03                  234 	.db #0x03	; 3
   8206 18                  235 	.db #0x18	; 24
   8207 20 7F               236 	.dw _pera
   8209 3C                  237 	.db #0x3c	; 60
                            238 	.area _CODE
                            239 	.area _INITIALIZER
                            240 	.area _CABS (ABS)

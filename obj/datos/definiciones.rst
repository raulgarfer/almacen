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
                             12 	.globl _array
                             13 	.globl _item1
                             14 	.globl _player
                             15 	.globl _vidas
                             16 	.globl _puntos_centena
                             17 	.globl _puntos_decena
                             18 	.globl _y_start_manzana
                             19 	.globl _x_start_manzana
                             20 	.globl _caida_objeto
                             21 	.globl _vx_manzana
                             22 	.globl _spr_manzana
                             23 	.globl _y_manzana
                             24 	.globl _x_manzana
                             25 	.globl _vx_pera
                             26 	.globl _spr_pera
                             27 	.globl _y_pera
                             28 	.globl _x_pera
                             29 	.globl _vy_jug
                             30 	.globl _spr_jugador
                             31 	.globl _y_jugador
                             32 	.globl _x_jugador
                             33 	.globl _manzana_init
                             34 	.globl _player_init
                             35 	.globl _iniciar_valores
                             36 	.globl _inicia_objetos
                             37 ;--------------------------------------------------------
                             38 ; special function registers
                             39 ;--------------------------------------------------------
                             40 ;--------------------------------------------------------
                             41 ; ram data
                             42 ;--------------------------------------------------------
                             43 	.area _DATA
   47DD                      44 _x_jugador::
   47DD                      45 	.ds 1
   47DE                      46 _y_jugador::
   47DE                      47 	.ds 1
   47DF                      48 _spr_jugador::
   47DF                      49 	.ds 2
   47E1                      50 _vy_jug::
   47E1                      51 	.ds 1
   47E2                      52 _x_pera::
   47E2                      53 	.ds 1
   47E3                      54 _y_pera::
   47E3                      55 	.ds 1
   47E4                      56 _spr_pera::
   47E4                      57 	.ds 2
   47E6                      58 _vx_pera::
   47E6                      59 	.ds 1
   47E7                      60 _x_manzana::
   47E7                      61 	.ds 1
   47E8                      62 _y_manzana::
   47E8                      63 	.ds 1
   47E9                      64 _spr_manzana::
   47E9                      65 	.ds 2
   47EB                      66 _vx_manzana::
   47EB                      67 	.ds 1
   47EC                      68 _caida_objeto::
   47EC                      69 	.ds 1
   47ED                      70 _x_start_manzana::
   47ED                      71 	.ds 1
   47EE                      72 _y_start_manzana::
   47EE                      73 	.ds 1
   47EF                      74 _puntos_decena::
   47EF                      75 	.ds 1
   47F0                      76 _puntos_centena::
   47F0                      77 	.ds 1
   47F1                      78 _vidas::
   47F1                      79 	.ds 1
   47F2                      80 _player::
   47F2                      81 	.ds 9
   47FB                      82 _item1::
   47FB                      83 	.ds 9
   4804                      84 _array::
   4804                      85 	.ds 90
                             86 ;--------------------------------------------------------
                             87 ; ram data
                             88 ;--------------------------------------------------------
                             89 	.area _INITIALIZED
                             90 ;--------------------------------------------------------
                             91 ; absolute external ram data
                             92 ;--------------------------------------------------------
                             93 	.area _DABS (ABS)
                             94 ;--------------------------------------------------------
                             95 ; global & static initialisations
                             96 ;--------------------------------------------------------
                             97 	.area _HOME
                             98 	.area _GSINIT
                             99 	.area _GSFINAL
                            100 	.area _GSINIT
                            101 ;--------------------------------------------------------
                            102 ; Home
                            103 ;--------------------------------------------------------
                            104 	.area _HOME
                            105 	.area _HOME
                            106 ;--------------------------------------------------------
                            107 ; code
                            108 ;--------------------------------------------------------
                            109 	.area _CODE
                            110 ;src/datos/definiciones.c:21: void iniciar_valores(){
                            111 ;	---------------------------------
                            112 ; Function iniciar_valores
                            113 ; ---------------------------------
   4124                     114 _iniciar_valores::
                            115 ;src/datos/definiciones.c:22: array[0].x       =   x_start_jugador;
   4124 21 05 48      [10]  116 	ld	hl, #(_array + 0x0001)
   4127 36 0A         [10]  117 	ld	(hl), #0x0a
                            118 ;src/datos/definiciones.c:23: array[0].y       =   y_frame_1;
   4129 21 06 48      [10]  119 	ld	hl, #(_array + 0x0002)
   412C 36 14         [10]  120 	ld	(hl), #0x14
                            121 ;src/datos/definiciones.c:24: array[0].vy          =   0;
   412E 21 08 48      [10]  122 	ld	hl, #(_array + 0x0004)
   4131 36 00         [10]  123 	ld	(hl), #0x00
                            124 ;src/datos/definiciones.c:25: x_manzana       =   x_start_objeto;
   4133 21 E7 47      [10]  125 	ld	hl,#_x_manzana + 0
   4136 36 3C         [10]  126 	ld	(hl), #0x3c
                            127 ;src/datos/definiciones.c:26: y_manzana       =   y_frame_1;
   4138 21 E8 47      [10]  128 	ld	hl,#_y_manzana + 0
   413B 36 14         [10]  129 	ld	(hl), #0x14
                            130 ;src/datos/definiciones.c:27: puntos          =   '0';
   413D 21 5E 48      [10]  131 	ld	hl,#_puntos + 0
   4140 36 30         [10]  132 	ld	(hl), #0x30
                            133 ;src/datos/definiciones.c:28: puntos_decena   =   '0';
   4142 21 EF 47      [10]  134 	ld	hl,#_puntos_decena + 0
   4145 36 30         [10]  135 	ld	(hl), #0x30
                            136 ;src/datos/definiciones.c:29: puntos_centena  =   '0';
   4147 21 F0 47      [10]  137 	ld	hl,#_puntos_centena + 0
   414A 36 30         [10]  138 	ld	(hl), #0x30
                            139 ;src/datos/definiciones.c:30: vidas           =   '3';
   414C 21 F1 47      [10]  140 	ld	hl,#_vidas + 0
   414F 36 33         [10]  141 	ld	(hl), #0x33
                            142 ;src/datos/definiciones.c:31: vx_manzana      =   -1;
   4151 21 EB 47      [10]  143 	ld	hl,#_vx_manzana + 0
   4154 36 FF         [10]  144 	ld	(hl), #0xff
                            145 ;src/datos/definiciones.c:32: caida_objeto    =   x_jugador + DERECHA_W + 1;//posicion donde conprueba si jugador coge objeto
   4156 21 EC 47      [10]  146 	ld	hl, #_caida_objeto
   4159 3A DD 47      [13]  147 	ld	a,(#_x_jugador + 0)
   415C C6 03         [ 7]  148 	add	a, #0x03
   415E 77            [ 7]  149 	ld	(hl), a
   415F C9            [10]  150 	ret
                            151 ;src/datos/definiciones.c:44: void inicia_objetos(){
                            152 ;	---------------------------------
                            153 ; Function inicia_objetos
                            154 ; ---------------------------------
   4160                     155 _inicia_objetos::
                            156 ;src/datos/definiciones.c:45: cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
   4160 21 09 00      [10]  157 	ld	hl, #0x0009
   4163 E5            [11]  158 	push	hl
   4164 21 7F 41      [10]  159 	ld	hl, #_player_init
   4167 E5            [11]  160 	push	hl
   4168 21 04 48      [10]  161 	ld	hl, #_array
   416B E5            [11]  162 	push	hl
   416C CD D6 46      [17]  163 	call	_cpct_memcpy
                            164 ;src/datos/definiciones.c:46: cpct_memcpy (&array[1], &manzana_init, sizeof(array[0]));
   416F 21 09 00      [10]  165 	ld	hl, #0x0009
   4172 E5            [11]  166 	push	hl
   4173 21 88 41      [10]  167 	ld	hl, #_manzana_init
   4176 E5            [11]  168 	push	hl
   4177 21 0D 48      [10]  169 	ld	hl, #(_array + 0x0009)
   417A E5            [11]  170 	push	hl
   417B CD D6 46      [17]  171 	call	_cpct_memcpy
   417E C9            [10]  172 	ret
   417F                     173 _player_init:
   417F 01                  174 	.db #0x01	; 1
   4180 0A                  175 	.db #0x0a	; 10
   4181 14                  176 	.db #0x14	; 20
   4182 00                  177 	.db #0x00	;  0
   4183 00                  178 	.db #0x00	;  0
   4184 02                  179 	.db #0x02	; 2
   4185 14                  180 	.db #0x14	; 20
   4186 B8 40               181 	.dw _derecha
   4188                     182 _manzana_init:
   4188 01                  183 	.db #0x01	; 1
   4189 3C                  184 	.db #0x3c	; 60
   418A 14                  185 	.db #0x14	; 20
   418B FF                  186 	.db #0xff	; -1
   418C 00                  187 	.db #0x00	;  0
   418D 02                  188 	.db #0x02	; 2
   418E 10                  189 	.db #0x10	; 16
   418F 20 40               190 	.dw _manzana
                            191 	.area _CODE
                            192 	.area _INITIALIZER
                            193 	.area _CABS (ABS)

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
   47CB                      44 _x_jugador::
   47CB                      45 	.ds 1
   47CC                      46 _y_jugador::
   47CC                      47 	.ds 1
   47CD                      48 _spr_jugador::
   47CD                      49 	.ds 2
   47CF                      50 _vy_jug::
   47CF                      51 	.ds 1
   47D0                      52 _x_pera::
   47D0                      53 	.ds 1
   47D1                      54 _y_pera::
   47D1                      55 	.ds 1
   47D2                      56 _spr_pera::
   47D2                      57 	.ds 2
   47D4                      58 _vx_pera::
   47D4                      59 	.ds 1
   47D5                      60 _x_manzana::
   47D5                      61 	.ds 1
   47D6                      62 _y_manzana::
   47D6                      63 	.ds 1
   47D7                      64 _spr_manzana::
   47D7                      65 	.ds 2
   47D9                      66 _vx_manzana::
   47D9                      67 	.ds 1
   47DA                      68 _caida_objeto::
   47DA                      69 	.ds 1
   47DB                      70 _x_start_manzana::
   47DB                      71 	.ds 1
   47DC                      72 _y_start_manzana::
   47DC                      73 	.ds 1
   47DD                      74 _puntos_decena::
   47DD                      75 	.ds 1
   47DE                      76 _puntos_centena::
   47DE                      77 	.ds 1
   47DF                      78 _vidas::
   47DF                      79 	.ds 1
   47E0                      80 _player::
   47E0                      81 	.ds 9
   47E9                      82 _item1::
   47E9                      83 	.ds 9
   47F2                      84 _array::
   47F2                      85 	.ds 90
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
                            115 ;src/datos/definiciones.c:25: x_manzana       =   x_start_objeto;
   4124 21 D5 47      [10]  116 	ld	hl,#_x_manzana + 0
   4127 36 3C         [10]  117 	ld	(hl), #0x3c
                            118 ;src/datos/definiciones.c:26: y_manzana       =   y_frame_1;
   4129 21 D6 47      [10]  119 	ld	hl,#_y_manzana + 0
   412C 36 14         [10]  120 	ld	(hl), #0x14
                            121 ;src/datos/definiciones.c:27: puntos          =   '0';
   412E 21 4C 48      [10]  122 	ld	hl,#_puntos + 0
   4131 36 30         [10]  123 	ld	(hl), #0x30
                            124 ;src/datos/definiciones.c:28: puntos_decena   =   '0';
   4133 21 DD 47      [10]  125 	ld	hl,#_puntos_decena + 0
   4136 36 30         [10]  126 	ld	(hl), #0x30
                            127 ;src/datos/definiciones.c:29: puntos_centena  =   '0';
   4138 21 DE 47      [10]  128 	ld	hl,#_puntos_centena + 0
   413B 36 30         [10]  129 	ld	(hl), #0x30
                            130 ;src/datos/definiciones.c:30: vidas           =   '3';
   413D 21 DF 47      [10]  131 	ld	hl,#_vidas + 0
   4140 36 33         [10]  132 	ld	(hl), #0x33
                            133 ;src/datos/definiciones.c:31: vx_manzana      =   -1;
   4142 21 D9 47      [10]  134 	ld	hl,#_vx_manzana + 0
   4145 36 FF         [10]  135 	ld	(hl), #0xff
                            136 ;src/datos/definiciones.c:32: caida_objeto    =   x_jugador + DERECHA_W + 1;//posicion donde conprueba si jugador coge objeto
   4147 21 DA 47      [10]  137 	ld	hl, #_caida_objeto
   414A 3A CB 47      [13]  138 	ld	a,(#_x_jugador + 0)
   414D C6 03         [ 7]  139 	add	a, #0x03
   414F 77            [ 7]  140 	ld	(hl), a
   4150 C9            [10]  141 	ret
                            142 ;src/datos/definiciones.c:48: void inicia_objetos(){
                            143 ;	---------------------------------
                            144 ; Function inicia_objetos
                            145 ; ---------------------------------
   4151                     146 _inicia_objetos::
                            147 ;src/datos/definiciones.c:49: cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
   4151 21 09 00      [10]  148 	ld	hl, #0x0009
   4154 E5            [11]  149 	push	hl
   4155 21 70 41      [10]  150 	ld	hl, #_player_init
   4158 E5            [11]  151 	push	hl
   4159 21 F2 47      [10]  152 	ld	hl, #_array
   415C E5            [11]  153 	push	hl
   415D CD C4 46      [17]  154 	call	_cpct_memcpy
                            155 ;src/datos/definiciones.c:50: cpct_memcpy (&array[1], &manzana_init, sizeof(array[0]));
   4160 21 09 00      [10]  156 	ld	hl, #0x0009
   4163 E5            [11]  157 	push	hl
   4164 21 79 41      [10]  158 	ld	hl, #_manzana_init
   4167 E5            [11]  159 	push	hl
   4168 21 FB 47      [10]  160 	ld	hl, #(_array + 0x0009)
   416B E5            [11]  161 	push	hl
   416C CD C4 46      [17]  162 	call	_cpct_memcpy
   416F C9            [10]  163 	ret
   4170                     164 _player_init:
   4170 01                  165 	.db #0x01	; 1
   4171 0A                  166 	.db #0x0a	; 10
   4172 14                  167 	.db #0x14	; 20
   4173 00                  168 	.db #0x00	;  0
   4174 00                  169 	.db #0x00	;  0
   4175 02                  170 	.db #0x02	; 2
   4176 14                  171 	.db #0x14	; 20
   4177 B8 40               172 	.dw _derecha
   4179                     173 _manzana_init:
   4179 01                  174 	.db #0x01	; 1
   417A 3C                  175 	.db #0x3c	; 60
   417B 14                  176 	.db #0x14	; 20
   417C FF                  177 	.db #0xff	; -1
   417D 00                  178 	.db #0x00	;  0
   417E 02                  179 	.db #0x02	; 2
   417F 10                  180 	.db #0x10	; 16
   4180 20 40               181 	.dw _manzana
                            182 	.area _CODE
                            183 	.area _INITIALIZER
                            184 	.area _CABS (ABS)

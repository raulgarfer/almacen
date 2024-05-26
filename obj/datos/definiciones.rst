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
                             11 	.globl _vidas
                             12 	.globl _puntos_centena
                             13 	.globl _puntos_decena
                             14 	.globl _y_start_manzana
                             15 	.globl _x_start_manzana
                             16 	.globl _caida_objeto
                             17 	.globl _vx_manzana
                             18 	.globl _spr_manzana
                             19 	.globl _y_manzana
                             20 	.globl _x_manzana
                             21 	.globl _vx_pera
                             22 	.globl _spr_pera
                             23 	.globl _y_pera
                             24 	.globl _x_pera
                             25 	.globl _vy_jug
                             26 	.globl _spr_jugador
                             27 	.globl _y_jugador
                             28 	.globl _x_jugador
                             29 	.globl _iniciar_valores
                             30 ;--------------------------------------------------------
                             31 ; special function registers
                             32 ;--------------------------------------------------------
                             33 ;--------------------------------------------------------
                             34 ; ram data
                             35 ;--------------------------------------------------------
                             36 	.area _DATA
   47BE                      37 _x_jugador::
   47BE                      38 	.ds 1
   47BF                      39 _y_jugador::
   47BF                      40 	.ds 1
   47C0                      41 _spr_jugador::
   47C0                      42 	.ds 2
   47C2                      43 _vy_jug::
   47C2                      44 	.ds 1
   47C3                      45 _x_pera::
   47C3                      46 	.ds 1
   47C4                      47 _y_pera::
   47C4                      48 	.ds 1
   47C5                      49 _spr_pera::
   47C5                      50 	.ds 2
   47C7                      51 _vx_pera::
   47C7                      52 	.ds 1
   47C8                      53 _x_manzana::
   47C8                      54 	.ds 1
   47C9                      55 _y_manzana::
   47C9                      56 	.ds 1
   47CA                      57 _spr_manzana::
   47CA                      58 	.ds 2
   47CC                      59 _vx_manzana::
   47CC                      60 	.ds 1
   47CD                      61 _caida_objeto::
   47CD                      62 	.ds 1
   47CE                      63 _x_start_manzana::
   47CE                      64 	.ds 1
   47CF                      65 _y_start_manzana::
   47CF                      66 	.ds 1
   47D0                      67 _puntos_decena::
   47D0                      68 	.ds 1
   47D1                      69 _puntos_centena::
   47D1                      70 	.ds 1
   47D2                      71 _vidas::
   47D2                      72 	.ds 1
                             73 ;--------------------------------------------------------
                             74 ; ram data
                             75 ;--------------------------------------------------------
                             76 	.area _INITIALIZED
                             77 ;--------------------------------------------------------
                             78 ; absolute external ram data
                             79 ;--------------------------------------------------------
                             80 	.area _DABS (ABS)
                             81 ;--------------------------------------------------------
                             82 ; global & static initialisations
                             83 ;--------------------------------------------------------
                             84 	.area _HOME
                             85 	.area _GSINIT
                             86 	.area _GSFINAL
                             87 	.area _GSINIT
                             88 ;--------------------------------------------------------
                             89 ; Home
                             90 ;--------------------------------------------------------
                             91 	.area _HOME
                             92 	.area _HOME
                             93 ;--------------------------------------------------------
                             94 ; code
                             95 ;--------------------------------------------------------
                             96 	.area _CODE
                             97 ;src/datos/definiciones.c:23: void iniciar_valores(){
                             98 ;	---------------------------------
                             99 ; Function iniciar_valores
                            100 ; ---------------------------------
   4121                     101 _iniciar_valores::
                            102 ;src/datos/definiciones.c:25: x_jugador       =   x_start_jugador;
   4121 21 BE 47      [10]  103 	ld	hl,#_x_jugador + 0
   4124 36 0A         [10]  104 	ld	(hl), #0x0a
                            105 ;src/datos/definiciones.c:26: y_jugador       =   y_frame_1;
   4126 21 BF 47      [10]  106 	ld	hl,#_y_jugador + 0
   4129 36 14         [10]  107 	ld	(hl), #0x14
                            108 ;src/datos/definiciones.c:27: vy_jug          =   0;
   412B 21 C2 47      [10]  109 	ld	hl,#_vy_jug + 0
   412E 36 00         [10]  110 	ld	(hl), #0x00
                            111 ;src/datos/definiciones.c:28: x_manzana       =   x_start_objeto;
   4130 21 C8 47      [10]  112 	ld	hl,#_x_manzana + 0
   4133 36 3C         [10]  113 	ld	(hl), #0x3c
                            114 ;src/datos/definiciones.c:29: y_manzana       =   y_frame_1;
   4135 21 C9 47      [10]  115 	ld	hl,#_y_manzana + 0
   4138 36 14         [10]  116 	ld	(hl), #0x14
                            117 ;src/datos/definiciones.c:30: puntos          =   '0';
   413A 21 D3 47      [10]  118 	ld	hl,#_puntos + 0
   413D 36 30         [10]  119 	ld	(hl), #0x30
                            120 ;src/datos/definiciones.c:31: puntos_decena   =   '0';
   413F 21 D0 47      [10]  121 	ld	hl,#_puntos_decena + 0
   4142 36 30         [10]  122 	ld	(hl), #0x30
                            123 ;src/datos/definiciones.c:32: puntos_centena  =   '0';
   4144 21 D1 47      [10]  124 	ld	hl,#_puntos_centena + 0
   4147 36 30         [10]  125 	ld	(hl), #0x30
                            126 ;src/datos/definiciones.c:33: vidas           =   '3';
   4149 21 D2 47      [10]  127 	ld	hl,#_vidas + 0
   414C 36 33         [10]  128 	ld	(hl), #0x33
                            129 ;src/datos/definiciones.c:34: vx_manzana      =   -1;
   414E 21 CC 47      [10]  130 	ld	hl,#_vx_manzana + 0
   4151 36 FF         [10]  131 	ld	(hl), #0xff
                            132 ;src/datos/definiciones.c:35: caida_objeto    =   x_jugador + DERECHA_W + 1;//posicion donde conprueba si jugador coge objeto
   4153 21 CD 47      [10]  133 	ld	hl,#_caida_objeto + 0
   4156 36 0D         [10]  134 	ld	(hl), #0x0d
   4158 C9            [10]  135 	ret
                            136 	.area _CODE
                            137 	.area _INITIALIZER
                            138 	.area _CABS (ABS)

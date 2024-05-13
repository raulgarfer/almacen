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
                             11 	.globl _iniciar_valores
                             12 	.globl _puntos_decena
                             13 	.globl _y_start_manzana
                             14 	.globl _x_start_manzana
                             15 	.globl _y_start_jugador
                             16 	.globl _x_start_jugador
                             17 	.globl _y_frame_4
                             18 	.globl _y_frame_3
                             19 	.globl _y_frame_2
                             20 	.globl _y_frame_1
                             21 	.globl _caida_objeto
                             22 	.globl _vx_manzana
                             23 	.globl _spr_manzana
                             24 	.globl _y_manzana
                             25 	.globl _x_manzana
                             26 	.globl _x_start_objeto
                             27 	.globl _vx_pera
                             28 	.globl _spr_pera
                             29 	.globl _y_pera
                             30 	.globl _x_pera
                             31 	.globl _vy_jug
                             32 	.globl _spr_jugador
                             33 	.globl _y_jugador
                             34 	.globl _x_jugador
                             35 ;--------------------------------------------------------
                             36 ; special function registers
                             37 ;--------------------------------------------------------
                             38 ;--------------------------------------------------------
                             39 ; ram data
                             40 ;--------------------------------------------------------
                             41 	.area _DATA
   4697                      42 _x_jugador::
   4697                      43 	.ds 1
   4698                      44 _y_jugador::
   4698                      45 	.ds 1
   4699                      46 _spr_jugador::
   4699                      47 	.ds 2
   469B                      48 _vy_jug::
   469B                      49 	.ds 1
   469C                      50 _x_pera::
   469C                      51 	.ds 1
   469D                      52 _y_pera::
   469D                      53 	.ds 1
   469E                      54 _spr_pera::
   469E                      55 	.ds 2
   46A0                      56 _vx_pera::
   46A0                      57 	.ds 1
   46A1                      58 _x_start_objeto::
   46A1                      59 	.ds 1
   46A2                      60 _x_manzana::
   46A2                      61 	.ds 1
   46A3                      62 _y_manzana::
   46A3                      63 	.ds 1
   46A4                      64 _spr_manzana::
   46A4                      65 	.ds 2
   46A6                      66 _vx_manzana::
   46A6                      67 	.ds 1
   46A7                      68 _caida_objeto::
   46A7                      69 	.ds 1
   46A8                      70 _y_frame_1::
   46A8                      71 	.ds 1
   46A9                      72 _y_frame_2::
   46A9                      73 	.ds 1
   46AA                      74 _y_frame_3::
   46AA                      75 	.ds 1
   46AB                      76 _y_frame_4::
   46AB                      77 	.ds 1
   46AC                      78 _x_start_jugador::
   46AC                      79 	.ds 1
   46AD                      80 _y_start_jugador::
   46AD                      81 	.ds 1
   46AE                      82 _x_start_manzana::
   46AE                      83 	.ds 1
   46AF                      84 _y_start_manzana::
   46AF                      85 	.ds 1
   46B0                      86 _puntos_decena::
   46B0                      87 	.ds 1
                             88 ;--------------------------------------------------------
                             89 ; ram data
                             90 ;--------------------------------------------------------
                             91 	.area _INITIALIZED
                             92 ;--------------------------------------------------------
                             93 ; absolute external ram data
                             94 ;--------------------------------------------------------
                             95 	.area _DABS (ABS)
                             96 ;--------------------------------------------------------
                             97 ; global & static initialisations
                             98 ;--------------------------------------------------------
                             99 	.area _HOME
                            100 	.area _GSINIT
                            101 	.area _GSFINAL
                            102 	.area _GSINIT
                            103 ;--------------------------------------------------------
                            104 ; Home
                            105 ;--------------------------------------------------------
                            106 	.area _HOME
                            107 	.area _HOME
                            108 ;--------------------------------------------------------
                            109 ; code
                            110 ;--------------------------------------------------------
                            111 	.area _CODE
                            112 ;src/datos/definiciones.c:23: void iniciar_valores(){
                            113 ;	---------------------------------
                            114 ; Function iniciar_valores
                            115 ; ---------------------------------
   4118                     116 _iniciar_valores::
                            117 ;src/datos/definiciones.c:24: y_frame_1       =   20;         //hay que ir cambiando a medida
   4118 21 A8 46      [10]  118 	ld	hl,#_y_frame_1 + 0
   411B 36 14         [10]  119 	ld	(hl), #0x14
                            120 ;src/datos/definiciones.c:25: y_frame_2       =   70;         //que se actualice el juego
   411D 21 A9 46      [10]  121 	ld	hl,#_y_frame_2 + 0
   4120 36 46         [10]  122 	ld	(hl), #0x46
                            123 ;src/datos/definiciones.c:26: y_frame_3       =   120;
   4122 21 AA 46      [10]  124 	ld	hl,#_y_frame_3 + 0
   4125 36 78         [10]  125 	ld	(hl), #0x78
                            126 ;src/datos/definiciones.c:27: y_frame_4       =   170;
   4127 21 AB 46      [10]  127 	ld	hl,#_y_frame_4 + 0
   412A 36 AA         [10]  128 	ld	(hl), #0xaa
                            129 ;src/datos/definiciones.c:28: x_start_jugador =   10;
   412C 21 AC 46      [10]  130 	ld	hl,#_x_start_jugador + 0
   412F 36 0A         [10]  131 	ld	(hl), #0x0a
                            132 ;src/datos/definiciones.c:29: y_start_jugador =   y_frame_1;
   4131 21 AD 46      [10]  133 	ld	hl,#_y_start_jugador + 0
   4134 36 14         [10]  134 	ld	(hl), #0x14
                            135 ;src/datos/definiciones.c:30: x_start_objeto  =   60;
   4136 21 A1 46      [10]  136 	ld	hl,#_x_start_objeto + 0
   4139 36 3C         [10]  137 	ld	(hl), #0x3c
                            138 ;src/datos/definiciones.c:32: x_jugador       =   x_start_jugador;
   413B 21 97 46      [10]  139 	ld	hl,#_x_jugador + 0
   413E 36 0A         [10]  140 	ld	(hl), #0x0a
                            141 ;src/datos/definiciones.c:33: y_jugador       =   y_frame_1;
   4140 21 98 46      [10]  142 	ld	hl,#_y_jugador + 0
   4143 36 14         [10]  143 	ld	(hl), #0x14
                            144 ;src/datos/definiciones.c:34: vy_jug          =   0;
   4145 21 9B 46      [10]  145 	ld	hl,#_vy_jug + 0
   4148 36 00         [10]  146 	ld	(hl), #0x00
                            147 ;src/datos/definiciones.c:35: x_manzana       =   x_start_objeto;
   414A 21 A2 46      [10]  148 	ld	hl,#_x_manzana + 0
   414D 36 3C         [10]  149 	ld	(hl), #0x3c
                            150 ;src/datos/definiciones.c:36: y_manzana       =   y_frame_1;
   414F 21 A3 46      [10]  151 	ld	hl,#_y_manzana + 0
   4152 36 14         [10]  152 	ld	(hl), #0x14
                            153 ;src/datos/definiciones.c:37: puntos          =   '0';
   4154 21 B1 46      [10]  154 	ld	hl,#_puntos + 0
   4157 36 30         [10]  155 	ld	(hl), #0x30
                            156 ;src/datos/definiciones.c:38: puntos_decena   =   '0';
   4159 21 B0 46      [10]  157 	ld	hl,#_puntos_decena + 0
   415C 36 30         [10]  158 	ld	(hl), #0x30
                            159 ;src/datos/definiciones.c:39: vx_manzana      =   -1;
   415E 21 A6 46      [10]  160 	ld	hl,#_vx_manzana + 0
   4161 36 FF         [10]  161 	ld	(hl), #0xff
                            162 ;src/datos/definiciones.c:40: caida_objeto    =   x_jugador + DERECHA_W + 1;//posicion donde conprueba si jugador coge objeto
   4163 21 A7 46      [10]  163 	ld	hl,#_caida_objeto + 0
   4166 36 0D         [10]  164 	ld	(hl), #0x0d
   4168 C9            [10]  165 	ret
                            166 	.area _CODE
                            167 	.area _INITIALIZER
                            168 	.area _CABS (ABS)

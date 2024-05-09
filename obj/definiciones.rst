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
                             12 	.globl _y_start_manzana
                             13 	.globl _x_start_manzana
                             14 	.globl _y_start_jugador
                             15 	.globl _x_start_jugador
                             16 	.globl _y_frame_4
                             17 	.globl _y_frame_3
                             18 	.globl _y_frame_2
                             19 	.globl _y_frame_1
                             20 	.globl _vx_manzana
                             21 	.globl _spr_manzana
                             22 	.globl _y_manzana
                             23 	.globl _x_manzana
                             24 	.globl _vx_pera
                             25 	.globl _spr_pera
                             26 	.globl _y_pera
                             27 	.globl _x_pera
                             28 	.globl _vy_jug
                             29 	.globl _spr_jugador
                             30 	.globl _y_jugador
                             31 	.globl _x_jugador
                             32 ;--------------------------------------------------------
                             33 ; special function registers
                             34 ;--------------------------------------------------------
                             35 ;--------------------------------------------------------
                             36 ; ram data
                             37 ;--------------------------------------------------------
                             38 	.area _DATA
   458C                      39 _x_jugador::
   458C                      40 	.ds 1
   458D                      41 _y_jugador::
   458D                      42 	.ds 1
   458E                      43 _spr_jugador::
   458E                      44 	.ds 2
   4590                      45 _vy_jug::
   4590                      46 	.ds 1
   4591                      47 _x_pera::
   4591                      48 	.ds 1
   4592                      49 _y_pera::
   4592                      50 	.ds 1
   4593                      51 _spr_pera::
   4593                      52 	.ds 2
   4595                      53 _vx_pera::
   4595                      54 	.ds 1
   4596                      55 _x_manzana::
   4596                      56 	.ds 1
   4597                      57 _y_manzana::
   4597                      58 	.ds 1
   4598                      59 _spr_manzana::
   4598                      60 	.ds 2
   459A                      61 _vx_manzana::
   459A                      62 	.ds 1
   459B                      63 _y_frame_1::
   459B                      64 	.ds 1
   459C                      65 _y_frame_2::
   459C                      66 	.ds 1
   459D                      67 _y_frame_3::
   459D                      68 	.ds 1
   459E                      69 _y_frame_4::
   459E                      70 	.ds 1
   459F                      71 _x_start_jugador::
   459F                      72 	.ds 1
   45A0                      73 _y_start_jugador::
   45A0                      74 	.ds 1
   45A1                      75 _x_start_manzana::
   45A1                      76 	.ds 1
   45A2                      77 _y_start_manzana::
   45A2                      78 	.ds 1
                             79 ;--------------------------------------------------------
                             80 ; ram data
                             81 ;--------------------------------------------------------
                             82 	.area _INITIALIZED
                             83 ;--------------------------------------------------------
                             84 ; absolute external ram data
                             85 ;--------------------------------------------------------
                             86 	.area _DABS (ABS)
                             87 ;--------------------------------------------------------
                             88 ; global & static initialisations
                             89 ;--------------------------------------------------------
                             90 	.area _HOME
                             91 	.area _GSINIT
                             92 	.area _GSFINAL
                             93 	.area _GSINIT
                             94 ;--------------------------------------------------------
                             95 ; Home
                             96 ;--------------------------------------------------------
                             97 	.area _HOME
                             98 	.area _HOME
                             99 ;--------------------------------------------------------
                            100 ; code
                            101 ;--------------------------------------------------------
                            102 	.area _CODE
                            103 ;src/definiciones.c:20: void iniciar_valores(){
                            104 ;	---------------------------------
                            105 ; Function iniciar_valores
                            106 ; ---------------------------------
   4100                     107 _iniciar_valores::
                            108 ;src/definiciones.c:21: y_frame_1   =   20;
   4100 21 9B 45      [10]  109 	ld	hl,#_y_frame_1 + 0
   4103 36 14         [10]  110 	ld	(hl), #0x14
                            111 ;src/definiciones.c:22: y_frame_2   =   70;
   4105 21 9C 45      [10]  112 	ld	hl,#_y_frame_2 + 0
   4108 36 46         [10]  113 	ld	(hl), #0x46
                            114 ;src/definiciones.c:23: y_frame_3   =   120;
   410A 21 9D 45      [10]  115 	ld	hl,#_y_frame_3 + 0
   410D 36 78         [10]  116 	ld	(hl), #0x78
                            117 ;src/definiciones.c:24: y_frame_4   =   170;
   410F 21 9E 45      [10]  118 	ld	hl,#_y_frame_4 + 0
   4112 36 AA         [10]  119 	ld	(hl), #0xaa
                            120 ;src/definiciones.c:25: x_start_jugador =   10;
   4114 21 9F 45      [10]  121 	ld	hl,#_x_start_jugador + 0
   4117 36 0A         [10]  122 	ld	(hl), #0x0a
                            123 ;src/definiciones.c:26: y_start_jugador =   y_frame_1;
   4119 21 A0 45      [10]  124 	ld	hl,#_y_start_jugador + 0
   411C 36 14         [10]  125 	ld	(hl), #0x14
                            126 ;src/definiciones.c:28: x_jugador=x_start_jugador;
   411E 21 8C 45      [10]  127 	ld	hl,#_x_jugador + 0
   4121 36 0A         [10]  128 	ld	(hl), #0x0a
                            129 ;src/definiciones.c:29: y_jugador=20;
   4123 21 8D 45      [10]  130 	ld	hl,#_y_jugador + 0
   4126 36 14         [10]  131 	ld	(hl), #0x14
                            132 ;src/definiciones.c:30: vy_jug  =   0;
   4128 21 90 45      [10]  133 	ld	hl,#_vy_jug + 0
   412B 36 00         [10]  134 	ld	(hl), #0x00
                            135 ;src/definiciones.c:31: x_manzana=30;
   412D 21 96 45      [10]  136 	ld	hl,#_x_manzana + 0
   4130 36 1E         [10]  137 	ld	(hl), #0x1e
                            138 ;src/definiciones.c:32: y_manzana=y_frame_1;
   4132 21 97 45      [10]  139 	ld	hl,#_y_manzana + 0
   4135 36 14         [10]  140 	ld	(hl), #0x14
   4137 C9            [10]  141 	ret
                            142 	.area _CODE
                            143 	.area _INITIALIZER
                            144 	.area _CABS (ABS)

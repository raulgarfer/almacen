                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module fisica
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _sube
                             12 	.globl _baja
                             13 	.globl _fisica
                             14 ;--------------------------------------------------------
                             15 ; special function registers
                             16 ;--------------------------------------------------------
                             17 ;--------------------------------------------------------
                             18 ; ram data
                             19 ;--------------------------------------------------------
                             20 	.area _DATA
                             21 ;--------------------------------------------------------
                             22 ; ram data
                             23 ;--------------------------------------------------------
                             24 	.area _INITIALIZED
                             25 ;--------------------------------------------------------
                             26 ; absolute external ram data
                             27 ;--------------------------------------------------------
                             28 	.area _DABS (ABS)
                             29 ;--------------------------------------------------------
                             30 ; global & static initialisations
                             31 ;--------------------------------------------------------
                             32 	.area _HOME
                             33 	.area _GSINIT
                             34 	.area _GSFINAL
                             35 	.area _GSINIT
                             36 ;--------------------------------------------------------
                             37 ; Home
                             38 ;--------------------------------------------------------
                             39 	.area _HOME
                             40 	.area _HOME
                             41 ;--------------------------------------------------------
                             42 ; code
                             43 ;--------------------------------------------------------
                             44 	.area _CODE
                             45 ;src/sistemas/fisica.c:4: void fisica(){
                             46 ;	---------------------------------
                             47 ; Function fisica
                             48 ; ---------------------------------
   41B5                      49 _fisica::
                             50 ;src/sistemas/fisica.c:5: if (vy_jug==1)
   41B5 3A 9B 46      [13]   51 	ld	a,(#_vy_jug + 0)
   41B8 3D            [ 4]   52 	dec	a
                             53 ;src/sistemas/fisica.c:6: {baja();}
   41B9 CA C4 41      [10]   54 	jp	Z,_baja
                             55 ;src/sistemas/fisica.c:7: else if(vy_jug==-1)
   41BC 3A 9B 46      [13]   56 	ld	a,(#_vy_jug + 0)
   41BF 3C            [ 4]   57 	inc	a
   41C0 C0            [11]   58 	ret	NZ
                             59 ;src/sistemas/fisica.c:8: {sube();}
   41C1 C3 FC 41      [10]   60 	jp  _sube
                             61 ;src/sistemas/fisica.c:10: void baja(){
                             62 ;	---------------------------------
                             63 ; Function baja
                             64 ; ---------------------------------
   41C4                      65 _baja::
                             66 ;src/sistemas/fisica.c:11: if (y_jugador   ==  y_frame_1)
   41C4 3A 98 46      [13]   67 	ld	a,(#_y_jugador + 0)
   41C7 FD 21 A8 46   [14]   68 	ld	iy, #_y_frame_1
   41CB FD 96 00      [19]   69 	sub	a, 0 (iy)
   41CE 20 07         [12]   70 	jr	NZ,00107$
                             71 ;src/sistemas/fisica.c:12: {y_jugador  =   y_frame_2;}
   41D0 3A A9 46      [13]   72 	ld	a,(#_y_frame_2 + 0)
   41D3 32 98 46      [13]   73 	ld	(#_y_jugador + 0),a
   41D6 C9            [10]   74 	ret
   41D7                      75 00107$:
                             76 ;src/sistemas/fisica.c:14: if (y_jugador   ==  y_frame_2)
   41D7 3A 98 46      [13]   77 	ld	a,(#_y_jugador + 0)
   41DA FD 21 A9 46   [14]   78 	ld	iy, #_y_frame_2
   41DE FD 96 00      [19]   79 	sub	a, 0 (iy)
   41E1 20 07         [12]   80 	jr	NZ,00104$
                             81 ;src/sistemas/fisica.c:15: {y_jugador  =   y_frame_3;}
   41E3 3A AA 46      [13]   82 	ld	a,(#_y_frame_3 + 0)
   41E6 32 98 46      [13]   83 	ld	(#_y_jugador + 0),a
   41E9 C9            [10]   84 	ret
   41EA                      85 00104$:
                             86 ;src/sistemas/fisica.c:17: if (y_jugador   ==  y_frame_3)
   41EA 3A 98 46      [13]   87 	ld	a,(#_y_jugador + 0)
   41ED FD 21 AA 46   [14]   88 	ld	iy, #_y_frame_3
   41F1 FD 96 00      [19]   89 	sub	a, 0 (iy)
   41F4 C0            [11]   90 	ret	NZ
                             91 ;src/sistemas/fisica.c:18: {y_jugador  =   y_frame_4;}}
   41F5 3A AB 46      [13]   92 	ld	a,(#_y_frame_4 + 0)
   41F8 32 98 46      [13]   93 	ld	(#_y_jugador + 0),a
   41FB C9            [10]   94 	ret
                             95 ;src/sistemas/fisica.c:19: void sube(){
                             96 ;	---------------------------------
                             97 ; Function sube
                             98 ; ---------------------------------
   41FC                      99 _sube::
                            100 ;src/sistemas/fisica.c:20: if (y_jugador   ==  y_frame_4)
   41FC 3A 98 46      [13]  101 	ld	a,(#_y_jugador + 0)
   41FF FD 21 AB 46   [14]  102 	ld	iy, #_y_frame_4
   4203 FD 96 00      [19]  103 	sub	a, 0 (iy)
   4206 20 07         [12]  104 	jr	NZ,00107$
                            105 ;src/sistemas/fisica.c:21: {y_jugador  =   y_frame_3;}
   4208 3A AA 46      [13]  106 	ld	a,(#_y_frame_3 + 0)
   420B 32 98 46      [13]  107 	ld	(#_y_jugador + 0),a
   420E C9            [10]  108 	ret
   420F                     109 00107$:
                            110 ;src/sistemas/fisica.c:23: if (y_jugador   ==  y_frame_3)
   420F 3A 98 46      [13]  111 	ld	a,(#_y_jugador + 0)
   4212 FD 21 AA 46   [14]  112 	ld	iy, #_y_frame_3
   4216 FD 96 00      [19]  113 	sub	a, 0 (iy)
   4219 20 07         [12]  114 	jr	NZ,00104$
                            115 ;src/sistemas/fisica.c:24: {y_jugador  =   y_frame_2;}
   421B 3A A9 46      [13]  116 	ld	a,(#_y_frame_2 + 0)
   421E 32 98 46      [13]  117 	ld	(#_y_jugador + 0),a
   4221 C9            [10]  118 	ret
   4222                     119 00104$:
                            120 ;src/sistemas/fisica.c:26: if (y_jugador   ==  y_frame_2)
   4222 3A 98 46      [13]  121 	ld	a,(#_y_jugador + 0)
   4225 FD 21 A9 46   [14]  122 	ld	iy, #_y_frame_2
   4229 FD 96 00      [19]  123 	sub	a, 0 (iy)
   422C C0            [11]  124 	ret	NZ
                            125 ;src/sistemas/fisica.c:27: {y_jugador  =   y_frame_1;}
   422D 3A A8 46      [13]  126 	ld	a,(#_y_frame_1 + 0)
   4230 32 98 46      [13]  127 	ld	(#_y_jugador + 0),a
   4233 C9            [10]  128 	ret
                            129 	.area _CODE
                            130 	.area _INITIALIZER
                            131 	.area _CABS (ABS)

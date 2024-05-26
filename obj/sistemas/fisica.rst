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
                             11 	.globl _fisica
                             12 	.globl _baja
                             13 	.globl _sube
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
                             45 ;src/sistemas/fisica.c:7: void fisica(){
                             46 ;	---------------------------------
                             47 ; Function fisica
                             48 ; ---------------------------------
   41A5                      49 _fisica::
                             50 ;src/sistemas/fisica.c:8: if (vy_jug==1)
   41A5 3A C2 47      [13]   51 	ld	a,(#_vy_jug + 0)
   41A8 3D            [ 4]   52 	dec	a
                             53 ;src/sistemas/fisica.c:9: {baja();}
   41A9 CA B4 41      [10]   54 	jp	Z,_baja
                             55 ;src/sistemas/fisica.c:10: else if(vy_jug==-1)
   41AC 3A C2 47      [13]   56 	ld	a,(#_vy_jug + 0)
   41AF 3C            [ 4]   57 	inc	a
   41B0 C0            [11]   58 	ret	NZ
                             59 ;src/sistemas/fisica.c:11: {sube();}
   41B1 C3 E3 41      [10]   60 	jp  _sube
                             61 ;src/sistemas/fisica.c:13: void baja(){
                             62 ;	---------------------------------
                             63 ; Function baja
                             64 ; ---------------------------------
   41B4                      65 _baja::
                             66 ;src/sistemas/fisica.c:14: if (y_jugador   ==  y_frame_1)
   41B4 FD 21 BF 47   [14]   67 	ld	iy, #_y_jugador
   41B8 FD 7E 00      [19]   68 	ld	a, 0 (iy)
   41BB D6 14         [ 7]   69 	sub	a, #0x14
   41BD 20 05         [12]   70 	jr	NZ,00107$
                             71 ;src/sistemas/fisica.c:15: {y_jugador  =   y_frame_2;}
   41BF FD 36 00 46   [19]   72 	ld	0 (iy), #0x46
   41C3 C9            [10]   73 	ret
   41C4                      74 00107$:
                             75 ;src/sistemas/fisica.c:17: if (y_jugador   ==  y_frame_2)
   41C4 FD 21 BF 47   [14]   76 	ld	iy, #_y_jugador
   41C8 FD 7E 00      [19]   77 	ld	a, 0 (iy)
   41CB D6 46         [ 7]   78 	sub	a, #0x46
   41CD 20 05         [12]   79 	jr	NZ,00104$
                             80 ;src/sistemas/fisica.c:18: {y_jugador  =   y_frame_3;}
   41CF FD 36 00 78   [19]   81 	ld	0 (iy), #0x78
   41D3 C9            [10]   82 	ret
   41D4                      83 00104$:
                             84 ;src/sistemas/fisica.c:20: if (y_jugador   ==  y_frame_3)
   41D4 FD 21 BF 47   [14]   85 	ld	iy, #_y_jugador
   41D8 FD 7E 00      [19]   86 	ld	a, 0 (iy)
   41DB D6 78         [ 7]   87 	sub	a, #0x78
   41DD C0            [11]   88 	ret	NZ
                             89 ;src/sistemas/fisica.c:21: {y_jugador  =   y_frame_4;}}
   41DE FD 36 00 AA   [19]   90 	ld	0 (iy), #0xaa
   41E2 C9            [10]   91 	ret
                             92 ;src/sistemas/fisica.c:22: void sube(){
                             93 ;	---------------------------------
                             94 ; Function sube
                             95 ; ---------------------------------
   41E3                      96 _sube::
                             97 ;src/sistemas/fisica.c:23: if (y_jugador   ==  y_frame_4)
   41E3 FD 21 BF 47   [14]   98 	ld	iy, #_y_jugador
   41E7 FD 7E 00      [19]   99 	ld	a, 0 (iy)
   41EA D6 AA         [ 7]  100 	sub	a, #0xaa
   41EC 20 05         [12]  101 	jr	NZ,00107$
                            102 ;src/sistemas/fisica.c:24: {y_jugador  =   y_frame_3;}
   41EE FD 36 00 78   [19]  103 	ld	0 (iy), #0x78
   41F2 C9            [10]  104 	ret
   41F3                     105 00107$:
                            106 ;src/sistemas/fisica.c:26: if (y_jugador   ==  y_frame_3)
   41F3 FD 21 BF 47   [14]  107 	ld	iy, #_y_jugador
   41F7 FD 7E 00      [19]  108 	ld	a, 0 (iy)
   41FA D6 78         [ 7]  109 	sub	a, #0x78
   41FC 20 05         [12]  110 	jr	NZ,00104$
                            111 ;src/sistemas/fisica.c:27: {y_jugador  =   y_frame_2;}
   41FE FD 36 00 46   [19]  112 	ld	0 (iy), #0x46
   4202 C9            [10]  113 	ret
   4203                     114 00104$:
                            115 ;src/sistemas/fisica.c:29: if (y_jugador   ==  y_frame_2)
   4203 FD 21 BF 47   [14]  116 	ld	iy, #_y_jugador
   4207 FD 7E 00      [19]  117 	ld	a, 0 (iy)
   420A D6 46         [ 7]  118 	sub	a, #0x46
   420C C0            [11]  119 	ret	NZ
                            120 ;src/sistemas/fisica.c:30: {y_jugador  =   y_frame_1;}
   420D FD 36 00 14   [19]  121 	ld	0 (iy), #0x14
   4211 C9            [10]  122 	ret
                            123 	.area _CODE
                            124 	.area _INITIALIZER
                            125 	.area _CABS (ABS)

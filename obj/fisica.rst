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
                             45 ;src/fisica.c:4: void fisica(){
                             46 ;	---------------------------------
                             47 ; Function fisica
                             48 ; ---------------------------------
   4138                      49 _fisica::
                             50 ;src/fisica.c:5: if (vy_jug==1)
   4138 3A 90 45      [13]   51 	ld	a,(#_vy_jug + 0)
   413B 3D            [ 4]   52 	dec	a
                             53 ;src/fisica.c:6: {baja();}
   413C CA 47 41      [10]   54 	jp	Z,_baja
                             55 ;src/fisica.c:7: else if(vy_jug==-1)
   413F 3A 90 45      [13]   56 	ld	a,(#_vy_jug + 0)
   4142 3C            [ 4]   57 	inc	a
   4143 C0            [11]   58 	ret	NZ
                             59 ;src/fisica.c:8: {sube();}
   4144 C3 7F 41      [10]   60 	jp  _sube
                             61 ;src/fisica.c:10: void baja(){
                             62 ;	---------------------------------
                             63 ; Function baja
                             64 ; ---------------------------------
   4147                      65 _baja::
                             66 ;src/fisica.c:11: if (y_jugador   ==  y_frame_1)
   4147 3A 8D 45      [13]   67 	ld	a,(#_y_jugador + 0)
   414A FD 21 9B 45   [14]   68 	ld	iy, #_y_frame_1
   414E FD 96 00      [19]   69 	sub	a, 0 (iy)
   4151 20 07         [12]   70 	jr	NZ,00107$
                             71 ;src/fisica.c:12: {y_jugador  =   y_frame_2;}
   4153 3A 9C 45      [13]   72 	ld	a,(#_y_frame_2 + 0)
   4156 32 8D 45      [13]   73 	ld	(#_y_jugador + 0),a
   4159 C9            [10]   74 	ret
   415A                      75 00107$:
                             76 ;src/fisica.c:14: if (y_jugador   ==  y_frame_2)
   415A 3A 8D 45      [13]   77 	ld	a,(#_y_jugador + 0)
   415D FD 21 9C 45   [14]   78 	ld	iy, #_y_frame_2
   4161 FD 96 00      [19]   79 	sub	a, 0 (iy)
   4164 20 07         [12]   80 	jr	NZ,00104$
                             81 ;src/fisica.c:15: {y_jugador  =   y_frame_3;}
   4166 3A 9D 45      [13]   82 	ld	a,(#_y_frame_3 + 0)
   4169 32 8D 45      [13]   83 	ld	(#_y_jugador + 0),a
   416C C9            [10]   84 	ret
   416D                      85 00104$:
                             86 ;src/fisica.c:17: if (y_jugador   ==  y_frame_3)
   416D 3A 8D 45      [13]   87 	ld	a,(#_y_jugador + 0)
   4170 FD 21 9D 45   [14]   88 	ld	iy, #_y_frame_3
   4174 FD 96 00      [19]   89 	sub	a, 0 (iy)
   4177 C0            [11]   90 	ret	NZ
                             91 ;src/fisica.c:18: {y_jugador  =   y_frame_4;}}
   4178 3A 9E 45      [13]   92 	ld	a,(#_y_frame_4 + 0)
   417B 32 8D 45      [13]   93 	ld	(#_y_jugador + 0),a
   417E C9            [10]   94 	ret
                             95 ;src/fisica.c:19: void sube(){
                             96 ;	---------------------------------
                             97 ; Function sube
                             98 ; ---------------------------------
   417F                      99 _sube::
                            100 ;src/fisica.c:20: if (y_jugador   ==  y_frame_4)
   417F 3A 8D 45      [13]  101 	ld	a,(#_y_jugador + 0)
   4182 FD 21 9E 45   [14]  102 	ld	iy, #_y_frame_4
   4186 FD 96 00      [19]  103 	sub	a, 0 (iy)
   4189 20 07         [12]  104 	jr	NZ,00107$
                            105 ;src/fisica.c:21: {y_jugador  =   y_frame_3;}
   418B 3A 9D 45      [13]  106 	ld	a,(#_y_frame_3 + 0)
   418E 32 8D 45      [13]  107 	ld	(#_y_jugador + 0),a
   4191 C9            [10]  108 	ret
   4192                     109 00107$:
                            110 ;src/fisica.c:23: if (y_jugador   ==  y_frame_3)
   4192 3A 8D 45      [13]  111 	ld	a,(#_y_jugador + 0)
   4195 FD 21 9D 45   [14]  112 	ld	iy, #_y_frame_3
   4199 FD 96 00      [19]  113 	sub	a, 0 (iy)
   419C 20 07         [12]  114 	jr	NZ,00104$
                            115 ;src/fisica.c:24: {y_jugador  =   y_frame_2;}
   419E 3A 9C 45      [13]  116 	ld	a,(#_y_frame_2 + 0)
   41A1 32 8D 45      [13]  117 	ld	(#_y_jugador + 0),a
   41A4 C9            [10]  118 	ret
   41A5                     119 00104$:
                            120 ;src/fisica.c:26: if (y_jugador   ==  y_frame_2)
   41A5 3A 8D 45      [13]  121 	ld	a,(#_y_jugador + 0)
   41A8 FD 21 9C 45   [14]  122 	ld	iy, #_y_frame_2
   41AC FD 96 00      [19]  123 	sub	a, 0 (iy)
   41AF C0            [11]  124 	ret	NZ
                            125 ;src/fisica.c:27: {y_jugador  =   y_frame_1;}
   41B0 3A 9B 45      [13]  126 	ld	a,(#_y_frame_1 + 0)
   41B3 32 8D 45      [13]  127 	ld	(#_y_jugador + 0),a
   41B6 C9            [10]  128 	ret
                            129 	.area _CODE
                            130 	.area _INITIALIZER
                            131 	.area _CABS (ABS)

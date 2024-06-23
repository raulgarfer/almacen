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
                             11 	.globl _vacia_vaso
                             12 	.globl _pinta_puntos
                             13 	.globl _suma_puntos
                             14 	.globl _borra
                             15 	.globl _fisica
                             16 	.globl _baja
                             17 	.globl _sube
                             18 ;--------------------------------------------------------
                             19 ; special function registers
                             20 ;--------------------------------------------------------
                             21 ;--------------------------------------------------------
                             22 ; ram data
                             23 ;--------------------------------------------------------
                             24 	.area _DATA
                             25 ;--------------------------------------------------------
                             26 ; ram data
                             27 ;--------------------------------------------------------
                             28 	.area _INITIALIZED
                             29 ;--------------------------------------------------------
                             30 ; absolute external ram data
                             31 ;--------------------------------------------------------
                             32 	.area _DABS (ABS)
                             33 ;--------------------------------------------------------
                             34 ; global & static initialisations
                             35 ;--------------------------------------------------------
                             36 	.area _HOME
                             37 	.area _GSINIT
                             38 	.area _GSFINAL
                             39 	.area _GSINIT
                             40 ;--------------------------------------------------------
                             41 ; Home
                             42 ;--------------------------------------------------------
                             43 	.area _HOME
                             44 	.area _HOME
                             45 ;--------------------------------------------------------
                             46 ; code
                             47 ;--------------------------------------------------------
                             48 	.area _CODE
                             49 ;src/sistemas/fisica.c:4: void fisica(){
                             50 ;	---------------------------------
                             51 ; Function fisica
                             52 ; ---------------------------------
   8326                      53 _fisica::
                             54 ;src/sistemas/fisica.c:5: if (array[0].vy==5)
   8326 3A 39 8E      [13]   55 	ld	a, (#(_array + 0x0004) + 0)
   8329 FE 05         [ 7]   56 	cp	a, #0x05
   832B 20 06         [12]   57 	jr	NZ,00104$
                             58 ;src/sistemas/fisica.c:6: {borra();
   832D CD 0A 82      [17]   59 	call	_borra
                             60 ;src/sistemas/fisica.c:7: baja();}
   8330 C3 3C 83      [10]   61 	jp  _baja
   8333                      62 00104$:
                             63 ;src/sistemas/fisica.c:8: else if(array[0].vy==-5)
   8333 D6 FB         [ 7]   64 	sub	a, #0xfb
   8335 C0            [11]   65 	ret	NZ
                             66 ;src/sistemas/fisica.c:9: {borra();
   8336 CD 0A 82      [17]   67 	call	_borra
                             68 ;src/sistemas/fisica.c:10: sube();}
   8339 C3 5B 83      [10]   69 	jp  _sube
                             70 ;src/sistemas/fisica.c:12: void baja(){
                             71 ;	---------------------------------
                             72 ; Function baja
                             73 ; ---------------------------------
   833C                      74 _baja::
                             75 ;src/sistemas/fisica.c:13: array[0].vy=0;
   833C 21 39 8E      [10]   76 	ld	hl, #(_array + 0x0004)
   833F 36 00         [10]   77 	ld	(hl), #0x00
                             78 ;src/sistemas/fisica.c:14: if (array[0].y   ==  y_frame_1)
   8341 21 37 8E      [10]   79 	ld	hl, #_array + 2
   8344 7E            [ 7]   80 	ld	a, (hl)
   8345 FE 0A         [ 7]   81 	cp	a, #0x0a
   8347 20 03         [12]   82 	jr	NZ,00107$
                             83 ;src/sistemas/fisica.c:15: { array[0].y  =   y_frame_2;
   8349 36 32         [10]   84 	ld	(hl), #0x32
   834B C9            [10]   85 	ret
   834C                      86 00107$:
                             87 ;src/sistemas/fisica.c:18: if (array[0].y   ==  y_frame_2)
   834C FE 32         [ 7]   88 	cp	a, #0x32
   834E 20 03         [12]   89 	jr	NZ,00104$
                             90 ;src/sistemas/fisica.c:19: {array[0].y  =   y_frame_3;
   8350 36 64         [10]   91 	ld	(hl), #0x64
   8352 C9            [10]   92 	ret
   8353                      93 00104$:
                             94 ;src/sistemas/fisica.c:22: if (array[0].y   ==  y_frame_3)
   8353 D6 64         [ 7]   95 	sub	a, #0x64
   8355 C0            [11]   96 	ret	NZ
                             97 ;src/sistemas/fisica.c:23: {array[0].y  =   y_frame_4;
   8356 36 96         [10]   98 	ld	(hl), #0x96
                             99 ;src/sistemas/fisica.c:24: vacia_vaso();}
   8358 C3 78 83      [10]  100 	jp  _vacia_vaso
                            101 ;src/sistemas/fisica.c:26: void sube(){
                            102 ;	---------------------------------
                            103 ; Function sube
                            104 ; ---------------------------------
   835B                     105 _sube::
                            106 ;src/sistemas/fisica.c:27: array[0].vy=0;
   835B 21 39 8E      [10]  107 	ld	hl, #(_array + 0x0004)
   835E 36 00         [10]  108 	ld	(hl), #0x00
                            109 ;src/sistemas/fisica.c:28: if (array[0].y   ==  y_frame_4)
   8360 21 37 8E      [10]  110 	ld	hl, #_array + 2
   8363 7E            [ 7]  111 	ld	a, (hl)
   8364 FE 96         [ 7]  112 	cp	a, #0x96
   8366 20 03         [12]  113 	jr	NZ,00107$
                            114 ;src/sistemas/fisica.c:29: {array[0].y  =   y_frame_3;
   8368 36 64         [10]  115 	ld	(hl), #0x64
   836A C9            [10]  116 	ret
   836B                     117 00107$:
                            118 ;src/sistemas/fisica.c:32: if (array[0].y   ==  y_frame_3)
   836B FE 64         [ 7]  119 	cp	a, #0x64
   836D 20 03         [12]  120 	jr	NZ,00104$
                            121 ;src/sistemas/fisica.c:33: {array[0].y  =   y_frame_2;
   836F 36 32         [10]  122 	ld	(hl), #0x32
   8371 C9            [10]  123 	ret
   8372                     124 00104$:
                            125 ;src/sistemas/fisica.c:36: if (array[0].y   ==  y_frame_2)
   8372 D6 32         [ 7]  126 	sub	a, #0x32
   8374 C0            [11]  127 	ret	NZ
                            128 ;src/sistemas/fisica.c:37: {array[0].y  =   y_frame_1;
   8375 36 0A         [10]  129 	ld	(hl), #0x0a
   8377 C9            [10]  130 	ret
                            131 ;src/sistemas/fisica.c:42: void vacia_vaso(){
                            132 ;	---------------------------------
                            133 ; Function vacia_vaso
                            134 ; ---------------------------------
   8378                     135 _vacia_vaso::
                            136 ;src/sistemas/fisica.c:43: if (vaso_lleno==lleno)
   8378 3A B3 8E      [13]  137 	ld	a,(#_vaso_lleno + 0)
   837B 3D            [ 4]  138 	dec	a
   837C C0            [11]  139 	ret	NZ
                            140 ;src/sistemas/fisica.c:44: {puntos++;
   837D 21 B8 8E      [10]  141 	ld	hl, #_puntos+0
   8380 34            [11]  142 	inc	(hl)
                            143 ;src/sistemas/fisica.c:45: vaso_lleno  =  vacio;
   8381 21 B3 8E      [10]  144 	ld	hl,#_vaso_lleno + 0
   8384 36 00         [10]  145 	ld	(hl), #0x00
                            146 ;src/sistemas/fisica.c:46: suma_puntos(pi);
   8386 3A B7 8E      [13]  147 	ld	a, (_pi)
   8389 F5            [11]  148 	push	af
   838A 33            [ 6]  149 	inc	sp
   838B CD 35 85      [17]  150 	call	_suma_puntos
   838E 33            [ 6]  151 	inc	sp
                            152 ;src/sistemas/fisica.c:47: pinta_puntos();
   838F CD C3 84      [17]  153 	call	_pinta_puntos
                            154 ;src/sistemas/fisica.c:48: array[pi].vx=-1;
   8392 01 35 8E      [10]  155 	ld	bc, #_array+0
   8395 ED 5B B7 8E   [20]  156 	ld	de, (_pi)
   8399 16 00         [ 7]  157 	ld	d, #0x00
   839B 6B            [ 4]  158 	ld	l, e
   839C 62            [ 4]  159 	ld	h, d
   839D 29            [11]  160 	add	hl, hl
   839E 29            [11]  161 	add	hl, hl
   839F 19            [11]  162 	add	hl, de
   83A0 29            [11]  163 	add	hl, hl
   83A1 09            [11]  164 	add	hl, bc
   83A2 23            [ 6]  165 	inc	hl
   83A3 23            [ 6]  166 	inc	hl
   83A4 23            [ 6]  167 	inc	hl
   83A5 36 FF         [10]  168 	ld	(hl), #0xff
                            169 ;src/sistemas/fisica.c:49: array[0].x  =   x_start_jugador;
   83A7 03            [ 6]  170 	inc	bc
   83A8 3E 0A         [ 7]  171 	ld	a, #0x0a
   83AA 02            [ 7]  172 	ld	(bc), a
   83AB C9            [10]  173 	ret
                            174 	.area _CODE
                            175 	.area _INITIALIZER
                            176 	.area _CABS (ABS)

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
   851D                      53 _fisica::
                             54 ;src/sistemas/fisica.c:5: if (array[0].vy==5)
   851D 3A 88 95      [13]   55 	ld	a, (#(_array + 0x0004) + 0)
   8520 FE 05         [ 7]   56 	cp	a, #0x05
   8522 20 06         [12]   57 	jr	NZ,00104$
                             58 ;src/sistemas/fisica.c:6: {borra();
   8524 CD 01 84      [17]   59 	call	_borra
                             60 ;src/sistemas/fisica.c:7: baja();}
   8527 C3 33 85      [10]   61 	jp  _baja
   852A                      62 00104$:
                             63 ;src/sistemas/fisica.c:8: else if(array[0].vy==-5)
   852A D6 FB         [ 7]   64 	sub	a, #0xfb
   852C C0            [11]   65 	ret	NZ
                             66 ;src/sistemas/fisica.c:9: {borra();
   852D CD 01 84      [17]   67 	call	_borra
                             68 ;src/sistemas/fisica.c:10: sube();}
   8530 C3 52 85      [10]   69 	jp  _sube
                             70 ;src/sistemas/fisica.c:12: void baja(){
                             71 ;	---------------------------------
                             72 ; Function baja
                             73 ; ---------------------------------
   8533                      74 _baja::
                             75 ;src/sistemas/fisica.c:13: array[0].vy=0;
   8533 21 88 95      [10]   76 	ld	hl, #(_array + 0x0004)
   8536 36 00         [10]   77 	ld	(hl), #0x00
                             78 ;src/sistemas/fisica.c:14: if (array[0].y   ==  y_frame_1)
   8538 21 86 95      [10]   79 	ld	hl, #_array + 2
   853B 7E            [ 7]   80 	ld	a, (hl)
   853C FE 0A         [ 7]   81 	cp	a, #0x0a
   853E 20 03         [12]   82 	jr	NZ,00107$
                             83 ;src/sistemas/fisica.c:15: { array[0].y  =   y_frame_2;
   8540 36 32         [10]   84 	ld	(hl), #0x32
   8542 C9            [10]   85 	ret
   8543                      86 00107$:
                             87 ;src/sistemas/fisica.c:18: if (array[0].y   ==  y_frame_2)
   8543 FE 32         [ 7]   88 	cp	a, #0x32
   8545 20 03         [12]   89 	jr	NZ,00104$
                             90 ;src/sistemas/fisica.c:19: {array[0].y  =   y_frame_3;
   8547 36 64         [10]   91 	ld	(hl), #0x64
   8549 C9            [10]   92 	ret
   854A                      93 00104$:
                             94 ;src/sistemas/fisica.c:22: if (array[0].y   ==  y_frame_3)
   854A D6 64         [ 7]   95 	sub	a, #0x64
   854C C0            [11]   96 	ret	NZ
                             97 ;src/sistemas/fisica.c:23: {array[0].y  =   y_frame_4;
   854D 36 96         [10]   98 	ld	(hl), #0x96
                             99 ;src/sistemas/fisica.c:24: vacia_vaso();}
   854F C3 6F 85      [10]  100 	jp  _vacia_vaso
                            101 ;src/sistemas/fisica.c:26: void sube(){
                            102 ;	---------------------------------
                            103 ; Function sube
                            104 ; ---------------------------------
   8552                     105 _sube::
                            106 ;src/sistemas/fisica.c:27: array[0].vy=0;
   8552 21 88 95      [10]  107 	ld	hl, #(_array + 0x0004)
   8555 36 00         [10]  108 	ld	(hl), #0x00
                            109 ;src/sistemas/fisica.c:28: if (array[0].y   ==  y_frame_4)
   8557 21 86 95      [10]  110 	ld	hl, #_array + 2
   855A 7E            [ 7]  111 	ld	a, (hl)
   855B FE 96         [ 7]  112 	cp	a, #0x96
   855D 20 03         [12]  113 	jr	NZ,00107$
                            114 ;src/sistemas/fisica.c:29: {array[0].y  =   y_frame_3;
   855F 36 64         [10]  115 	ld	(hl), #0x64
   8561 C9            [10]  116 	ret
   8562                     117 00107$:
                            118 ;src/sistemas/fisica.c:32: if (array[0].y   ==  y_frame_3)
   8562 FE 64         [ 7]  119 	cp	a, #0x64
   8564 20 03         [12]  120 	jr	NZ,00104$
                            121 ;src/sistemas/fisica.c:33: {array[0].y  =   y_frame_2;
   8566 36 32         [10]  122 	ld	(hl), #0x32
   8568 C9            [10]  123 	ret
   8569                     124 00104$:
                            125 ;src/sistemas/fisica.c:36: if (array[0].y   ==  y_frame_2)
   8569 D6 32         [ 7]  126 	sub	a, #0x32
   856B C0            [11]  127 	ret	NZ
                            128 ;src/sistemas/fisica.c:37: {array[0].y  =   y_frame_1;
   856C 36 0A         [10]  129 	ld	(hl), #0x0a
   856E C9            [10]  130 	ret
                            131 ;src/sistemas/fisica.c:42: void vacia_vaso(){
                            132 ;	---------------------------------
                            133 ; Function vacia_vaso
                            134 ; ---------------------------------
   856F                     135 _vacia_vaso::
                            136 ;src/sistemas/fisica.c:43: if (vaso_lleno==lleno)
   856F 3A 02 96      [13]  137 	ld	a,(#_vaso_lleno + 0)
   8572 3D            [ 4]  138 	dec	a
   8573 C0            [11]  139 	ret	NZ
                            140 ;src/sistemas/fisica.c:44: {puntos++;
   8574 21 07 96      [10]  141 	ld	hl, #_puntos+0
   8577 34            [11]  142 	inc	(hl)
                            143 ;src/sistemas/fisica.c:45: vaso_lleno  =  vacio;
   8578 21 02 96      [10]  144 	ld	hl,#_vaso_lleno + 0
   857B 36 00         [10]  145 	ld	(hl), #0x00
                            146 ;src/sistemas/fisica.c:46: suma_puntos(pi);
   857D 3A 06 96      [13]  147 	ld	a, (_pi)
   8580 F5            [11]  148 	push	af
   8581 33            [ 6]  149 	inc	sp
   8582 CD 28 87      [17]  150 	call	_suma_puntos
   8585 33            [ 6]  151 	inc	sp
                            152 ;src/sistemas/fisica.c:47: pinta_puntos();
   8586 CD B6 86      [17]  153 	call	_pinta_puntos
                            154 ;src/sistemas/fisica.c:48: array[pi].vx=-1;
   8589 01 84 95      [10]  155 	ld	bc, #_array+0
   858C ED 5B 06 96   [20]  156 	ld	de, (_pi)
   8590 16 00         [ 7]  157 	ld	d, #0x00
   8592 6B            [ 4]  158 	ld	l, e
   8593 62            [ 4]  159 	ld	h, d
   8594 29            [11]  160 	add	hl, hl
   8595 29            [11]  161 	add	hl, hl
   8596 19            [11]  162 	add	hl, de
   8597 29            [11]  163 	add	hl, hl
   8598 09            [11]  164 	add	hl, bc
   8599 23            [ 6]  165 	inc	hl
   859A 23            [ 6]  166 	inc	hl
   859B 23            [ 6]  167 	inc	hl
   859C 36 FF         [10]  168 	ld	(hl), #0xff
   859E C9            [10]  169 	ret
                            170 	.area _CODE
                            171 	.area _INITIALIZER
                            172 	.area _CABS (ABS)

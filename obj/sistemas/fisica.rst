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
                             12 	.globl _borra
                             13 	.globl _fisica
                             14 	.globl _baja
                             15 	.globl _sube
                             16 ;--------------------------------------------------------
                             17 ; special function registers
                             18 ;--------------------------------------------------------
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _DATA
                             23 ;--------------------------------------------------------
                             24 ; ram data
                             25 ;--------------------------------------------------------
                             26 	.area _INITIALIZED
                             27 ;--------------------------------------------------------
                             28 ; absolute external ram data
                             29 ;--------------------------------------------------------
                             30 	.area _DABS (ABS)
                             31 ;--------------------------------------------------------
                             32 ; global & static initialisations
                             33 ;--------------------------------------------------------
                             34 	.area _HOME
                             35 	.area _GSINIT
                             36 	.area _GSFINAL
                             37 	.area _GSINIT
                             38 ;--------------------------------------------------------
                             39 ; Home
                             40 ;--------------------------------------------------------
                             41 	.area _HOME
                             42 	.area _HOME
                             43 ;--------------------------------------------------------
                             44 ; code
                             45 ;--------------------------------------------------------
                             46 	.area _CODE
                             47 ;src/sistemas/fisica.c:4: void fisica(){
                             48 ;	---------------------------------
                             49 ; Function fisica
                             50 ; ---------------------------------
   46B0                      51 _fisica::
                             52 ;src/sistemas/fisica.c:5: if (array[0].vy==5)
   46B0 3A 2B 56      [13]   53 	ld	a, (#(_array + 0x0004) + 0)
   46B3 FE 05         [ 7]   54 	cp	a, #0x05
   46B5 20 06         [12]   55 	jr	NZ,00104$
                             56 ;src/sistemas/fisica.c:6: {borra();
   46B7 CD 83 45      [17]   57 	call	_borra
                             58 ;src/sistemas/fisica.c:7: baja();}
   46BA C3 C6 46      [10]   59 	jp  _baja
   46BD                      60 00104$:
                             61 ;src/sistemas/fisica.c:8: else if(array[0].vy==-5)
   46BD D6 FB         [ 7]   62 	sub	a, #0xfb
   46BF C0            [11]   63 	ret	NZ
                             64 ;src/sistemas/fisica.c:9: {borra();
   46C0 CD 83 45      [17]   65 	call	_borra
                             66 ;src/sistemas/fisica.c:10: sube();}
   46C3 C3 F7 46      [10]   67 	jp  _sube
                             68 ;src/sistemas/fisica.c:12: void baja(){
                             69 ;	---------------------------------
                             70 ; Function baja
                             71 ; ---------------------------------
   46C6                      72 _baja::
                             73 ;src/sistemas/fisica.c:13: array[0].vy=0;
   46C6 21 2B 56      [10]   74 	ld	hl, #(_array + 0x0004)
   46C9 36 00         [10]   75 	ld	(hl), #0x00
                             76 ;src/sistemas/fisica.c:14: if (array[0].y   ==  y_frame_1)
   46CB 01 29 56      [10]   77 	ld	bc, #_array + 2
   46CE 0A            [ 7]   78 	ld	a, (bc)
   46CF 5F            [ 4]   79 	ld	e,a
   46D0 D6 0A         [ 7]   80 	sub	a, #0x0a
   46D2 20 04         [12]   81 	jr	NZ,00107$
                             82 ;src/sistemas/fisica.c:15: { array[0].y  =   y_frame_2;
   46D4 3E 32         [ 7]   83 	ld	a, #0x32
   46D6 02            [ 7]   84 	ld	(bc), a
   46D7 C9            [10]   85 	ret
   46D8                      86 00107$:
                             87 ;src/sistemas/fisica.c:20: array[0].sprite =  rightpng;}
                             88 ;src/sistemas/fisica.c:18: if (array[0].y   ==  y_frame_2)
   46D8 7B            [ 4]   89 	ld	a, e
   46D9 D6 32         [ 7]   90 	sub	a, #0x32
   46DB 20 0A         [12]   91 	jr	NZ,00104$
                             92 ;src/sistemas/fisica.c:19: {array[0].y  =   y_frame_3;
   46DD 3E 64         [ 7]   93 	ld	a, #0x64
   46DF 02            [ 7]   94 	ld	(bc), a
                             95 ;src/sistemas/fisica.c:20: array[0].sprite =  rightpng;}
   46E0 21 F4 41      [10]   96 	ld	hl, #_rightpng
   46E3 22 2E 56      [16]   97 	ld	((_array + 0x0007)), hl
   46E6 C9            [10]   98 	ret
   46E7                      99 00104$:
                            100 ;src/sistemas/fisica.c:22: if (array[0].y   ==  y_frame_3)
   46E7 7B            [ 4]  101 	ld	a, e
   46E8 D6 64         [ 7]  102 	sub	a, #0x64
   46EA C0            [11]  103 	ret	NZ
                            104 ;src/sistemas/fisica.c:23: {array[0].y  =   y_frame_4;
   46EB 3E 96         [ 7]  105 	ld	a, #0x96
   46ED 02            [ 7]  106 	ld	(bc), a
                            107 ;src/sistemas/fisica.c:24: array[0].sprite =   derecha_2;
   46EE 21 C4 43      [10]  108 	ld	hl, #_derecha_2
   46F1 22 2E 56      [16]  109 	ld	((_array + 0x0007)), hl
                            110 ;src/sistemas/fisica.c:25: vacia_vaso();}
   46F4 C3 2C 47      [10]  111 	jp  _vacia_vaso
                            112 ;src/sistemas/fisica.c:27: void sube(){
                            113 ;	---------------------------------
                            114 ; Function sube
                            115 ; ---------------------------------
   46F7                     116 _sube::
                            117 ;src/sistemas/fisica.c:28: array[0].vy=0;
   46F7 21 2B 56      [10]  118 	ld	hl, #(_array + 0x0004)
   46FA 36 00         [10]  119 	ld	(hl), #0x00
                            120 ;src/sistemas/fisica.c:29: if (array[0].y   ==  y_frame_4)
   46FC 01 29 56      [10]  121 	ld	bc, #_array + 2
   46FF 0A            [ 7]  122 	ld	a, (bc)
                            123 ;src/sistemas/fisica.c:31: array[0].sprite =  rightpng;}
                            124 ;src/sistemas/fisica.c:29: if (array[0].y   ==  y_frame_4)
   4700 5F            [ 4]  125 	ld	e,a
   4701 D6 96         [ 7]  126 	sub	a, #0x96
   4703 20 0A         [12]  127 	jr	NZ,00107$
                            128 ;src/sistemas/fisica.c:30: {array[0].y  =   y_frame_3;
   4705 3E 64         [ 7]  129 	ld	a, #0x64
   4707 02            [ 7]  130 	ld	(bc), a
                            131 ;src/sistemas/fisica.c:31: array[0].sprite =  rightpng;}
   4708 21 F4 41      [10]  132 	ld	hl, #_rightpng
   470B 22 2E 56      [16]  133 	ld	((_array + 0x0007)), hl
   470E C9            [10]  134 	ret
   470F                     135 00107$:
                            136 ;src/sistemas/fisica.c:33: if (array[0].y   ==  y_frame_3)
   470F 7B            [ 4]  137 	ld	a, e
   4710 D6 64         [ 7]  138 	sub	a, #0x64
   4712 20 0A         [12]  139 	jr	NZ,00104$
                            140 ;src/sistemas/fisica.c:34: {array[0].y  =   y_frame_2;
   4714 3E 32         [ 7]  141 	ld	a, #0x32
   4716 02            [ 7]  142 	ld	(bc), a
                            143 ;src/sistemas/fisica.c:35: array[0].sprite =   derecha_2;}
   4717 21 C4 43      [10]  144 	ld	hl, #_derecha_2
   471A 22 2E 56      [16]  145 	ld	((_array + 0x0007)), hl
   471D C9            [10]  146 	ret
   471E                     147 00104$:
                            148 ;src/sistemas/fisica.c:37: if (array[0].y   ==  y_frame_2)
   471E 7B            [ 4]  149 	ld	a, e
   471F D6 32         [ 7]  150 	sub	a, #0x32
   4721 C0            [11]  151 	ret	NZ
                            152 ;src/sistemas/fisica.c:38: {array[0].y  =   y_frame_1;
   4722 3E 0A         [ 7]  153 	ld	a, #0x0a
   4724 02            [ 7]  154 	ld	(bc), a
                            155 ;src/sistemas/fisica.c:39: array[0].sprite =  rightpng;}
   4725 21 F4 41      [10]  156 	ld	hl, #_rightpng
   4728 22 2E 56      [16]  157 	ld	((_array + 0x0007)), hl
   472B C9            [10]  158 	ret
                            159 ;src/sistemas/fisica.c:41: void vacia_vaso(){
                            160 ;	---------------------------------
                            161 ; Function vacia_vaso
                            162 ; ---------------------------------
   472C                     163 _vacia_vaso::
                            164 ;src/sistemas/fisica.c:42: if (vaso_lleno==lleno)
   472C 3A A5 56      [13]  165 	ld	a,(#_vaso_lleno + 0)
   472F 3D            [ 4]  166 	dec	a
   4730 C0            [11]  167 	ret	NZ
                            168 ;src/sistemas/fisica.c:43: {puntos++;
   4731 21 A8 56      [10]  169 	ld	hl, #_puntos+0
   4734 34            [11]  170 	inc	(hl)
                            171 ;src/sistemas/fisica.c:44: array[0].sprite =  rightpng; 
   4735 21 F4 41      [10]  172 	ld	hl, #_rightpng
   4738 22 2E 56      [16]  173 	ld	((_array + 0x0007)), hl
                            174 ;src/sistemas/fisica.c:45: vaso_lleno  =  vacio;}
   473B 21 A5 56      [10]  175 	ld	hl,#_vaso_lleno + 0
   473E 36 00         [10]  176 	ld	(hl), #0x00
   4740 C9            [10]  177 	ret
                            178 	.area _CODE
                            179 	.area _INITIALIZER
                            180 	.area _CABS (ABS)

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
   4641                      51 _fisica::
                             52 ;src/sistemas/fisica.c:5: if (array[0].vy==1)
   4641 3A 53 4D      [13]   53 	ld	a, (#(_array + 0x0004) + 0)
   4644 FE 01         [ 7]   54 	cp	a, #0x01
   4646 20 06         [12]   55 	jr	NZ,00104$
                             56 ;src/sistemas/fisica.c:6: {borra();
   4648 CD 14 45      [17]   57 	call	_borra
                             58 ;src/sistemas/fisica.c:7: baja();}
   464B C3 56 46      [10]   59 	jp  _baja
   464E                      60 00104$:
                             61 ;src/sistemas/fisica.c:8: else if(array[0].vy==-1)
   464E 3C            [ 4]   62 	inc	a
   464F C0            [11]   63 	ret	NZ
                             64 ;src/sistemas/fisica.c:9: {borra();
   4650 CD 14 45      [17]   65 	call	_borra
                             66 ;src/sistemas/fisica.c:10: sube();}
   4653 C3 88 46      [10]   67 	jp  _sube
                             68 ;src/sistemas/fisica.c:12: void baja(){
                             69 ;	---------------------------------
                             70 ; Function baja
                             71 ; ---------------------------------
   4656                      72 _baja::
                             73 ;src/sistemas/fisica.c:13: if (array[0].y   ==  y_frame_1)
   4656 01 51 4D      [10]   74 	ld	bc, #_array + 2
   4659 0A            [ 7]   75 	ld	a, (bc)
                             76 ;src/sistemas/fisica.c:15: array[0].sprite =   derecha_2;}
                             77 ;src/sistemas/fisica.c:13: if (array[0].y   ==  y_frame_1)
   465A 5F            [ 4]   78 	ld	e,a
   465B D6 0A         [ 7]   79 	sub	a, #0x0a
   465D 20 0A         [12]   80 	jr	NZ,00107$
                             81 ;src/sistemas/fisica.c:14: { array[0].y  =   y_frame_2;
   465F 3E 32         [ 7]   82 	ld	a, #0x32
   4661 02            [ 7]   83 	ld	(bc), a
                             84 ;src/sistemas/fisica.c:15: array[0].sprite =   derecha_2;}
   4662 21 74 43      [10]   85 	ld	hl, #_derecha_2
   4665 22 56 4D      [16]   86 	ld	((_array + 0x0007)), hl
   4668 C9            [10]   87 	ret
   4669                      88 00107$:
                             89 ;src/sistemas/fisica.c:17: if (array[0].y   ==  y_frame_2)
   4669 7B            [ 4]   90 	ld	a, e
   466A D6 32         [ 7]   91 	sub	a, #0x32
   466C 20 0A         [12]   92 	jr	NZ,00104$
                             93 ;src/sistemas/fisica.c:18: {array[0].y  =   y_frame_3;
   466E 3E 64         [ 7]   94 	ld	a, #0x64
   4670 02            [ 7]   95 	ld	(bc), a
                             96 ;src/sistemas/fisica.c:19: array[0].sprite =  rightpng;}
   4671 21 F4 41      [10]   97 	ld	hl, #_rightpng
   4674 22 56 4D      [16]   98 	ld	((_array + 0x0007)), hl
   4677 C9            [10]   99 	ret
   4678                     100 00104$:
                            101 ;src/sistemas/fisica.c:21: if (array[0].y   ==  y_frame_3)
   4678 7B            [ 4]  102 	ld	a, e
   4679 D6 64         [ 7]  103 	sub	a, #0x64
   467B C0            [11]  104 	ret	NZ
                            105 ;src/sistemas/fisica.c:22: {array[0].y  =   y_frame_4;
   467C 3E 96         [ 7]  106 	ld	a, #0x96
   467E 02            [ 7]  107 	ld	(bc), a
                            108 ;src/sistemas/fisica.c:23: array[0].sprite =   derecha_2;
   467F 21 74 43      [10]  109 	ld	hl, #_derecha_2
   4682 22 56 4D      [16]  110 	ld	((_array + 0x0007)), hl
                            111 ;src/sistemas/fisica.c:24: vacia_vaso();
   4685 C3 B8 46      [10]  112 	jp  _vacia_vaso
                            113 ;src/sistemas/fisica.c:26: void sube(){
                            114 ;	---------------------------------
                            115 ; Function sube
                            116 ; ---------------------------------
   4688                     117 _sube::
                            118 ;src/sistemas/fisica.c:27: if (array[0].y   ==  y_frame_4)
   4688 01 51 4D      [10]  119 	ld	bc, #_array + 2
   468B 0A            [ 7]  120 	ld	a, (bc)
                            121 ;src/sistemas/fisica.c:29: array[0].sprite =  rightpng;}
                            122 ;src/sistemas/fisica.c:27: if (array[0].y   ==  y_frame_4)
   468C 5F            [ 4]  123 	ld	e,a
   468D D6 96         [ 7]  124 	sub	a, #0x96
   468F 20 0A         [12]  125 	jr	NZ,00107$
                            126 ;src/sistemas/fisica.c:28: {array[0].y  =   y_frame_3;
   4691 3E 64         [ 7]  127 	ld	a, #0x64
   4693 02            [ 7]  128 	ld	(bc), a
                            129 ;src/sistemas/fisica.c:29: array[0].sprite =  rightpng;}
   4694 21 F4 41      [10]  130 	ld	hl, #_rightpng
   4697 22 56 4D      [16]  131 	ld	((_array + 0x0007)), hl
   469A C9            [10]  132 	ret
   469B                     133 00107$:
                            134 ;src/sistemas/fisica.c:31: if (array[0].y   ==  y_frame_3)
   469B 7B            [ 4]  135 	ld	a, e
   469C D6 64         [ 7]  136 	sub	a, #0x64
   469E 20 0A         [12]  137 	jr	NZ,00104$
                            138 ;src/sistemas/fisica.c:32: {array[0].y  =   y_frame_2;
   46A0 3E 32         [ 7]  139 	ld	a, #0x32
   46A2 02            [ 7]  140 	ld	(bc), a
                            141 ;src/sistemas/fisica.c:33: array[0].sprite =   derecha_2;}
   46A3 21 74 43      [10]  142 	ld	hl, #_derecha_2
   46A6 22 56 4D      [16]  143 	ld	((_array + 0x0007)), hl
   46A9 C9            [10]  144 	ret
   46AA                     145 00104$:
                            146 ;src/sistemas/fisica.c:35: if (array[0].y   ==  y_frame_2)
   46AA 7B            [ 4]  147 	ld	a, e
   46AB D6 32         [ 7]  148 	sub	a, #0x32
   46AD C0            [11]  149 	ret	NZ
                            150 ;src/sistemas/fisica.c:36: {array[0].y  =   y_frame_1;
   46AE 3E 0A         [ 7]  151 	ld	a, #0x0a
   46B0 02            [ 7]  152 	ld	(bc), a
                            153 ;src/sistemas/fisica.c:37: array[0].sprite =  rightpng;}
   46B1 21 F4 41      [10]  154 	ld	hl, #_rightpng
   46B4 22 56 4D      [16]  155 	ld	((_array + 0x0007)), hl
   46B7 C9            [10]  156 	ret
                            157 ;src/sistemas/fisica.c:39: void vacia_vaso(){
                            158 ;	---------------------------------
                            159 ; Function vacia_vaso
                            160 ; ---------------------------------
   46B8                     161 _vacia_vaso::
                            162 ;src/sistemas/fisica.c:40: if (vaso_lleno==lleno)
   46B8 3A CD 4D      [13]  163 	ld	a,(#_vaso_lleno + 0)
   46BB 3D            [ 4]  164 	dec	a
   46BC C0            [11]  165 	ret	NZ
                            166 ;src/sistemas/fisica.c:41: {puntos++;
   46BD 21 D0 4D      [10]  167 	ld	hl, #_puntos+0
   46C0 34            [11]  168 	inc	(hl)
                            169 ;src/sistemas/fisica.c:42: array[0].sprite =  rightpng; }
   46C1 21 F4 41      [10]  170 	ld	hl, #_rightpng
   46C4 22 56 4D      [16]  171 	ld	((_array + 0x0007)), hl
   46C7 C9            [10]  172 	ret
                            173 	.area _CODE
                            174 	.area _INITIALIZER
                            175 	.area _CABS (ABS)

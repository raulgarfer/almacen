                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module fisica_objetos
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _pinta_puntos
                             12 	.globl _borra_objeto
                             13 	.globl _muere
                             14 	.globl _suma_puntos
                             15 	.globl _obj_caido
                             16 	.globl _fisica_objetos
                             17 	.globl _comprobar_recojida
                             18 ;--------------------------------------------------------
                             19 ; special function registers
                             20 ;--------------------------------------------------------
                             21 ;--------------------------------------------------------
                             22 ; ram data
                             23 ;--------------------------------------------------------
                             24 	.area _DATA
   4D2F                      25 _obj_caido::
   4D2F                      26 	.ds 2
                             27 ;--------------------------------------------------------
                             28 ; ram data
                             29 ;--------------------------------------------------------
                             30 	.area _INITIALIZED
                             31 ;--------------------------------------------------------
                             32 ; absolute external ram data
                             33 ;--------------------------------------------------------
                             34 	.area _DABS (ABS)
                             35 ;--------------------------------------------------------
                             36 ; global & static initialisations
                             37 ;--------------------------------------------------------
                             38 	.area _HOME
                             39 	.area _GSINIT
                             40 	.area _GSFINAL
                             41 	.area _GSINIT
                             42 ;--------------------------------------------------------
                             43 ; Home
                             44 ;--------------------------------------------------------
                             45 	.area _HOME
                             46 	.area _HOME
                             47 ;--------------------------------------------------------
                             48 ; code
                             49 ;--------------------------------------------------------
                             50 	.area _CODE
                             51 ;src/sistemas/fisica_objetos.c:4: void fisica_objetos(){
                             52 ;	---------------------------------
                             53 ; Function fisica_objetos
                             54 ; ---------------------------------
   45B6                      55 _fisica_objetos::
   45B6 DD E5         [15]   56 	push	ix
   45B8 DD 21 00 00   [14]   57 	ld	ix,#0
   45BC DD 39         [15]   58 	add	ix,sp
   45BE F5            [11]   59 	push	af
   45BF F5            [11]   60 	push	af
   45C0 3B            [ 6]   61 	dec	sp
                             62 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   45C1 06 01         [ 7]   63 	ld	b, #0x01
   45C3                      64 00104$:
                             65 ;src/sistemas/fisica_objetos.c:7: borra_objeto(array[i].x,array[i].y,array[i].ancho,array[i].alto);
   45C3 58            [ 4]   66 	ld	e,b
   45C4 16 00         [ 7]   67 	ld	d,#0x00
   45C6 6B            [ 4]   68 	ld	l, e
   45C7 62            [ 4]   69 	ld	h, d
   45C8 29            [11]   70 	add	hl, hl
   45C9 29            [11]   71 	add	hl, hl
   45CA 19            [11]   72 	add	hl, de
   45CB 29            [11]   73 	add	hl, hl
   45CC 11 B1 4C      [10]   74 	ld	de, #_array
   45CF 19            [11]   75 	add	hl, de
   45D0 DD 75 FE      [19]   76 	ld	-2 (ix), l
   45D3 DD 74 FF      [19]   77 	ld	-1 (ix), h
   45D6 11 06 00      [10]   78 	ld	de, #0x0006
   45D9 19            [11]   79 	add	hl, de
   45DA 7E            [ 7]   80 	ld	a, (hl)
   45DB DD 77 FD      [19]   81 	ld	-3 (ix), a
   45DE DD 6E FE      [19]   82 	ld	l,-2 (ix)
   45E1 DD 66 FF      [19]   83 	ld	h,-1 (ix)
   45E4 11 05 00      [10]   84 	ld	de, #0x0005
   45E7 19            [11]   85 	add	hl, de
   45E8 7E            [ 7]   86 	ld	a, (hl)
   45E9 DD 77 FC      [19]   87 	ld	-4 (ix), a
   45EC DD 6E FE      [19]   88 	ld	l,-2 (ix)
   45EF DD 66 FF      [19]   89 	ld	h,-1 (ix)
   45F2 23            [ 6]   90 	inc	hl
   45F3 23            [ 6]   91 	inc	hl
   45F4 4E            [ 7]   92 	ld	c, (hl)
   45F5 DD 5E FE      [19]   93 	ld	e,-2 (ix)
   45F8 DD 56 FF      [19]   94 	ld	d,-1 (ix)
   45FB 13            [ 6]   95 	inc	de
   45FC 1A            [ 7]   96 	ld	a, (de)
   45FD DD 77 FB      [19]   97 	ld	-5 (ix), a
   4600 C5            [11]   98 	push	bc
   4601 D5            [11]   99 	push	de
   4602 DD 7E FD      [19]  100 	ld	a, -3 (ix)
   4605 F5            [11]  101 	push	af
   4606 33            [ 6]  102 	inc	sp
   4607 DD 46 FC      [19]  103 	ld	b, -4 (ix)
   460A C5            [11]  104 	push	bc
   460B DD 7E FB      [19]  105 	ld	a, -5 (ix)
   460E F5            [11]  106 	push	af
   460F 33            [ 6]  107 	inc	sp
   4610 CD A4 44      [17]  108 	call	_borra_objeto
   4613 F1            [10]  109 	pop	af
   4614 F1            [10]  110 	pop	af
   4615 D1            [10]  111 	pop	de
   4616 C1            [10]  112 	pop	bc
                            113 ;src/sistemas/fisica_objetos.c:8: array[i].x+=array[i].vx;
   4617 1A            [ 7]  114 	ld	a, (de)
   4618 4F            [ 4]  115 	ld	c, a
   4619 DD 6E FE      [19]  116 	ld	l,-2 (ix)
   461C DD 66 FF      [19]  117 	ld	h,-1 (ix)
   461F 23            [ 6]  118 	inc	hl
   4620 23            [ 6]  119 	inc	hl
   4621 23            [ 6]  120 	inc	hl
   4622 6E            [ 7]  121 	ld	l, (hl)
   4623 79            [ 4]  122 	ld	a, c
   4624 85            [ 4]  123 	add	a, l
   4625 12            [ 7]  124 	ld	(de), a
                            125 ;src/sistemas/fisica_objetos.c:9: if (array[i].x==10)
   4626 1A            [ 7]  126 	ld	a, (de)
   4627 D6 0A         [ 7]  127 	sub	a, #0x0a
   4629 20 08         [12]  128 	jr	NZ,00105$
                            129 ;src/sistemas/fisica_objetos.c:10: {comprobar_recojida(i);}
   462B C5            [11]  130 	push	bc
   462C C5            [11]  131 	push	bc
   462D 33            [ 6]  132 	inc	sp
   462E CD 3E 46      [17]  133 	call	_comprobar_recojida
   4631 33            [ 6]  134 	inc	sp
   4632 C1            [10]  135 	pop	bc
   4633                     136 00105$:
                            137 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   4633 04            [ 4]  138 	inc	b
   4634 78            [ 4]  139 	ld	a, b
   4635 D6 02         [ 7]  140 	sub	a, #0x02
   4637 38 8A         [12]  141 	jr	C,00104$
   4639 DD F9         [10]  142 	ld	sp, ix
   463B DD E1         [14]  143 	pop	ix
   463D C9            [10]  144 	ret
                            145 ;src/sistemas/fisica_objetos.c:14: void comprobar_recojida(u8 i){
                            146 ;	---------------------------------
                            147 ; Function comprobar_recojida
                            148 ; ---------------------------------
   463E                     149 _comprobar_recojida::
   463E DD E5         [15]  150 	push	ix
   4640 DD 21 00 00   [14]  151 	ld	ix,#0
   4644 DD 39         [15]  152 	add	ix,sp
                            153 ;src/sistemas/fisica_objetos.c:16: if (array[i].y==array[0].y)
   4646 11 B1 4C      [10]  154 	ld	de, #_array+0
   4649 DD 4E 04      [19]  155 	ld	c,4 (ix)
   464C 06 00         [ 7]  156 	ld	b,#0x00
   464E 69            [ 4]  157 	ld	l, c
   464F 60            [ 4]  158 	ld	h, b
   4650 29            [11]  159 	add	hl, hl
   4651 29            [11]  160 	add	hl, hl
   4652 09            [11]  161 	add	hl, bc
   4653 29            [11]  162 	add	hl, hl
   4654 19            [11]  163 	add	hl, de
   4655 E5            [11]  164 	push	hl
   4656 FD E1         [14]  165 	pop	iy
   4658 FD E5         [15]  166 	push	iy
   465A E1            [10]  167 	pop	hl
   465B 23            [ 6]  168 	inc	hl
   465C 23            [ 6]  169 	inc	hl
   465D 4E            [ 7]  170 	ld	c, (hl)
   465E 3A B3 4C      [13]  171 	ld	a, (#_array + 2)
   4661 91            [ 4]  172 	sub	a, c
   4662 20 0E         [12]  173 	jr	NZ,00102$
                            174 ;src/sistemas/fisica_objetos.c:17: {suma_puntos(i);
   4664 DD 7E 04      [19]  175 	ld	a, 4 (ix)
   4667 F5            [11]  176 	push	af
   4668 33            [ 6]  177 	inc	sp
   4669 CD 0A 47      [17]  178 	call	_suma_puntos
   466C 33            [ 6]  179 	inc	sp
                            180 ;src/sistemas/fisica_objetos.c:18: pinta_puntos();}
   466D CD B4 46      [17]  181 	call	_pinta_puntos
   4670 18 0D         [12]  182 	jr	00104$
   4672                     183 00102$:
                            184 ;src/sistemas/fisica_objetos.c:19: else {obj_caido=&array[i];
   4672 FD 22 2F 4D   [20]  185 	ld	(_obj_caido), iy
                            186 ;src/sistemas/fisica_objetos.c:20: muere(i);}
   4676 DD 7E 04      [19]  187 	ld	a, 4 (ix)
   4679 F5            [11]  188 	push	af
   467A 33            [ 6]  189 	inc	sp
   467B CD D3 44      [17]  190 	call	_muere
   467E 33            [ 6]  191 	inc	sp
   467F                     192 00104$:
   467F DD E1         [14]  193 	pop	ix
   4681 C9            [10]  194 	ret
                            195 	.area _CODE
                            196 	.area _INITIALIZER
                            197 	.area _CABS (ABS)

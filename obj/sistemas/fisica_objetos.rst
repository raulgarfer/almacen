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
   4DCE                      25 _obj_caido::
   4DCE                      26 	.ds 2
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
   46C8                      55 _fisica_objetos::
   46C8 DD E5         [15]   56 	push	ix
   46CA DD 21 00 00   [14]   57 	ld	ix,#0
   46CE DD 39         [15]   58 	add	ix,sp
   46D0 F5            [11]   59 	push	af
   46D1 F5            [11]   60 	push	af
   46D2 3B            [ 6]   61 	dec	sp
                             62 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   46D3 06 01         [ 7]   63 	ld	b, #0x01
   46D5                      64 00104$:
                             65 ;src/sistemas/fisica_objetos.c:7: borra_objeto(array[i].x,array[i].y,array[i].ancho,array[i].alto);
   46D5 58            [ 4]   66 	ld	e,b
   46D6 16 00         [ 7]   67 	ld	d,#0x00
   46D8 6B            [ 4]   68 	ld	l, e
   46D9 62            [ 4]   69 	ld	h, d
   46DA 29            [11]   70 	add	hl, hl
   46DB 29            [11]   71 	add	hl, hl
   46DC 19            [11]   72 	add	hl, de
   46DD 29            [11]   73 	add	hl, hl
   46DE 11 4F 4D      [10]   74 	ld	de, #_array
   46E1 19            [11]   75 	add	hl, de
   46E2 DD 75 FE      [19]   76 	ld	-2 (ix), l
   46E5 DD 74 FF      [19]   77 	ld	-1 (ix), h
   46E8 11 06 00      [10]   78 	ld	de, #0x0006
   46EB 19            [11]   79 	add	hl, de
   46EC 7E            [ 7]   80 	ld	a, (hl)
   46ED DD 77 FD      [19]   81 	ld	-3 (ix), a
   46F0 DD 6E FE      [19]   82 	ld	l,-2 (ix)
   46F3 DD 66 FF      [19]   83 	ld	h,-1 (ix)
   46F6 11 05 00      [10]   84 	ld	de, #0x0005
   46F9 19            [11]   85 	add	hl, de
   46FA 7E            [ 7]   86 	ld	a, (hl)
   46FB DD 77 FC      [19]   87 	ld	-4 (ix), a
   46FE DD 6E FE      [19]   88 	ld	l,-2 (ix)
   4701 DD 66 FF      [19]   89 	ld	h,-1 (ix)
   4704 23            [ 6]   90 	inc	hl
   4705 23            [ 6]   91 	inc	hl
   4706 4E            [ 7]   92 	ld	c, (hl)
   4707 DD 5E FE      [19]   93 	ld	e,-2 (ix)
   470A DD 56 FF      [19]   94 	ld	d,-1 (ix)
   470D 13            [ 6]   95 	inc	de
   470E 1A            [ 7]   96 	ld	a, (de)
   470F DD 77 FB      [19]   97 	ld	-5 (ix), a
   4712 C5            [11]   98 	push	bc
   4713 D5            [11]   99 	push	de
   4714 DD 7E FD      [19]  100 	ld	a, -3 (ix)
   4717 F5            [11]  101 	push	af
   4718 33            [ 6]  102 	inc	sp
   4719 DD 46 FC      [19]  103 	ld	b, -4 (ix)
   471C C5            [11]  104 	push	bc
   471D DD 7E FB      [19]  105 	ld	a, -5 (ix)
   4720 F5            [11]  106 	push	af
   4721 33            [ 6]  107 	inc	sp
   4722 CD 74 45      [17]  108 	call	_borra_objeto
   4725 F1            [10]  109 	pop	af
   4726 F1            [10]  110 	pop	af
   4727 D1            [10]  111 	pop	de
   4728 C1            [10]  112 	pop	bc
                            113 ;src/sistemas/fisica_objetos.c:8: array[i].x+=array[i].vx;
   4729 1A            [ 7]  114 	ld	a, (de)
   472A 4F            [ 4]  115 	ld	c, a
   472B DD 6E FE      [19]  116 	ld	l,-2 (ix)
   472E DD 66 FF      [19]  117 	ld	h,-1 (ix)
   4731 23            [ 6]  118 	inc	hl
   4732 23            [ 6]  119 	inc	hl
   4733 23            [ 6]  120 	inc	hl
   4734 6E            [ 7]  121 	ld	l, (hl)
   4735 79            [ 4]  122 	ld	a, c
   4736 85            [ 4]  123 	add	a, l
   4737 12            [ 7]  124 	ld	(de), a
                            125 ;src/sistemas/fisica_objetos.c:9: if (array[i].x==10)
   4738 1A            [ 7]  126 	ld	a, (de)
   4739 D6 0A         [ 7]  127 	sub	a, #0x0a
   473B 20 08         [12]  128 	jr	NZ,00105$
                            129 ;src/sistemas/fisica_objetos.c:10: {comprobar_recojida(i);}
   473D C5            [11]  130 	push	bc
   473E C5            [11]  131 	push	bc
   473F 33            [ 6]  132 	inc	sp
   4740 CD 50 47      [17]  133 	call	_comprobar_recojida
   4743 33            [ 6]  134 	inc	sp
   4744 C1            [10]  135 	pop	bc
   4745                     136 00105$:
                            137 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   4745 04            [ 4]  138 	inc	b
   4746 78            [ 4]  139 	ld	a, b
   4747 D6 02         [ 7]  140 	sub	a, #0x02
   4749 38 8A         [12]  141 	jr	C,00104$
   474B DD F9         [10]  142 	ld	sp, ix
   474D DD E1         [14]  143 	pop	ix
   474F C9            [10]  144 	ret
                            145 ;src/sistemas/fisica_objetos.c:14: void comprobar_recojida(u8 i){
                            146 ;	---------------------------------
                            147 ; Function comprobar_recojida
                            148 ; ---------------------------------
   4750                     149 _comprobar_recojida::
   4750 DD E5         [15]  150 	push	ix
   4752 DD 21 00 00   [14]  151 	ld	ix,#0
   4756 DD 39         [15]  152 	add	ix,sp
                            153 ;src/sistemas/fisica_objetos.c:16: if (array[i].y==array[0].y)
   4758 11 4F 4D      [10]  154 	ld	de, #_array+0
   475B DD 4E 04      [19]  155 	ld	c,4 (ix)
   475E 06 00         [ 7]  156 	ld	b,#0x00
   4760 69            [ 4]  157 	ld	l, c
   4761 60            [ 4]  158 	ld	h, b
   4762 29            [11]  159 	add	hl, hl
   4763 29            [11]  160 	add	hl, hl
   4764 09            [11]  161 	add	hl, bc
   4765 29            [11]  162 	add	hl, hl
   4766 19            [11]  163 	add	hl, de
   4767 E5            [11]  164 	push	hl
   4768 FD E1         [14]  165 	pop	iy
   476A FD E5         [15]  166 	push	iy
   476C E1            [10]  167 	pop	hl
   476D 23            [ 6]  168 	inc	hl
   476E 23            [ 6]  169 	inc	hl
   476F 4E            [ 7]  170 	ld	c, (hl)
   4770 3A 51 4D      [13]  171 	ld	a, (#_array + 2)
   4773 91            [ 4]  172 	sub	a, c
   4774 20 13         [12]  173 	jr	NZ,00102$
                            174 ;src/sistemas/fisica_objetos.c:17: {suma_puntos(i);
   4776 DD 7E 04      [19]  175 	ld	a, 4 (ix)
   4779 F5            [11]  176 	push	af
   477A 33            [ 6]  177 	inc	sp
   477B CD 21 48      [17]  178 	call	_suma_puntos
   477E 33            [ 6]  179 	inc	sp
                            180 ;src/sistemas/fisica_objetos.c:18: pinta_puntos();
   477F CD CB 47      [17]  181 	call	_pinta_puntos
                            182 ;src/sistemas/fisica_objetos.c:19: vaso_lleno    =   lleno;}
   4782 21 CD 4D      [10]  183 	ld	hl,#_vaso_lleno + 0
   4785 36 01         [10]  184 	ld	(hl), #0x01
   4787 18 0D         [12]  185 	jr	00104$
   4789                     186 00102$:
                            187 ;src/sistemas/fisica_objetos.c:20: else {obj_caido=&array[i];
   4789 FD 22 CE 4D   [20]  188 	ld	(_obj_caido), iy
                            189 ;src/sistemas/fisica_objetos.c:21: muere(i);}
   478D DD 7E 04      [19]  190 	ld	a, 4 (ix)
   4790 F5            [11]  191 	push	af
   4791 33            [ 6]  192 	inc	sp
   4792 CD A3 45      [17]  193 	call	_muere
   4795 33            [ 6]  194 	inc	sp
   4796                     195 00104$:
   4796 DD E1         [14]  196 	pop	ix
   4798 C9            [10]  197 	ret
                            198 	.area _CODE
                            199 	.area _INITIALIZER
                            200 	.area _CABS (ABS)

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
   56A6                      25 _obj_caido::
   56A6                      26 	.ds 2
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
   4741                      55 _fisica_objetos::
   4741 DD E5         [15]   56 	push	ix
   4743 DD 21 00 00   [14]   57 	ld	ix,#0
   4747 DD 39         [15]   58 	add	ix,sp
   4749 F5            [11]   59 	push	af
   474A F5            [11]   60 	push	af
   474B 3B            [ 6]   61 	dec	sp
                             62 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   474C 06 01         [ 7]   63 	ld	b, #0x01
   474E                      64 00104$:
                             65 ;src/sistemas/fisica_objetos.c:7: borra_objeto(array[i].x,array[i].y,array[i].ancho,array[i].alto);
   474E 58            [ 4]   66 	ld	e,b
   474F 16 00         [ 7]   67 	ld	d,#0x00
   4751 6B            [ 4]   68 	ld	l, e
   4752 62            [ 4]   69 	ld	h, d
   4753 29            [11]   70 	add	hl, hl
   4754 29            [11]   71 	add	hl, hl
   4755 19            [11]   72 	add	hl, de
   4756 29            [11]   73 	add	hl, hl
   4757 11 27 56      [10]   74 	ld	de, #_array
   475A 19            [11]   75 	add	hl, de
   475B DD 75 FE      [19]   76 	ld	-2 (ix), l
   475E DD 74 FF      [19]   77 	ld	-1 (ix), h
   4761 11 06 00      [10]   78 	ld	de, #0x0006
   4764 19            [11]   79 	add	hl, de
   4765 7E            [ 7]   80 	ld	a, (hl)
   4766 DD 77 FD      [19]   81 	ld	-3 (ix), a
   4769 DD 6E FE      [19]   82 	ld	l,-2 (ix)
   476C DD 66 FF      [19]   83 	ld	h,-1 (ix)
   476F 11 05 00      [10]   84 	ld	de, #0x0005
   4772 19            [11]   85 	add	hl, de
   4773 7E            [ 7]   86 	ld	a, (hl)
   4774 DD 77 FC      [19]   87 	ld	-4 (ix), a
   4777 DD 6E FE      [19]   88 	ld	l,-2 (ix)
   477A DD 66 FF      [19]   89 	ld	h,-1 (ix)
   477D 23            [ 6]   90 	inc	hl
   477E 23            [ 6]   91 	inc	hl
   477F 4E            [ 7]   92 	ld	c, (hl)
   4780 DD 5E FE      [19]   93 	ld	e,-2 (ix)
   4783 DD 56 FF      [19]   94 	ld	d,-1 (ix)
   4786 13            [ 6]   95 	inc	de
   4787 1A            [ 7]   96 	ld	a, (de)
   4788 DD 77 FB      [19]   97 	ld	-5 (ix), a
   478B C5            [11]   98 	push	bc
   478C D5            [11]   99 	push	de
   478D DD 7E FD      [19]  100 	ld	a, -3 (ix)
   4790 F5            [11]  101 	push	af
   4791 33            [ 6]  102 	inc	sp
   4792 DD 46 FC      [19]  103 	ld	b, -4 (ix)
   4795 C5            [11]  104 	push	bc
   4796 DD 7E FB      [19]  105 	ld	a, -5 (ix)
   4799 F5            [11]  106 	push	af
   479A 33            [ 6]  107 	inc	sp
   479B CD E3 45      [17]  108 	call	_borra_objeto
   479E F1            [10]  109 	pop	af
   479F F1            [10]  110 	pop	af
   47A0 D1            [10]  111 	pop	de
   47A1 C1            [10]  112 	pop	bc
                            113 ;src/sistemas/fisica_objetos.c:8: array[i].x+=array[i].vx;
   47A2 1A            [ 7]  114 	ld	a, (de)
   47A3 4F            [ 4]  115 	ld	c, a
   47A4 DD 6E FE      [19]  116 	ld	l,-2 (ix)
   47A7 DD 66 FF      [19]  117 	ld	h,-1 (ix)
   47AA 23            [ 6]  118 	inc	hl
   47AB 23            [ 6]  119 	inc	hl
   47AC 23            [ 6]  120 	inc	hl
   47AD 6E            [ 7]  121 	ld	l, (hl)
   47AE 79            [ 4]  122 	ld	a, c
   47AF 85            [ 4]  123 	add	a, l
   47B0 12            [ 7]  124 	ld	(de), a
                            125 ;src/sistemas/fisica_objetos.c:9: if (array[i].x==10)
   47B1 1A            [ 7]  126 	ld	a, (de)
   47B2 D6 0A         [ 7]  127 	sub	a, #0x0a
   47B4 20 08         [12]  128 	jr	NZ,00105$
                            129 ;src/sistemas/fisica_objetos.c:10: {comprobar_recojida(i);}
   47B6 C5            [11]  130 	push	bc
   47B7 C5            [11]  131 	push	bc
   47B8 33            [ 6]  132 	inc	sp
   47B9 CD C9 47      [17]  133 	call	_comprobar_recojida
   47BC 33            [ 6]  134 	inc	sp
   47BD C1            [10]  135 	pop	bc
   47BE                     136 00105$:
                            137 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   47BE 04            [ 4]  138 	inc	b
   47BF 78            [ 4]  139 	ld	a, b
   47C0 D6 02         [ 7]  140 	sub	a, #0x02
   47C2 38 8A         [12]  141 	jr	C,00104$
   47C4 DD F9         [10]  142 	ld	sp, ix
   47C6 DD E1         [14]  143 	pop	ix
   47C8 C9            [10]  144 	ret
                            145 ;src/sistemas/fisica_objetos.c:14: void comprobar_recojida(u8 i){     
                            146 ;	---------------------------------
                            147 ; Function comprobar_recojida
                            148 ; ---------------------------------
   47C9                     149 _comprobar_recojida::
   47C9 DD E5         [15]  150 	push	ix
   47CB DD 21 00 00   [14]  151 	ld	ix,#0
   47CF DD 39         [15]  152 	add	ix,sp
                            153 ;src/sistemas/fisica_objetos.c:15: if (array[i].y==array[0].y)
   47D1 11 27 56      [10]  154 	ld	de, #_array+0
   47D4 DD 4E 04      [19]  155 	ld	c,4 (ix)
   47D7 06 00         [ 7]  156 	ld	b,#0x00
   47D9 69            [ 4]  157 	ld	l, c
   47DA 60            [ 4]  158 	ld	h, b
   47DB 29            [11]  159 	add	hl, hl
   47DC 29            [11]  160 	add	hl, hl
   47DD 09            [11]  161 	add	hl, bc
   47DE 29            [11]  162 	add	hl, hl
   47DF 19            [11]  163 	add	hl, de
   47E0 E5            [11]  164 	push	hl
   47E1 FD E1         [14]  165 	pop	iy
   47E3 FD E5         [15]  166 	push	iy
   47E5 E1            [10]  167 	pop	hl
   47E6 23            [ 6]  168 	inc	hl
   47E7 23            [ 6]  169 	inc	hl
   47E8 4E            [ 7]  170 	ld	c, (hl)
   47E9 3A 29 56      [13]  171 	ld	a, (#_array + 2)
   47EC 91            [ 4]  172 	sub	a, c
   47ED 20 13         [12]  173 	jr	NZ,00102$
                            174 ;src/sistemas/fisica_objetos.c:16: {suma_puntos(i);
   47EF DD 7E 04      [19]  175 	ld	a, 4 (ix)
   47F2 F5            [11]  176 	push	af
   47F3 33            [ 6]  177 	inc	sp
   47F4 CD A1 48      [17]  178 	call	_suma_puntos
   47F7 33            [ 6]  179 	inc	sp
                            180 ;src/sistemas/fisica_objetos.c:17: pinta_puntos();
   47F8 CD 44 48      [17]  181 	call	_pinta_puntos
                            182 ;src/sistemas/fisica_objetos.c:18: vaso_lleno    =   lleno;}
   47FB 21 A5 56      [10]  183 	ld	hl,#_vaso_lleno + 0
   47FE 36 01         [10]  184 	ld	(hl), #0x01
   4800 18 0D         [12]  185 	jr	00104$
   4802                     186 00102$:
                            187 ;src/sistemas/fisica_objetos.c:19: else {obj_caido=&array[i];
   4802 FD 22 A6 56   [20]  188 	ld	(_obj_caido), iy
                            189 ;src/sistemas/fisica_objetos.c:20: muere(i);}
   4806 DD 7E 04      [19]  190 	ld	a, 4 (ix)
   4809 F5            [11]  191 	push	af
   480A 33            [ 6]  192 	inc	sp
   480B CD 12 46      [17]  193 	call	_muere
   480E 33            [ 6]  194 	inc	sp
   480F                     195 00104$:
   480F DD E1         [14]  196 	pop	ix
   4811 C9            [10]  197 	ret
                            198 	.area _CODE
                            199 	.area _INITIALIZER
                            200 	.area _CABS (ABS)

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
                             11 	.globl _borra_objeto
                             12 	.globl _muere
                             13 	.globl _pi
                             14 	.globl _obj_caido
                             15 	.globl _fisica_objetos
                             16 	.globl _comprobar_recojida
                             17 ;--------------------------------------------------------
                             18 ; special function registers
                             19 ;--------------------------------------------------------
                             20 ;--------------------------------------------------------
                             21 ; ram data
                             22 ;--------------------------------------------------------
                             23 	.area _DATA
   5689                      24 _obj_caido::
   5689                      25 	.ds 2
   568B                      26 _pi::
   568B                      27 	.ds 1
                             28 ;--------------------------------------------------------
                             29 ; ram data
                             30 ;--------------------------------------------------------
                             31 	.area _INITIALIZED
                             32 ;--------------------------------------------------------
                             33 ; absolute external ram data
                             34 ;--------------------------------------------------------
                             35 	.area _DABS (ABS)
                             36 ;--------------------------------------------------------
                             37 ; global & static initialisations
                             38 ;--------------------------------------------------------
                             39 	.area _HOME
                             40 	.area _GSINIT
                             41 	.area _GSFINAL
                             42 	.area _GSINIT
                             43 ;--------------------------------------------------------
                             44 ; Home
                             45 ;--------------------------------------------------------
                             46 	.area _HOME
                             47 	.area _HOME
                             48 ;--------------------------------------------------------
                             49 ; code
                             50 ;--------------------------------------------------------
                             51 	.area _CODE
                             52 ;src/sistemas/fisica_objetos.c:4: void fisica_objetos(){
                             53 ;	---------------------------------
                             54 ; Function fisica_objetos
                             55 ; ---------------------------------
   470C                      56 _fisica_objetos::
   470C DD E5         [15]   57 	push	ix
   470E DD 21 00 00   [14]   58 	ld	ix,#0
   4712 DD 39         [15]   59 	add	ix,sp
   4714 F5            [11]   60 	push	af
   4715 F5            [11]   61 	push	af
   4716 3B            [ 6]   62 	dec	sp
                             63 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   4717 DD 36 FB 01   [19]   64 	ld	-5 (ix), #0x01
   471B                      65 00104$:
                             66 ;src/sistemas/fisica_objetos.c:7: borra_objeto(array[i].x,array[i].y,array[i].ancho,array[i].alto);
   471B DD 4E FB      [19]   67 	ld	c,-5 (ix)
   471E 06 00         [ 7]   68 	ld	b,#0x00
   4720 69            [ 4]   69 	ld	l, c
   4721 60            [ 4]   70 	ld	h, b
   4722 29            [11]   71 	add	hl, hl
   4723 29            [11]   72 	add	hl, hl
   4724 09            [11]   73 	add	hl, bc
   4725 29            [11]   74 	add	hl, hl
   4726 01 0A 56      [10]   75 	ld	bc,#_array
   4729 09            [11]   76 	add	hl,bc
   472A 5D            [ 4]   77 	ld	e,l
   472B 54            [ 4]   78 	ld	d,h
   472C 01 06 00      [10]   79 	ld	bc, #0x0006
   472F 09            [11]   80 	add	hl, bc
   4730 7E            [ 7]   81 	ld	a, (hl)
   4731 DD 77 FD      [19]   82 	ld	-3 (ix), a
   4734 6B            [ 4]   83 	ld	l, e
   4735 62            [ 4]   84 	ld	h, d
   4736 01 05 00      [10]   85 	ld	bc, #0x0005
   4739 09            [11]   86 	add	hl, bc
   473A 7E            [ 7]   87 	ld	a, (hl)
   473B DD 77 FF      [19]   88 	ld	-1 (ix), a
   473E 6B            [ 4]   89 	ld	l, e
   473F 62            [ 4]   90 	ld	h, d
   4740 23            [ 6]   91 	inc	hl
   4741 23            [ 6]   92 	inc	hl
   4742 7E            [ 7]   93 	ld	a, (hl)
   4743 DD 77 FC      [19]   94 	ld	-4 (ix), a
   4746 4B            [ 4]   95 	ld	c, e
   4747 42            [ 4]   96 	ld	b, d
   4748 03            [ 6]   97 	inc	bc
   4749 0A            [ 7]   98 	ld	a, (bc)
   474A DD 77 FE      [19]   99 	ld	-2 (ix), a
   474D C5            [11]  100 	push	bc
   474E D5            [11]  101 	push	de
   474F DD 66 FD      [19]  102 	ld	h, -3 (ix)
   4752 DD 6E FF      [19]  103 	ld	l, -1 (ix)
   4755 E5            [11]  104 	push	hl
   4756 DD 66 FC      [19]  105 	ld	h, -4 (ix)
   4759 DD 6E FE      [19]  106 	ld	l, -2 (ix)
   475C E5            [11]  107 	push	hl
   475D CD E1 45      [17]  108 	call	_borra_objeto
   4760 F1            [10]  109 	pop	af
   4761 F1            [10]  110 	pop	af
   4762 D1            [10]  111 	pop	de
   4763 C1            [10]  112 	pop	bc
                            113 ;src/sistemas/fisica_objetos.c:8: array[i].x+=array[i].vx;
   4764 0A            [ 7]  114 	ld	a, (bc)
   4765 DD 77 FE      [19]  115 	ld	-2 (ix), a
   4768 13            [ 6]  116 	inc	de
   4769 13            [ 6]  117 	inc	de
   476A 13            [ 6]  118 	inc	de
   476B 1A            [ 7]  119 	ld	a, (de)
   476C 6F            [ 4]  120 	ld	l, a
   476D DD 7E FE      [19]  121 	ld	a, -2 (ix)
   4770 85            [ 4]  122 	add	a, l
   4771 02            [ 7]  123 	ld	(bc), a
                            124 ;src/sistemas/fisica_objetos.c:9: if (array[i].x==10)
   4772 0A            [ 7]  125 	ld	a, (bc)
   4773 D6 0A         [ 7]  126 	sub	a, #0x0a
   4775 20 0E         [12]  127 	jr	NZ,00105$
                            128 ;src/sistemas/fisica_objetos.c:10: { array[i].vx=0;
   4777 AF            [ 4]  129 	xor	a, a
   4778 12            [ 7]  130 	ld	(de), a
                            131 ;src/sistemas/fisica_objetos.c:11: array[i].x    =   70;
   4779 3E 46         [ 7]  132 	ld	a, #0x46
   477B 02            [ 7]  133 	ld	(bc), a
                            134 ;src/sistemas/fisica_objetos.c:12: comprobar_recojida(i);}
   477C DD 7E FB      [19]  135 	ld	a, -5 (ix)
   477F F5            [11]  136 	push	af
   4780 33            [ 6]  137 	inc	sp
   4781 CD 94 47      [17]  138 	call	_comprobar_recojida
   4784 33            [ 6]  139 	inc	sp
   4785                     140 00105$:
                            141 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   4785 DD 34 FB      [23]  142 	inc	-5 (ix)
   4788 DD 7E FB      [19]  143 	ld	a, -5 (ix)
   478B D6 02         [ 7]  144 	sub	a, #0x02
   478D 38 8C         [12]  145 	jr	C,00104$
   478F DD F9         [10]  146 	ld	sp, ix
   4791 DD E1         [14]  147 	pop	ix
   4793 C9            [10]  148 	ret
                            149 ;src/sistemas/fisica_objetos.c:18: void comprobar_recojida(u8 i){     
                            150 ;	---------------------------------
                            151 ; Function comprobar_recojida
                            152 ; ---------------------------------
   4794                     153 _comprobar_recojida::
   4794 DD E5         [15]  154 	push	ix
   4796 DD 21 00 00   [14]  155 	ld	ix,#0
   479A DD 39         [15]  156 	add	ix,sp
                            157 ;src/sistemas/fisica_objetos.c:19: if (array[i].y==array[0].y)
   479C DD 4E 04      [19]  158 	ld	c,4 (ix)
   479F 06 00         [ 7]  159 	ld	b,#0x00
   47A1 69            [ 4]  160 	ld	l, c
   47A2 60            [ 4]  161 	ld	h, b
   47A3 29            [11]  162 	add	hl, hl
   47A4 29            [11]  163 	add	hl, hl
   47A5 09            [11]  164 	add	hl, bc
   47A6 29            [11]  165 	add	hl, hl
   47A7 01 0A 56      [10]  166 	ld	bc,#_array
   47AA 09            [11]  167 	add	hl,bc
   47AB 4D            [ 4]  168 	ld	c,l
   47AC 44            [ 4]  169 	ld	b,h
   47AD 23            [ 6]  170 	inc	hl
   47AE 23            [ 6]  171 	inc	hl
   47AF 5E            [ 7]  172 	ld	e, (hl)
   47B0 3A 0C 56      [13]  173 	ld	a, (#_array + 2)
   47B3 93            [ 4]  174 	sub	a, e
   47B4 20 07         [12]  175 	jr	NZ,00102$
                            176 ;src/sistemas/fisica_objetos.c:20: { vaso_lleno    =   lleno;
   47B6 21 88 56      [10]  177 	ld	hl,#_vaso_lleno + 0
   47B9 36 01         [10]  178 	ld	(hl), #0x01
   47BB 18 23         [12]  179 	jr	00104$
   47BD                     180 00102$:
                            181 ;src/sistemas/fisica_objetos.c:22: else {obj_caido=&array[i];
   47BD ED 43 89 56   [20]  182 	ld	(_obj_caido), bc
                            183 ;src/sistemas/fisica_objetos.c:23: pi=i;
   47C1 DD 46 04      [19]  184 	ld	b, 4 (ix)
   47C4 21 8B 56      [10]  185 	ld	hl,#_pi + 0
   47C7 70            [ 7]  186 	ld	(hl), b
                            187 ;src/sistemas/fisica_objetos.c:24: array[i].vx =   -1;
   47C8 58            [ 4]  188 	ld	e,b
   47C9 16 00         [ 7]  189 	ld	d,#0x00
   47CB 6B            [ 4]  190 	ld	l, e
   47CC 62            [ 4]  191 	ld	h, d
   47CD 29            [11]  192 	add	hl, hl
   47CE 29            [11]  193 	add	hl, hl
   47CF 19            [11]  194 	add	hl, de
   47D0 29            [11]  195 	add	hl, hl
   47D1 11 0A 56      [10]  196 	ld	de, #_array
   47D4 19            [11]  197 	add	hl, de
   47D5 23            [ 6]  198 	inc	hl
   47D6 23            [ 6]  199 	inc	hl
   47D7 23            [ 6]  200 	inc	hl
   47D8 36 FF         [10]  201 	ld	(hl), #0xff
                            202 ;src/sistemas/fisica_objetos.c:25: muere(i);}
   47DA C5            [11]  203 	push	bc
   47DB 33            [ 6]  204 	inc	sp
   47DC CD 10 46      [17]  205 	call	_muere
   47DF 33            [ 6]  206 	inc	sp
   47E0                     207 00104$:
   47E0 DD E1         [14]  208 	pop	ix
   47E2 C9            [10]  209 	ret
                            210 	.area _CODE
                            211 	.area _INITIALIZER
                            212 	.area _CABS (ABS)

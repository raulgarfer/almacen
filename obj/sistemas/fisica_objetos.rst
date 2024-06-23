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
   95F4                      24 _obj_caido::
   95F4                      25 	.ds 2
   95F6                      26 _pi::
   95F6                      27 	.ds 1
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
   859C                      56 _fisica_objetos::
   859C DD E5         [15]   57 	push	ix
   859E DD 21 00 00   [14]   58 	ld	ix,#0
   85A2 DD 39         [15]   59 	add	ix,sp
   85A4 F5            [11]   60 	push	af
   85A5 F5            [11]   61 	push	af
   85A6 3B            [ 6]   62 	dec	sp
                             63 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   85A7 DD 36 FB 01   [19]   64 	ld	-5 (ix), #0x01
   85AB                      65 00104$:
                             66 ;src/sistemas/fisica_objetos.c:7: borra_objeto(array[i].x,array[i].y,array[i].ancho,array[i].alto);
   85AB DD 4E FB      [19]   67 	ld	c,-5 (ix)
   85AE 06 00         [ 7]   68 	ld	b,#0x00
   85B0 69            [ 4]   69 	ld	l, c
   85B1 60            [ 4]   70 	ld	h, b
   85B2 29            [11]   71 	add	hl, hl
   85B3 29            [11]   72 	add	hl, hl
   85B4 09            [11]   73 	add	hl, bc
   85B5 29            [11]   74 	add	hl, hl
   85B6 01 74 95      [10]   75 	ld	bc,#_array
   85B9 09            [11]   76 	add	hl,bc
   85BA 5D            [ 4]   77 	ld	e,l
   85BB 54            [ 4]   78 	ld	d,h
   85BC 01 06 00      [10]   79 	ld	bc, #0x0006
   85BF 09            [11]   80 	add	hl, bc
   85C0 7E            [ 7]   81 	ld	a, (hl)
   85C1 DD 77 FD      [19]   82 	ld	-3 (ix), a
   85C4 6B            [ 4]   83 	ld	l, e
   85C5 62            [ 4]   84 	ld	h, d
   85C6 01 05 00      [10]   85 	ld	bc, #0x0005
   85C9 09            [11]   86 	add	hl, bc
   85CA 7E            [ 7]   87 	ld	a, (hl)
   85CB DD 77 FF      [19]   88 	ld	-1 (ix), a
   85CE 6B            [ 4]   89 	ld	l, e
   85CF 62            [ 4]   90 	ld	h, d
   85D0 23            [ 6]   91 	inc	hl
   85D1 23            [ 6]   92 	inc	hl
   85D2 7E            [ 7]   93 	ld	a, (hl)
   85D3 DD 77 FC      [19]   94 	ld	-4 (ix), a
   85D6 4B            [ 4]   95 	ld	c, e
   85D7 42            [ 4]   96 	ld	b, d
   85D8 03            [ 6]   97 	inc	bc
   85D9 0A            [ 7]   98 	ld	a, (bc)
   85DA DD 77 FE      [19]   99 	ld	-2 (ix), a
   85DD C5            [11]  100 	push	bc
   85DE D5            [11]  101 	push	de
   85DF DD 66 FD      [19]  102 	ld	h, -3 (ix)
   85E2 DD 6E FF      [19]  103 	ld	l, -1 (ix)
   85E5 E5            [11]  104 	push	hl
   85E6 DD 66 FC      [19]  105 	ld	h, -4 (ix)
   85E9 DD 6E FE      [19]  106 	ld	l, -2 (ix)
   85EC E5            [11]  107 	push	hl
   85ED CD 5E 84      [17]  108 	call	_borra_objeto
   85F0 F1            [10]  109 	pop	af
   85F1 F1            [10]  110 	pop	af
   85F2 D1            [10]  111 	pop	de
   85F3 C1            [10]  112 	pop	bc
                            113 ;src/sistemas/fisica_objetos.c:8: array[i].x+=array[i].vx;
   85F4 0A            [ 7]  114 	ld	a, (bc)
   85F5 DD 77 FE      [19]  115 	ld	-2 (ix), a
   85F8 13            [ 6]  116 	inc	de
   85F9 13            [ 6]  117 	inc	de
   85FA 13            [ 6]  118 	inc	de
   85FB 1A            [ 7]  119 	ld	a, (de)
   85FC 6F            [ 4]  120 	ld	l, a
   85FD DD 7E FE      [19]  121 	ld	a, -2 (ix)
   8600 85            [ 4]  122 	add	a, l
   8601 02            [ 7]  123 	ld	(bc), a
                            124 ;src/sistemas/fisica_objetos.c:9: if (array[i].x==10)
   8602 0A            [ 7]  125 	ld	a, (bc)
   8603 D6 0A         [ 7]  126 	sub	a, #0x0a
   8605 20 0E         [12]  127 	jr	NZ,00105$
                            128 ;src/sistemas/fisica_objetos.c:10: { array[i].vx=0;
   8607 AF            [ 4]  129 	xor	a, a
   8608 12            [ 7]  130 	ld	(de), a
                            131 ;src/sistemas/fisica_objetos.c:11: array[i].x    =   70;
   8609 3E 46         [ 7]  132 	ld	a, #0x46
   860B 02            [ 7]  133 	ld	(bc), a
                            134 ;src/sistemas/fisica_objetos.c:12: comprobar_recojida(i);}
   860C DD 7E FB      [19]  135 	ld	a, -5 (ix)
   860F F5            [11]  136 	push	af
   8610 33            [ 6]  137 	inc	sp
   8611 CD 24 86      [17]  138 	call	_comprobar_recojida
   8614 33            [ 6]  139 	inc	sp
   8615                     140 00105$:
                            141 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   8615 DD 34 FB      [23]  142 	inc	-5 (ix)
   8618 DD 7E FB      [19]  143 	ld	a, -5 (ix)
   861B D6 02         [ 7]  144 	sub	a, #0x02
   861D 38 8C         [12]  145 	jr	C,00104$
   861F DD F9         [10]  146 	ld	sp, ix
   8621 DD E1         [14]  147 	pop	ix
   8623 C9            [10]  148 	ret
                            149 ;src/sistemas/fisica_objetos.c:17: void comprobar_recojida(u8 i){     
                            150 ;	---------------------------------
                            151 ; Function comprobar_recojida
                            152 ; ---------------------------------
   8624                     153 _comprobar_recojida::
   8624 DD E5         [15]  154 	push	ix
   8626 DD 21 00 00   [14]  155 	ld	ix,#0
   862A DD 39         [15]  156 	add	ix,sp
                            157 ;src/sistemas/fisica_objetos.c:18: if (array[i].y==array[0].y)
   862C DD 4E 04      [19]  158 	ld	c,4 (ix)
   862F 06 00         [ 7]  159 	ld	b,#0x00
   8631 69            [ 4]  160 	ld	l, c
   8632 60            [ 4]  161 	ld	h, b
   8633 29            [11]  162 	add	hl, hl
   8634 29            [11]  163 	add	hl, hl
   8635 09            [11]  164 	add	hl, bc
   8636 29            [11]  165 	add	hl, hl
   8637 01 74 95      [10]  166 	ld	bc,#_array
   863A 09            [11]  167 	add	hl,bc
   863B 4D            [ 4]  168 	ld	c,l
   863C 44            [ 4]  169 	ld	b,h
   863D 23            [ 6]  170 	inc	hl
   863E 23            [ 6]  171 	inc	hl
   863F 5E            [ 7]  172 	ld	e, (hl)
   8640 3A 76 95      [13]  173 	ld	a, (#_array + 2)
   8643 93            [ 4]  174 	sub	a, e
   8644 20 07         [12]  175 	jr	NZ,00102$
                            176 ;src/sistemas/fisica_objetos.c:19: { vaso_lleno    =   lleno;}
   8646 21 F2 95      [10]  177 	ld	hl,#_vaso_lleno + 0
   8649 36 01         [10]  178 	ld	(hl), #0x01
   864B 18 23         [12]  179 	jr	00104$
   864D                     180 00102$:
                            181 ;src/sistemas/fisica_objetos.c:20: else {obj_caido=&array[i];
   864D ED 43 F4 95   [20]  182 	ld	(_obj_caido), bc
                            183 ;src/sistemas/fisica_objetos.c:21: pi=i;
   8651 DD 46 04      [19]  184 	ld	b, 4 (ix)
   8654 21 F6 95      [10]  185 	ld	hl,#_pi + 0
   8657 70            [ 7]  186 	ld	(hl), b
                            187 ;src/sistemas/fisica_objetos.c:22: array[i].vx =   -1;
   8658 58            [ 4]  188 	ld	e,b
   8659 16 00         [ 7]  189 	ld	d,#0x00
   865B 6B            [ 4]  190 	ld	l, e
   865C 62            [ 4]  191 	ld	h, d
   865D 29            [11]  192 	add	hl, hl
   865E 29            [11]  193 	add	hl, hl
   865F 19            [11]  194 	add	hl, de
   8660 29            [11]  195 	add	hl, hl
   8661 11 74 95      [10]  196 	ld	de, #_array
   8664 19            [11]  197 	add	hl, de
   8665 23            [ 6]  198 	inc	hl
   8666 23            [ 6]  199 	inc	hl
   8667 23            [ 6]  200 	inc	hl
   8668 36 FF         [10]  201 	ld	(hl), #0xff
                            202 ;src/sistemas/fisica_objetos.c:23: muere(i);}
   866A C5            [11]  203 	push	bc
   866B 33            [ 6]  204 	inc	sp
   866C CD 8D 84      [17]  205 	call	_muere
   866F 33            [ 6]  206 	inc	sp
   8670                     207 00104$:
   8670 DD E1         [14]  208 	pop	ix
   8672 C9            [10]  209 	ret
                            210 	.area _CODE
                            211 	.area _INITIALIZER
                            212 	.area _CABS (ABS)

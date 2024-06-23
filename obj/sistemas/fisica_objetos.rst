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
   8EB5                      24 _obj_caido::
   8EB5                      25 	.ds 2
   8EB7                      26 _pi::
   8EB7                      27 	.ds 1
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
   83AC                      56 _fisica_objetos::
   83AC DD E5         [15]   57 	push	ix
   83AE DD 21 00 00   [14]   58 	ld	ix,#0
   83B2 DD 39         [15]   59 	add	ix,sp
   83B4 F5            [11]   60 	push	af
   83B5 F5            [11]   61 	push	af
   83B6 3B            [ 6]   62 	dec	sp
                             63 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   83B7 DD 36 FB 01   [19]   64 	ld	-5 (ix), #0x01
   83BB                      65 00104$:
                             66 ;src/sistemas/fisica_objetos.c:7: borra_objeto(array[i].x,array[i].y,array[i].ancho,array[i].alto);
   83BB DD 4E FB      [19]   67 	ld	c,-5 (ix)
   83BE 06 00         [ 7]   68 	ld	b,#0x00
   83C0 69            [ 4]   69 	ld	l, c
   83C1 60            [ 4]   70 	ld	h, b
   83C2 29            [11]   71 	add	hl, hl
   83C3 29            [11]   72 	add	hl, hl
   83C4 09            [11]   73 	add	hl, bc
   83C5 29            [11]   74 	add	hl, hl
   83C6 01 35 8E      [10]   75 	ld	bc,#_array
   83C9 09            [11]   76 	add	hl,bc
   83CA 5D            [ 4]   77 	ld	e,l
   83CB 54            [ 4]   78 	ld	d,h
   83CC 01 06 00      [10]   79 	ld	bc, #0x0006
   83CF 09            [11]   80 	add	hl, bc
   83D0 7E            [ 7]   81 	ld	a, (hl)
   83D1 DD 77 FD      [19]   82 	ld	-3 (ix), a
   83D4 6B            [ 4]   83 	ld	l, e
   83D5 62            [ 4]   84 	ld	h, d
   83D6 01 05 00      [10]   85 	ld	bc, #0x0005
   83D9 09            [11]   86 	add	hl, bc
   83DA 7E            [ 7]   87 	ld	a, (hl)
   83DB DD 77 FF      [19]   88 	ld	-1 (ix), a
   83DE 6B            [ 4]   89 	ld	l, e
   83DF 62            [ 4]   90 	ld	h, d
   83E0 23            [ 6]   91 	inc	hl
   83E1 23            [ 6]   92 	inc	hl
   83E2 7E            [ 7]   93 	ld	a, (hl)
   83E3 DD 77 FC      [19]   94 	ld	-4 (ix), a
   83E6 4B            [ 4]   95 	ld	c, e
   83E7 42            [ 4]   96 	ld	b, d
   83E8 03            [ 6]   97 	inc	bc
   83E9 0A            [ 7]   98 	ld	a, (bc)
   83EA DD 77 FE      [19]   99 	ld	-2 (ix), a
   83ED C5            [11]  100 	push	bc
   83EE D5            [11]  101 	push	de
   83EF DD 66 FD      [19]  102 	ld	h, -3 (ix)
   83F2 DD 6E FF      [19]  103 	ld	l, -1 (ix)
   83F5 E5            [11]  104 	push	hl
   83F6 DD 66 FC      [19]  105 	ld	h, -4 (ix)
   83F9 DD 6E FE      [19]  106 	ld	l, -2 (ix)
   83FC E5            [11]  107 	push	hl
   83FD CD 6A 82      [17]  108 	call	_borra_objeto
   8400 F1            [10]  109 	pop	af
   8401 F1            [10]  110 	pop	af
   8402 D1            [10]  111 	pop	de
   8403 C1            [10]  112 	pop	bc
                            113 ;src/sistemas/fisica_objetos.c:8: array[i].x+=array[i].vx;
   8404 0A            [ 7]  114 	ld	a, (bc)
   8405 DD 77 FE      [19]  115 	ld	-2 (ix), a
   8408 13            [ 6]  116 	inc	de
   8409 13            [ 6]  117 	inc	de
   840A 13            [ 6]  118 	inc	de
   840B 1A            [ 7]  119 	ld	a, (de)
   840C 6F            [ 4]  120 	ld	l, a
   840D DD 7E FE      [19]  121 	ld	a, -2 (ix)
   8410 85            [ 4]  122 	add	a, l
   8411 02            [ 7]  123 	ld	(bc), a
                            124 ;src/sistemas/fisica_objetos.c:9: if (array[i].x==10)
   8412 0A            [ 7]  125 	ld	a, (bc)
   8413 D6 0A         [ 7]  126 	sub	a, #0x0a
   8415 20 0E         [12]  127 	jr	NZ,00105$
                            128 ;src/sistemas/fisica_objetos.c:10: { array[i].vx=0;
   8417 AF            [ 4]  129 	xor	a, a
   8418 12            [ 7]  130 	ld	(de), a
                            131 ;src/sistemas/fisica_objetos.c:11: array[i].x    =   70;
   8419 3E 46         [ 7]  132 	ld	a, #0x46
   841B 02            [ 7]  133 	ld	(bc), a
                            134 ;src/sistemas/fisica_objetos.c:12: comprobar_recojida(i);}
   841C DD 7E FB      [19]  135 	ld	a, -5 (ix)
   841F F5            [11]  136 	push	af
   8420 33            [ 6]  137 	inc	sp
   8421 CD 34 84      [17]  138 	call	_comprobar_recojida
   8424 33            [ 6]  139 	inc	sp
   8425                     140 00105$:
                            141 ;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
   8425 DD 34 FB      [23]  142 	inc	-5 (ix)
   8428 DD 7E FB      [19]  143 	ld	a, -5 (ix)
   842B D6 02         [ 7]  144 	sub	a, #0x02
   842D 38 8C         [12]  145 	jr	C,00104$
   842F DD F9         [10]  146 	ld	sp, ix
   8431 DD E1         [14]  147 	pop	ix
   8433 C9            [10]  148 	ret
                            149 ;src/sistemas/fisica_objetos.c:17: void comprobar_recojida(u8 i){     
                            150 ;	---------------------------------
                            151 ; Function comprobar_recojida
                            152 ; ---------------------------------
   8434                     153 _comprobar_recojida::
   8434 DD E5         [15]  154 	push	ix
   8436 DD 21 00 00   [14]  155 	ld	ix,#0
   843A DD 39         [15]  156 	add	ix,sp
                            157 ;src/sistemas/fisica_objetos.c:18: if (array[i].y==array[0].y)
   843C DD 4E 04      [19]  158 	ld	c,4 (ix)
   843F 06 00         [ 7]  159 	ld	b,#0x00
   8441 69            [ 4]  160 	ld	l, c
   8442 60            [ 4]  161 	ld	h, b
   8443 29            [11]  162 	add	hl, hl
   8444 29            [11]  163 	add	hl, hl
   8445 09            [11]  164 	add	hl, bc
   8446 29            [11]  165 	add	hl, hl
   8447 01 35 8E      [10]  166 	ld	bc,#_array
   844A 09            [11]  167 	add	hl,bc
   844B 4D            [ 4]  168 	ld	c,l
   844C 44            [ 4]  169 	ld	b,h
   844D 23            [ 6]  170 	inc	hl
   844E 23            [ 6]  171 	inc	hl
   844F 5E            [ 7]  172 	ld	e, (hl)
   8450 3A 37 8E      [13]  173 	ld	a, (#_array + 2)
   8453 93            [ 4]  174 	sub	a, e
   8454 20 07         [12]  175 	jr	NZ,00102$
                            176 ;src/sistemas/fisica_objetos.c:19: { vaso_lleno    =   lleno;}
   8456 21 B3 8E      [10]  177 	ld	hl,#_vaso_lleno + 0
   8459 36 01         [10]  178 	ld	(hl), #0x01
   845B 18 23         [12]  179 	jr	00104$
   845D                     180 00102$:
                            181 ;src/sistemas/fisica_objetos.c:20: else {obj_caido=&array[i];
   845D ED 43 B5 8E   [20]  182 	ld	(_obj_caido), bc
                            183 ;src/sistemas/fisica_objetos.c:21: pi=i;
   8461 DD 46 04      [19]  184 	ld	b, 4 (ix)
   8464 21 B7 8E      [10]  185 	ld	hl,#_pi + 0
   8467 70            [ 7]  186 	ld	(hl), b
                            187 ;src/sistemas/fisica_objetos.c:22: array[i].vx =   -1;
   8468 58            [ 4]  188 	ld	e,b
   8469 16 00         [ 7]  189 	ld	d,#0x00
   846B 6B            [ 4]  190 	ld	l, e
   846C 62            [ 4]  191 	ld	h, d
   846D 29            [11]  192 	add	hl, hl
   846E 29            [11]  193 	add	hl, hl
   846F 19            [11]  194 	add	hl, de
   8470 29            [11]  195 	add	hl, hl
   8471 11 35 8E      [10]  196 	ld	de, #_array
   8474 19            [11]  197 	add	hl, de
   8475 23            [ 6]  198 	inc	hl
   8476 23            [ 6]  199 	inc	hl
   8477 23            [ 6]  200 	inc	hl
   8478 36 FF         [10]  201 	ld	(hl), #0xff
                            202 ;src/sistemas/fisica_objetos.c:23: muere(i);}
   847A C5            [11]  203 	push	bc
   847B 33            [ 6]  204 	inc	sp
   847C CD 99 82      [17]  205 	call	_muere
   847F 33            [ 6]  206 	inc	sp
   8480                     207 00104$:
   8480 DD E1         [14]  208 	pop	ix
   8482 C9            [10]  209 	ret
                            210 	.area _CODE
                            211 	.area _INITIALIZER
                            212 	.area _CABS (ABS)

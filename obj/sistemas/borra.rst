                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module borra
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _cpct_getScreenPtr
                             12 	.globl _cpct_drawSolidBox
                             13 	.globl _borra
                             14 	.globl _borra_objeto
                             15 ;--------------------------------------------------------
                             16 ; special function registers
                             17 ;--------------------------------------------------------
                             18 ;--------------------------------------------------------
                             19 ; ram data
                             20 ;--------------------------------------------------------
                             21 	.area _DATA
                             22 ;--------------------------------------------------------
                             23 ; ram data
                             24 ;--------------------------------------------------------
                             25 	.area _INITIALIZED
                             26 ;--------------------------------------------------------
                             27 ; absolute external ram data
                             28 ;--------------------------------------------------------
                             29 	.area _DABS (ABS)
                             30 ;--------------------------------------------------------
                             31 ; global & static initialisations
                             32 ;--------------------------------------------------------
                             33 	.area _HOME
                             34 	.area _GSINIT
                             35 	.area _GSFINAL
                             36 	.area _GSINIT
                             37 ;--------------------------------------------------------
                             38 ; Home
                             39 ;--------------------------------------------------------
                             40 	.area _HOME
                             41 	.area _HOME
                             42 ;--------------------------------------------------------
                             43 ; code
                             44 ;--------------------------------------------------------
                             45 	.area _CODE
                             46 ;src/sistemas/borra.c:4: void borra(){       //borra todos los sprites
                             47 ;	---------------------------------
                             48 ; Function borra
                             49 ; ---------------------------------
   4514                      50 _borra::
   4514 DD E5         [15]   51 	push	ix
   4516 DD 21 00 00   [14]   52 	ld	ix,#0
   451A DD 39         [15]   53 	add	ix,sp
   451C F5            [11]   54 	push	af
                             55 ;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
   451D DD 36 FE 00   [19]   56 	ld	-2 (ix), #0x00
   4521                      57 00102$:
                             58 ;src/sistemas/borra.c:8: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,array[i].x,array[i].y);
   4521 DD 4E FE      [19]   59 	ld	c,-2 (ix)
   4524 06 00         [ 7]   60 	ld	b,#0x00
   4526 69            [ 4]   61 	ld	l, c
   4527 60            [ 4]   62 	ld	h, b
   4528 29            [11]   63 	add	hl, hl
   4529 29            [11]   64 	add	hl, hl
   452A 09            [11]   65 	add	hl, bc
   452B 29            [11]   66 	add	hl, hl
   452C 01 4F 4D      [10]   67 	ld	bc,#_array
   452F 09            [11]   68 	add	hl,bc
   4530 5D            [ 4]   69 	ld	e,l
   4531 54            [ 4]   70 	ld	d,h
   4532 23            [ 6]   71 	inc	hl
   4533 23            [ 6]   72 	inc	hl
   4534 7E            [ 7]   73 	ld	a, (hl)
   4535 DD 77 FF      [19]   74 	ld	-1 (ix), a
   4538 6B            [ 4]   75 	ld	l, e
   4539 62            [ 4]   76 	ld	h, d
   453A 23            [ 6]   77 	inc	hl
   453B 4E            [ 7]   78 	ld	c, (hl)
   453C FD 2A 38 4D   [20]   79 	ld	iy, (_vmem_ahora)
   4540 D5            [11]   80 	push	de
   4541 DD 46 FF      [19]   81 	ld	b, -1 (ix)
   4544 C5            [11]   82 	push	bc
   4545 FD E5         [15]   83 	push	iy
   4547 CD 10 4D      [17]   84 	call	_cpct_getScreenPtr
   454A 4D            [ 4]   85 	ld	c, l
   454B 44            [ 4]   86 	ld	b, h
   454C D1            [10]   87 	pop	de
                             88 ;src/sistemas/borra.c:9: cpct_drawSolidBox(pvmem,0,array[i].ancho,array[i].alto);}
   454D D5            [11]   89 	push	de
   454E FD E1         [14]   90 	pop	iy
   4550 FD 7E 06      [19]   91 	ld	a, 6 (iy)
   4553 EB            [ 4]   92 	ex	de,hl
   4554 11 05 00      [10]   93 	ld	de, #0x0005
   4557 19            [11]   94 	add	hl, de
   4558 56            [ 7]   95 	ld	d, (hl)
   4559 F5            [11]   96 	push	af
   455A 33            [ 6]   97 	inc	sp
   455B D5            [11]   98 	push	de
   455C 33            [ 6]   99 	inc	sp
   455D 21 00 00      [10]  100 	ld	hl, #0x0000
   4560 E5            [11]  101 	push	hl
   4561 C5            [11]  102 	push	bc
   4562 CD 37 4C      [17]  103 	call	_cpct_drawSolidBox
                            104 ;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
   4565 DD 34 FE      [23]  105 	inc	-2 (ix)
   4568 DD 7E FE      [19]  106 	ld	a, -2 (ix)
   456B D6 02         [ 7]  107 	sub	a, #0x02
   456D 38 B2         [12]  108 	jr	C,00102$
   456F DD F9         [10]  109 	ld	sp, ix
   4571 DD E1         [14]  110 	pop	ix
   4573 C9            [10]  111 	ret
                            112 ;src/sistemas/borra.c:11: void borra_objeto(u8 x,u8 y,u8 ancho,u8 alto){
                            113 ;	---------------------------------
                            114 ; Function borra_objeto
                            115 ; ---------------------------------
   4574                     116 _borra_objeto::
                            117 ;src/sistemas/borra.c:13: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,x,y);  
   4574 ED 4B 38 4D   [20]  118 	ld	bc, (_vmem_ahora)
   4578 21 03 00      [10]  119 	ld	hl, #3+0
   457B 39            [11]  120 	add	hl, sp
   457C 7E            [ 7]  121 	ld	a, (hl)
   457D F5            [11]  122 	push	af
   457E 33            [ 6]  123 	inc	sp
   457F 21 03 00      [10]  124 	ld	hl, #3+0
   4582 39            [11]  125 	add	hl, sp
   4583 7E            [ 7]  126 	ld	a, (hl)
   4584 F5            [11]  127 	push	af
   4585 33            [ 6]  128 	inc	sp
   4586 C5            [11]  129 	push	bc
   4587 CD 10 4D      [17]  130 	call	_cpct_getScreenPtr
   458A 4D            [ 4]  131 	ld	c, l
   458B 44            [ 4]  132 	ld	b, h
                            133 ;src/sistemas/borra.c:14: cpct_drawSolidBox(pvmem,0,ancho,alto);
   458C 21 05 00      [10]  134 	ld	hl, #5+0
   458F 39            [11]  135 	add	hl, sp
   4590 7E            [ 7]  136 	ld	a, (hl)
   4591 F5            [11]  137 	push	af
   4592 33            [ 6]  138 	inc	sp
   4593 21 05 00      [10]  139 	ld	hl, #5+0
   4596 39            [11]  140 	add	hl, sp
   4597 7E            [ 7]  141 	ld	a, (hl)
   4598 F5            [11]  142 	push	af
   4599 33            [ 6]  143 	inc	sp
   459A 21 00 00      [10]  144 	ld	hl, #0x0000
   459D E5            [11]  145 	push	hl
   459E C5            [11]  146 	push	bc
   459F CD 37 4C      [17]  147 	call	_cpct_drawSolidBox
   45A2 C9            [10]  148 	ret
                            149 	.area _CODE
                            150 	.area _INITIALIZER
                            151 	.area _CABS (ABS)

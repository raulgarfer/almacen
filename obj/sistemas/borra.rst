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
   4581                      50 _borra::
   4581 DD E5         [15]   51 	push	ix
   4583 DD 21 00 00   [14]   52 	ld	ix,#0
   4587 DD 39         [15]   53 	add	ix,sp
   4589 F5            [11]   54 	push	af
                             55 ;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
   458A DD 36 FE 00   [19]   56 	ld	-2 (ix), #0x00
   458E                      57 00102$:
                             58 ;src/sistemas/borra.c:8: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,array[i].x,array[i].y);
   458E DD 4E FE      [19]   59 	ld	c,-2 (ix)
   4591 06 00         [ 7]   60 	ld	b,#0x00
   4593 69            [ 4]   61 	ld	l, c
   4594 60            [ 4]   62 	ld	h, b
   4595 29            [11]   63 	add	hl, hl
   4596 29            [11]   64 	add	hl, hl
   4597 09            [11]   65 	add	hl, bc
   4598 29            [11]   66 	add	hl, hl
   4599 01 0A 56      [10]   67 	ld	bc,#_array
   459C 09            [11]   68 	add	hl,bc
   459D 5D            [ 4]   69 	ld	e,l
   459E 54            [ 4]   70 	ld	d,h
   459F 23            [ 6]   71 	inc	hl
   45A0 23            [ 6]   72 	inc	hl
   45A1 7E            [ 7]   73 	ld	a, (hl)
   45A2 DD 77 FF      [19]   74 	ld	-1 (ix), a
   45A5 6B            [ 4]   75 	ld	l, e
   45A6 62            [ 4]   76 	ld	h, d
   45A7 23            [ 6]   77 	inc	hl
   45A8 4E            [ 7]   78 	ld	c, (hl)
   45A9 FD 2A F3 55   [20]   79 	ld	iy, (_vmem_ahora)
   45AD D5            [11]   80 	push	de
   45AE DD 46 FF      [19]   81 	ld	b, -1 (ix)
   45B1 C5            [11]   82 	push	bc
   45B2 FD E5         [15]   83 	push	iy
   45B4 CD CB 55      [17]   84 	call	_cpct_getScreenPtr
   45B7 4D            [ 4]   85 	ld	c, l
   45B8 44            [ 4]   86 	ld	b, h
   45B9 D1            [10]   87 	pop	de
                             88 ;src/sistemas/borra.c:9: cpct_drawSolidBox(pvmem,0,array[i].ancho,array[i].alto);}
   45BA D5            [11]   89 	push	de
   45BB FD E1         [14]   90 	pop	iy
   45BD FD 7E 06      [19]   91 	ld	a, 6 (iy)
   45C0 EB            [ 4]   92 	ex	de,hl
   45C1 11 05 00      [10]   93 	ld	de, #0x0005
   45C4 19            [11]   94 	add	hl, de
   45C5 56            [ 7]   95 	ld	d, (hl)
   45C6 F5            [11]   96 	push	af
   45C7 33            [ 6]   97 	inc	sp
   45C8 D5            [11]   98 	push	de
   45C9 33            [ 6]   99 	inc	sp
   45CA 21 00 00      [10]  100 	ld	hl, #0x0000
   45CD E5            [11]  101 	push	hl
   45CE C5            [11]  102 	push	bc
   45CF CD F2 54      [17]  103 	call	_cpct_drawSolidBox
                            104 ;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
   45D2 DD 34 FE      [23]  105 	inc	-2 (ix)
   45D5 DD 7E FE      [19]  106 	ld	a, -2 (ix)
   45D8 D6 02         [ 7]  107 	sub	a, #0x02
   45DA 38 B2         [12]  108 	jr	C,00102$
   45DC DD F9         [10]  109 	ld	sp, ix
   45DE DD E1         [14]  110 	pop	ix
   45E0 C9            [10]  111 	ret
                            112 ;src/sistemas/borra.c:11: void borra_objeto(u8 x,u8 y,u8 ancho,u8 alto){
                            113 ;	---------------------------------
                            114 ; Function borra_objeto
                            115 ; ---------------------------------
   45E1                     116 _borra_objeto::
                            117 ;src/sistemas/borra.c:13: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,x,y);  
   45E1 ED 4B F3 55   [20]  118 	ld	bc, (_vmem_ahora)
   45E5 21 03 00      [10]  119 	ld	hl, #3+0
   45E8 39            [11]  120 	add	hl, sp
   45E9 7E            [ 7]  121 	ld	a, (hl)
   45EA F5            [11]  122 	push	af
   45EB 33            [ 6]  123 	inc	sp
   45EC 21 03 00      [10]  124 	ld	hl, #3+0
   45EF 39            [11]  125 	add	hl, sp
   45F0 7E            [ 7]  126 	ld	a, (hl)
   45F1 F5            [11]  127 	push	af
   45F2 33            [ 6]  128 	inc	sp
   45F3 C5            [11]  129 	push	bc
   45F4 CD CB 55      [17]  130 	call	_cpct_getScreenPtr
   45F7 4D            [ 4]  131 	ld	c, l
   45F8 44            [ 4]  132 	ld	b, h
                            133 ;src/sistemas/borra.c:14: cpct_drawSolidBox(pvmem,0,ancho,alto);
   45F9 21 05 00      [10]  134 	ld	hl, #5+0
   45FC 39            [11]  135 	add	hl, sp
   45FD 7E            [ 7]  136 	ld	a, (hl)
   45FE F5            [11]  137 	push	af
   45FF 33            [ 6]  138 	inc	sp
   4600 21 05 00      [10]  139 	ld	hl, #5+0
   4603 39            [11]  140 	add	hl, sp
   4604 7E            [ 7]  141 	ld	a, (hl)
   4605 F5            [11]  142 	push	af
   4606 33            [ 6]  143 	inc	sp
   4607 21 00 00      [10]  144 	ld	hl, #0x0000
   460A E5            [11]  145 	push	hl
   460B C5            [11]  146 	push	bc
   460C CD F2 54      [17]  147 	call	_cpct_drawSolidBox
   460F C9            [10]  148 	ret
                            149 	.area _CODE
                            150 	.area _INITIALIZER
                            151 	.area _CABS (ABS)

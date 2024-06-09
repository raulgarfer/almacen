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
   4583                      50 _borra::
   4583 DD E5         [15]   51 	push	ix
   4585 DD 21 00 00   [14]   52 	ld	ix,#0
   4589 DD 39         [15]   53 	add	ix,sp
   458B F5            [11]   54 	push	af
                             55 ;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
   458C DD 36 FE 00   [19]   56 	ld	-2 (ix), #0x00
   4590                      57 00102$:
                             58 ;src/sistemas/borra.c:8: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,array[i].x,array[i].y);
   4590 DD 4E FE      [19]   59 	ld	c,-2 (ix)
   4593 06 00         [ 7]   60 	ld	b,#0x00
   4595 69            [ 4]   61 	ld	l, c
   4596 60            [ 4]   62 	ld	h, b
   4597 29            [11]   63 	add	hl, hl
   4598 29            [11]   64 	add	hl, hl
   4599 09            [11]   65 	add	hl, bc
   459A 29            [11]   66 	add	hl, hl
   459B 01 27 56      [10]   67 	ld	bc,#_array
   459E 09            [11]   68 	add	hl,bc
   459F 5D            [ 4]   69 	ld	e,l
   45A0 54            [ 4]   70 	ld	d,h
   45A1 23            [ 6]   71 	inc	hl
   45A2 23            [ 6]   72 	inc	hl
   45A3 7E            [ 7]   73 	ld	a, (hl)
   45A4 DD 77 FF      [19]   74 	ld	-1 (ix), a
   45A7 6B            [ 4]   75 	ld	l, e
   45A8 62            [ 4]   76 	ld	h, d
   45A9 23            [ 6]   77 	inc	hl
   45AA 4E            [ 7]   78 	ld	c, (hl)
   45AB FD 2A 10 56   [20]   79 	ld	iy, (_vmem_ahora)
   45AF D5            [11]   80 	push	de
   45B0 DD 46 FF      [19]   81 	ld	b, -1 (ix)
   45B3 C5            [11]   82 	push	bc
   45B4 FD E5         [15]   83 	push	iy
   45B6 CD E8 55      [17]   84 	call	_cpct_getScreenPtr
   45B9 4D            [ 4]   85 	ld	c, l
   45BA 44            [ 4]   86 	ld	b, h
   45BB D1            [10]   87 	pop	de
                             88 ;src/sistemas/borra.c:9: cpct_drawSolidBox(pvmem,0,array[i].ancho,array[i].alto);}
   45BC D5            [11]   89 	push	de
   45BD FD E1         [14]   90 	pop	iy
   45BF FD 7E 06      [19]   91 	ld	a, 6 (iy)
   45C2 EB            [ 4]   92 	ex	de,hl
   45C3 11 05 00      [10]   93 	ld	de, #0x0005
   45C6 19            [11]   94 	add	hl, de
   45C7 56            [ 7]   95 	ld	d, (hl)
   45C8 F5            [11]   96 	push	af
   45C9 33            [ 6]   97 	inc	sp
   45CA D5            [11]   98 	push	de
   45CB 33            [ 6]   99 	inc	sp
   45CC 21 00 00      [10]  100 	ld	hl, #0x0000
   45CF E5            [11]  101 	push	hl
   45D0 C5            [11]  102 	push	bc
   45D1 CD 0F 55      [17]  103 	call	_cpct_drawSolidBox
                            104 ;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
   45D4 DD 34 FE      [23]  105 	inc	-2 (ix)
   45D7 DD 7E FE      [19]  106 	ld	a, -2 (ix)
   45DA D6 02         [ 7]  107 	sub	a, #0x02
   45DC 38 B2         [12]  108 	jr	C,00102$
   45DE DD F9         [10]  109 	ld	sp, ix
   45E0 DD E1         [14]  110 	pop	ix
   45E2 C9            [10]  111 	ret
                            112 ;src/sistemas/borra.c:11: void borra_objeto(u8 x,u8 y,u8 ancho,u8 alto){
                            113 ;	---------------------------------
                            114 ; Function borra_objeto
                            115 ; ---------------------------------
   45E3                     116 _borra_objeto::
                            117 ;src/sistemas/borra.c:13: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,x,y);  
   45E3 ED 4B 10 56   [20]  118 	ld	bc, (_vmem_ahora)
   45E7 21 03 00      [10]  119 	ld	hl, #3+0
   45EA 39            [11]  120 	add	hl, sp
   45EB 7E            [ 7]  121 	ld	a, (hl)
   45EC F5            [11]  122 	push	af
   45ED 33            [ 6]  123 	inc	sp
   45EE 21 03 00      [10]  124 	ld	hl, #3+0
   45F1 39            [11]  125 	add	hl, sp
   45F2 7E            [ 7]  126 	ld	a, (hl)
   45F3 F5            [11]  127 	push	af
   45F4 33            [ 6]  128 	inc	sp
   45F5 C5            [11]  129 	push	bc
   45F6 CD E8 55      [17]  130 	call	_cpct_getScreenPtr
   45F9 4D            [ 4]  131 	ld	c, l
   45FA 44            [ 4]  132 	ld	b, h
                            133 ;src/sistemas/borra.c:14: cpct_drawSolidBox(pvmem,0,ancho,alto);
   45FB 21 05 00      [10]  134 	ld	hl, #5+0
   45FE 39            [11]  135 	add	hl, sp
   45FF 7E            [ 7]  136 	ld	a, (hl)
   4600 F5            [11]  137 	push	af
   4601 33            [ 6]  138 	inc	sp
   4602 21 05 00      [10]  139 	ld	hl, #5+0
   4605 39            [11]  140 	add	hl, sp
   4606 7E            [ 7]  141 	ld	a, (hl)
   4607 F5            [11]  142 	push	af
   4608 33            [ 6]  143 	inc	sp
   4609 21 00 00      [10]  144 	ld	hl, #0x0000
   460C E5            [11]  145 	push	hl
   460D C5            [11]  146 	push	bc
   460E CD 0F 55      [17]  147 	call	_cpct_drawSolidBox
   4611 C9            [10]  148 	ret
                            149 	.area _CODE
                            150 	.area _INITIALIZER
                            151 	.area _CABS (ABS)

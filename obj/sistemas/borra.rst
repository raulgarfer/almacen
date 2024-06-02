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
   4444                      50 _borra::
   4444 DD E5         [15]   51 	push	ix
   4446 DD 21 00 00   [14]   52 	ld	ix,#0
   444A DD 39         [15]   53 	add	ix,sp
   444C F5            [11]   54 	push	af
                             55 ;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
   444D DD 36 FE 00   [19]   56 	ld	-2 (ix), #0x00
   4451                      57 00102$:
                             58 ;src/sistemas/borra.c:8: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,array[i].x,array[i].y);
   4451 DD 4E FE      [19]   59 	ld	c,-2 (ix)
   4454 06 00         [ 7]   60 	ld	b,#0x00
   4456 69            [ 4]   61 	ld	l, c
   4457 60            [ 4]   62 	ld	h, b
   4458 29            [11]   63 	add	hl, hl
   4459 29            [11]   64 	add	hl, hl
   445A 09            [11]   65 	add	hl, bc
   445B 29            [11]   66 	add	hl, hl
   445C 01 B1 4C      [10]   67 	ld	bc,#_array
   445F 09            [11]   68 	add	hl,bc
   4460 5D            [ 4]   69 	ld	e,l
   4461 54            [ 4]   70 	ld	d,h
   4462 23            [ 6]   71 	inc	hl
   4463 23            [ 6]   72 	inc	hl
   4464 7E            [ 7]   73 	ld	a, (hl)
   4465 DD 77 FF      [19]   74 	ld	-1 (ix), a
   4468 6B            [ 4]   75 	ld	l, e
   4469 62            [ 4]   76 	ld	h, d
   446A 23            [ 6]   77 	inc	hl
   446B 4E            [ 7]   78 	ld	c, (hl)
   446C FD 2A 9A 4C   [20]   79 	ld	iy, (_vmem_ahora)
   4470 D5            [11]   80 	push	de
   4471 DD 46 FF      [19]   81 	ld	b, -1 (ix)
   4474 C5            [11]   82 	push	bc
   4475 FD E5         [15]   83 	push	iy
   4477 CD 72 4C      [17]   84 	call	_cpct_getScreenPtr
   447A 4D            [ 4]   85 	ld	c, l
   447B 44            [ 4]   86 	ld	b, h
   447C D1            [10]   87 	pop	de
                             88 ;src/sistemas/borra.c:9: cpct_drawSolidBox(pvmem,0,array[i].ancho,array[i].alto);}
   447D D5            [11]   89 	push	de
   447E FD E1         [14]   90 	pop	iy
   4480 FD 7E 06      [19]   91 	ld	a, 6 (iy)
   4483 EB            [ 4]   92 	ex	de,hl
   4484 11 05 00      [10]   93 	ld	de, #0x0005
   4487 19            [11]   94 	add	hl, de
   4488 56            [ 7]   95 	ld	d, (hl)
   4489 F5            [11]   96 	push	af
   448A 33            [ 6]   97 	inc	sp
   448B D5            [11]   98 	push	de
   448C 33            [ 6]   99 	inc	sp
   448D 21 00 00      [10]  100 	ld	hl, #0x0000
   4490 E5            [11]  101 	push	hl
   4491 C5            [11]  102 	push	bc
   4492 CD 99 4B      [17]  103 	call	_cpct_drawSolidBox
                            104 ;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
   4495 DD 34 FE      [23]  105 	inc	-2 (ix)
   4498 DD 7E FE      [19]  106 	ld	a, -2 (ix)
   449B D6 02         [ 7]  107 	sub	a, #0x02
   449D 38 B2         [12]  108 	jr	C,00102$
   449F DD F9         [10]  109 	ld	sp, ix
   44A1 DD E1         [14]  110 	pop	ix
   44A3 C9            [10]  111 	ret
                            112 ;src/sistemas/borra.c:11: void borra_objeto(u8 x,u8 y,u8 ancho,u8 alto){
                            113 ;	---------------------------------
                            114 ; Function borra_objeto
                            115 ; ---------------------------------
   44A4                     116 _borra_objeto::
                            117 ;src/sistemas/borra.c:13: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,x,y);  
   44A4 ED 4B 9A 4C   [20]  118 	ld	bc, (_vmem_ahora)
   44A8 21 03 00      [10]  119 	ld	hl, #3+0
   44AB 39            [11]  120 	add	hl, sp
   44AC 7E            [ 7]  121 	ld	a, (hl)
   44AD F5            [11]  122 	push	af
   44AE 33            [ 6]  123 	inc	sp
   44AF 21 03 00      [10]  124 	ld	hl, #3+0
   44B2 39            [11]  125 	add	hl, sp
   44B3 7E            [ 7]  126 	ld	a, (hl)
   44B4 F5            [11]  127 	push	af
   44B5 33            [ 6]  128 	inc	sp
   44B6 C5            [11]  129 	push	bc
   44B7 CD 72 4C      [17]  130 	call	_cpct_getScreenPtr
   44BA 4D            [ 4]  131 	ld	c, l
   44BB 44            [ 4]  132 	ld	b, h
                            133 ;src/sistemas/borra.c:14: cpct_drawSolidBox(pvmem,0,ancho,alto);
   44BC 21 05 00      [10]  134 	ld	hl, #5+0
   44BF 39            [11]  135 	add	hl, sp
   44C0 7E            [ 7]  136 	ld	a, (hl)
   44C1 F5            [11]  137 	push	af
   44C2 33            [ 6]  138 	inc	sp
   44C3 21 05 00      [10]  139 	ld	hl, #5+0
   44C6 39            [11]  140 	add	hl, sp
   44C7 7E            [ 7]  141 	ld	a, (hl)
   44C8 F5            [11]  142 	push	af
   44C9 33            [ 6]  143 	inc	sp
   44CA 21 00 00      [10]  144 	ld	hl, #0x0000
   44CD E5            [11]  145 	push	hl
   44CE C5            [11]  146 	push	bc
   44CF CD 99 4B      [17]  147 	call	_cpct_drawSolidBox
   44D2 C9            [10]  148 	ret
                            149 	.area _CODE
                            150 	.area _INITIALIZER
                            151 	.area _CABS (ABS)

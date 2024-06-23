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
   820A                      50 _borra::
   820A DD E5         [15]   51 	push	ix
   820C DD 21 00 00   [14]   52 	ld	ix,#0
   8210 DD 39         [15]   53 	add	ix,sp
   8212 F5            [11]   54 	push	af
                             55 ;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
   8213 DD 36 FE 00   [19]   56 	ld	-2 (ix), #0x00
   8217                      57 00102$:
                             58 ;src/sistemas/borra.c:8: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,array[i].x,array[i].y);
   8217 DD 4E FE      [19]   59 	ld	c,-2 (ix)
   821A 06 00         [ 7]   60 	ld	b,#0x00
   821C 69            [ 4]   61 	ld	l, c
   821D 60            [ 4]   62 	ld	h, b
   821E 29            [11]   63 	add	hl, hl
   821F 29            [11]   64 	add	hl, hl
   8220 09            [11]   65 	add	hl, bc
   8221 29            [11]   66 	add	hl, hl
   8222 01 35 8E      [10]   67 	ld	bc,#_array
   8225 09            [11]   68 	add	hl,bc
   8226 5D            [ 4]   69 	ld	e,l
   8227 54            [ 4]   70 	ld	d,h
   8228 23            [ 6]   71 	inc	hl
   8229 23            [ 6]   72 	inc	hl
   822A 7E            [ 7]   73 	ld	a, (hl)
   822B DD 77 FF      [19]   74 	ld	-1 (ix), a
   822E 6B            [ 4]   75 	ld	l, e
   822F 62            [ 4]   76 	ld	h, d
   8230 23            [ 6]   77 	inc	hl
   8231 4E            [ 7]   78 	ld	c, (hl)
   8232 FD 2A 1E 8E   [20]   79 	ld	iy, (_vmem_ahora)
   8236 D5            [11]   80 	push	de
   8237 DD 46 FF      [19]   81 	ld	b, -1 (ix)
   823A C5            [11]   82 	push	bc
   823B FD E5         [15]   83 	push	iy
   823D CD F6 8D      [17]   84 	call	_cpct_getScreenPtr
   8240 4D            [ 4]   85 	ld	c, l
   8241 44            [ 4]   86 	ld	b, h
   8242 D1            [10]   87 	pop	de
                             88 ;src/sistemas/borra.c:9: cpct_drawSolidBox(pvmem,0,array[i].ancho,array[i].alto);}
   8243 D5            [11]   89 	push	de
   8244 FD E1         [14]   90 	pop	iy
   8246 FD 7E 06      [19]   91 	ld	a, 6 (iy)
   8249 EB            [ 4]   92 	ex	de,hl
   824A 11 05 00      [10]   93 	ld	de, #0x0005
   824D 19            [11]   94 	add	hl, de
   824E 56            [ 7]   95 	ld	d, (hl)
   824F F5            [11]   96 	push	af
   8250 33            [ 6]   97 	inc	sp
   8251 D5            [11]   98 	push	de
   8252 33            [ 6]   99 	inc	sp
   8253 21 00 00      [10]  100 	ld	hl, #0x0000
   8256 E5            [11]  101 	push	hl
   8257 C5            [11]  102 	push	bc
   8258 CD 1D 8D      [17]  103 	call	_cpct_drawSolidBox
                            104 ;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
   825B DD 34 FE      [23]  105 	inc	-2 (ix)
   825E DD 7E FE      [19]  106 	ld	a, -2 (ix)
   8261 D6 02         [ 7]  107 	sub	a, #0x02
   8263 38 B2         [12]  108 	jr	C,00102$
   8265 DD F9         [10]  109 	ld	sp, ix
   8267 DD E1         [14]  110 	pop	ix
   8269 C9            [10]  111 	ret
                            112 ;src/sistemas/borra.c:11: void borra_objeto(u8 x,u8 y,u8 ancho,u8 alto){
                            113 ;	---------------------------------
                            114 ; Function borra_objeto
                            115 ; ---------------------------------
   826A                     116 _borra_objeto::
                            117 ;src/sistemas/borra.c:13: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,x,y);  
   826A ED 4B 1E 8E   [20]  118 	ld	bc, (_vmem_ahora)
   826E 21 03 00      [10]  119 	ld	hl, #3+0
   8271 39            [11]  120 	add	hl, sp
   8272 7E            [ 7]  121 	ld	a, (hl)
   8273 F5            [11]  122 	push	af
   8274 33            [ 6]  123 	inc	sp
   8275 21 03 00      [10]  124 	ld	hl, #3+0
   8278 39            [11]  125 	add	hl, sp
   8279 7E            [ 7]  126 	ld	a, (hl)
   827A F5            [11]  127 	push	af
   827B 33            [ 6]  128 	inc	sp
   827C C5            [11]  129 	push	bc
   827D CD F6 8D      [17]  130 	call	_cpct_getScreenPtr
   8280 4D            [ 4]  131 	ld	c, l
   8281 44            [ 4]  132 	ld	b, h
                            133 ;src/sistemas/borra.c:14: cpct_drawSolidBox(pvmem,0,ancho,alto);
   8282 21 05 00      [10]  134 	ld	hl, #5+0
   8285 39            [11]  135 	add	hl, sp
   8286 7E            [ 7]  136 	ld	a, (hl)
   8287 F5            [11]  137 	push	af
   8288 33            [ 6]  138 	inc	sp
   8289 21 05 00      [10]  139 	ld	hl, #5+0
   828C 39            [11]  140 	add	hl, sp
   828D 7E            [ 7]  141 	ld	a, (hl)
   828E F5            [11]  142 	push	af
   828F 33            [ 6]  143 	inc	sp
   8290 21 00 00      [10]  144 	ld	hl, #0x0000
   8293 E5            [11]  145 	push	hl
   8294 C5            [11]  146 	push	bc
   8295 CD 1D 8D      [17]  147 	call	_cpct_drawSolidBox
   8298 C9            [10]  148 	ret
                            149 	.area _CODE
                            150 	.area _INITIALIZER
                            151 	.area _CABS (ABS)

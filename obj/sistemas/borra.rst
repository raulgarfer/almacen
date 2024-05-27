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
                             46 ;src/sistemas/borra.c:4: void borra(){
                             47 ;	---------------------------------
                             48 ; Function borra
                             49 ; ---------------------------------
   4191                      50 _borra::
                             51 ;src/sistemas/borra.c:6: pvmem   =   cpct_getScreenPtr(0xc000,array[0].x,array[0].y);
   4191 21 06 48      [10]   52 	ld	hl, #_array + 2
   4194 56            [ 7]   53 	ld	d, (hl)
   4195 21 05 48      [10]   54 	ld	hl, #_array + 1
   4198 5E            [ 7]   55 	ld	e, (hl)
   4199 D5            [11]   56 	push	de
   419A 21 00 C0      [10]   57 	ld	hl, #0xc000
   419D E5            [11]   58 	push	hl
   419E CD C7 47      [17]   59 	call	_cpct_getScreenPtr
                             60 ;src/sistemas/borra.c:7: cpct_drawSolidBox(pvmem,0,DERECHA_W,DERECHA_H);
   41A1 01 02 14      [10]   61 	ld	bc, #0x1402
   41A4 C5            [11]   62 	push	bc
   41A5 01 00 00      [10]   63 	ld	bc, #0x0000
   41A8 C5            [11]   64 	push	bc
   41A9 E5            [11]   65 	push	hl
   41AA CD EE 46      [17]   66 	call	_cpct_drawSolidBox
   41AD C9            [10]   67 	ret
                             68 ;src/sistemas/borra.c:9: void borra_objeto(u8 x,u8 y,u8 ancho,u8 alto){
                             69 ;	---------------------------------
                             70 ; Function borra_objeto
                             71 ; ---------------------------------
   41AE                      72 _borra_objeto::
                             73 ;src/sistemas/borra.c:11: pvmem   =   cpct_getScreenPtr(0xc000,x,y);  
   41AE 21 03 00      [10]   74 	ld	hl, #3+0
   41B1 39            [11]   75 	add	hl, sp
   41B2 7E            [ 7]   76 	ld	a, (hl)
   41B3 F5            [11]   77 	push	af
   41B4 33            [ 6]   78 	inc	sp
   41B5 21 03 00      [10]   79 	ld	hl, #3+0
   41B8 39            [11]   80 	add	hl, sp
   41B9 7E            [ 7]   81 	ld	a, (hl)
   41BA F5            [11]   82 	push	af
   41BB 33            [ 6]   83 	inc	sp
   41BC 21 00 C0      [10]   84 	ld	hl, #0xc000
   41BF E5            [11]   85 	push	hl
   41C0 CD C7 47      [17]   86 	call	_cpct_getScreenPtr
   41C3 4D            [ 4]   87 	ld	c, l
   41C4 44            [ 4]   88 	ld	b, h
                             89 ;src/sistemas/borra.c:12: cpct_drawSolidBox(pvmem,0,ancho,alto);
   41C5 21 05 00      [10]   90 	ld	hl, #5+0
   41C8 39            [11]   91 	add	hl, sp
   41C9 7E            [ 7]   92 	ld	a, (hl)
   41CA F5            [11]   93 	push	af
   41CB 33            [ 6]   94 	inc	sp
   41CC 21 05 00      [10]   95 	ld	hl, #5+0
   41CF 39            [11]   96 	add	hl, sp
   41D0 7E            [ 7]   97 	ld	a, (hl)
   41D1 F5            [11]   98 	push	af
   41D2 33            [ 6]   99 	inc	sp
   41D3 21 00 00      [10]  100 	ld	hl, #0x0000
   41D6 E5            [11]  101 	push	hl
   41D7 C5            [11]  102 	push	bc
   41D8 CD EE 46      [17]  103 	call	_cpct_drawSolidBox
   41DB C9            [10]  104 	ret
                            105 	.area _CODE
                            106 	.area _INITIALIZER
                            107 	.area _CABS (ABS)

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
   4182                      50 _borra::
                             51 ;src/sistemas/borra.c:6: pvmem   =   cpct_getScreenPtr(0xc000,array[0].x,array[0].y);
   4182 21 F4 47      [10]   52 	ld	hl, #_array + 2
   4185 56            [ 7]   53 	ld	d, (hl)
   4186 21 F3 47      [10]   54 	ld	hl, #_array + 1
   4189 5E            [ 7]   55 	ld	e, (hl)
   418A D5            [11]   56 	push	de
   418B 21 00 C0      [10]   57 	ld	hl, #0xc000
   418E E5            [11]   58 	push	hl
   418F CD B5 47      [17]   59 	call	_cpct_getScreenPtr
                             60 ;src/sistemas/borra.c:7: cpct_drawSolidBox(pvmem,0,DERECHA_W,DERECHA_H);
   4192 01 02 14      [10]   61 	ld	bc, #0x1402
   4195 C5            [11]   62 	push	bc
   4196 01 00 00      [10]   63 	ld	bc, #0x0000
   4199 C5            [11]   64 	push	bc
   419A E5            [11]   65 	push	hl
   419B CD DC 46      [17]   66 	call	_cpct_drawSolidBox
   419E C9            [10]   67 	ret
                             68 ;src/sistemas/borra.c:9: void borra_objeto(u8 x,u8 y,u8 ancho,u8 alto){
                             69 ;	---------------------------------
                             70 ; Function borra_objeto
                             71 ; ---------------------------------
   419F                      72 _borra_objeto::
                             73 ;src/sistemas/borra.c:11: pvmem   =   cpct_getScreenPtr(0xc000,x,y);  
   419F 21 03 00      [10]   74 	ld	hl, #3+0
   41A2 39            [11]   75 	add	hl, sp
   41A3 7E            [ 7]   76 	ld	a, (hl)
   41A4 F5            [11]   77 	push	af
   41A5 33            [ 6]   78 	inc	sp
   41A6 21 03 00      [10]   79 	ld	hl, #3+0
   41A9 39            [11]   80 	add	hl, sp
   41AA 7E            [ 7]   81 	ld	a, (hl)
   41AB F5            [11]   82 	push	af
   41AC 33            [ 6]   83 	inc	sp
   41AD 21 00 C0      [10]   84 	ld	hl, #0xc000
   41B0 E5            [11]   85 	push	hl
   41B1 CD B5 47      [17]   86 	call	_cpct_getScreenPtr
   41B4 4D            [ 4]   87 	ld	c, l
   41B5 44            [ 4]   88 	ld	b, h
                             89 ;src/sistemas/borra.c:12: cpct_drawSolidBox(pvmem,0,ancho,alto);
   41B6 21 05 00      [10]   90 	ld	hl, #5+0
   41B9 39            [11]   91 	add	hl, sp
   41BA 7E            [ 7]   92 	ld	a, (hl)
   41BB F5            [11]   93 	push	af
   41BC 33            [ 6]   94 	inc	sp
   41BD 21 05 00      [10]   95 	ld	hl, #5+0
   41C0 39            [11]   96 	add	hl, sp
   41C1 7E            [ 7]   97 	ld	a, (hl)
   41C2 F5            [11]   98 	push	af
   41C3 33            [ 6]   99 	inc	sp
   41C4 21 00 00      [10]  100 	ld	hl, #0x0000
   41C7 E5            [11]  101 	push	hl
   41C8 C5            [11]  102 	push	bc
   41C9 CD DC 46      [17]  103 	call	_cpct_drawSolidBox
   41CC C9            [10]  104 	ret
                            105 	.area _CODE
                            106 	.area _INITIALIZER
                            107 	.area _CABS (ABS)

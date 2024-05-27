                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module pintar
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _cpct_getScreenPtr
                             12 	.globl _cpct_drawSprite
                             13 	.globl _pintar_sprites
                             14 ;--------------------------------------------------------
                             15 ; special function registers
                             16 ;--------------------------------------------------------
                             17 ;--------------------------------------------------------
                             18 ; ram data
                             19 ;--------------------------------------------------------
                             20 	.area _DATA
                             21 ;--------------------------------------------------------
                             22 ; ram data
                             23 ;--------------------------------------------------------
                             24 	.area _INITIALIZED
                             25 ;--------------------------------------------------------
                             26 ; absolute external ram data
                             27 ;--------------------------------------------------------
                             28 	.area _DABS (ABS)
                             29 ;--------------------------------------------------------
                             30 ; global & static initialisations
                             31 ;--------------------------------------------------------
                             32 	.area _HOME
                             33 	.area _GSINIT
                             34 	.area _GSFINAL
                             35 	.area _GSINIT
                             36 ;--------------------------------------------------------
                             37 ; Home
                             38 ;--------------------------------------------------------
                             39 	.area _HOME
                             40 	.area _HOME
                             41 ;--------------------------------------------------------
                             42 ; code
                             43 ;--------------------------------------------------------
                             44 	.area _CODE
                             45 ;src/sistemas/pintar.c:4: void pintar_sprites(){
                             46 ;	---------------------------------
                             47 ; Function pintar_sprites
                             48 ; ---------------------------------
   4335                      49 _pintar_sprites::
                             50 ;src/sistemas/pintar.c:6: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, array[0].x, array[0].y);
   4335 21 F4 47      [10]   51 	ld	hl, #_array + 2
   4338 56            [ 7]   52 	ld	d, (hl)
   4339 21 F3 47      [10]   53 	ld	hl, #_array + 1
   433C 5E            [ 7]   54 	ld	e, (hl)
   433D D5            [11]   55 	push	de
   433E 21 00 C0      [10]   56 	ld	hl, #0xc000
   4341 E5            [11]   57 	push	hl
   4342 CD B5 47      [17]   58 	call	_cpct_getScreenPtr
                             59 ;src/sistemas/pintar.c:7: cpct_drawSprite(derecha,pvmem,DERECHA_W,DERECHA_H);
   4345 01 B8 40      [10]   60 	ld	bc, #_derecha+0
   4348 11 02 14      [10]   61 	ld	de, #0x1402
   434B D5            [11]   62 	push	de
   434C E5            [11]   63 	push	hl
   434D C5            [11]   64 	push	bc
   434E CD 59 45      [17]   65 	call	_cpct_drawSprite
                             66 ;src/sistemas/pintar.c:8: pvmem=   cpct_getScreenPtr(CPCT_VMEM_START,array[1].x,array[1].y);
   4351 21 FD 47      [10]   67 	ld	hl, #_array + 11
   4354 56            [ 7]   68 	ld	d, (hl)
   4355 21 FC 47      [10]   69 	ld	hl, #_array + 10
   4358 5E            [ 7]   70 	ld	e, (hl)
   4359 D5            [11]   71 	push	de
   435A 21 00 C0      [10]   72 	ld	hl, #0xc000
   435D E5            [11]   73 	push	hl
   435E CD B5 47      [17]   74 	call	_cpct_getScreenPtr
   4361 4D            [ 4]   75 	ld	c, l
   4362 44            [ 4]   76 	ld	b, h
                             77 ;src/sistemas/pintar.c:9: cpct_drawSprite(array[1].sprite,pvmem,array[1].ancho,array[1].alto);
   4363 21 01 48      [10]   78 	ld	hl, #_array + 15
   4366 56            [ 7]   79 	ld	d, (hl)
   4367 21 00 48      [10]   80 	ld	hl, #_array + 14
   436A 5E            [ 7]   81 	ld	e, (hl)
   436B 2A 02 48      [16]   82 	ld	hl, (#_array + 16)
   436E E5            [11]   83 	push	hl
   436F FD E1         [14]   84 	pop	iy
   4371 D5            [11]   85 	push	de
   4372 C5            [11]   86 	push	bc
   4373 FD E5         [15]   87 	push	iy
   4375 CD 59 45      [17]   88 	call	_cpct_drawSprite
   4378 C9            [10]   89 	ret
                             90 	.area _CODE
                             91 	.area _INITIALIZER
                             92 	.area _CABS (ABS)

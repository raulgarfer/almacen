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
   4347                      49 _pintar_sprites::
                             50 ;src/sistemas/pintar.c:6: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, array[0].x, array[0].y);
   4347 21 06 48      [10]   51 	ld	hl, #_array + 2
   434A 56            [ 7]   52 	ld	d, (hl)
   434B 21 05 48      [10]   53 	ld	hl, #_array + 1
   434E 5E            [ 7]   54 	ld	e, (hl)
   434F D5            [11]   55 	push	de
   4350 21 00 C0      [10]   56 	ld	hl, #0xc000
   4353 E5            [11]   57 	push	hl
   4354 CD C7 47      [17]   58 	call	_cpct_getScreenPtr
                             59 ;src/sistemas/pintar.c:7: cpct_drawSprite(derecha,pvmem,DERECHA_W,DERECHA_H);
   4357 01 B8 40      [10]   60 	ld	bc, #_derecha+0
   435A 11 02 14      [10]   61 	ld	de, #0x1402
   435D D5            [11]   62 	push	de
   435E E5            [11]   63 	push	hl
   435F C5            [11]   64 	push	bc
   4360 CD 6B 45      [17]   65 	call	_cpct_drawSprite
                             66 ;src/sistemas/pintar.c:8: pvmem=   cpct_getScreenPtr(CPCT_VMEM_START,array[1].x,array[1].y);
   4363 21 0F 48      [10]   67 	ld	hl, #_array + 11
   4366 56            [ 7]   68 	ld	d, (hl)
   4367 21 0E 48      [10]   69 	ld	hl, #_array + 10
   436A 5E            [ 7]   70 	ld	e, (hl)
   436B D5            [11]   71 	push	de
   436C 21 00 C0      [10]   72 	ld	hl, #0xc000
   436F E5            [11]   73 	push	hl
   4370 CD C7 47      [17]   74 	call	_cpct_getScreenPtr
   4373 4D            [ 4]   75 	ld	c, l
   4374 44            [ 4]   76 	ld	b, h
                             77 ;src/sistemas/pintar.c:9: cpct_drawSprite(array[1].sprite,pvmem,array[1].ancho,array[1].alto);
   4375 21 13 48      [10]   78 	ld	hl, #_array + 15
   4378 56            [ 7]   79 	ld	d, (hl)
   4379 21 12 48      [10]   80 	ld	hl, #_array + 14
   437C 5E            [ 7]   81 	ld	e, (hl)
   437D 2A 14 48      [16]   82 	ld	hl, (#_array + 16)
   4380 E5            [11]   83 	push	hl
   4381 FD E1         [14]   84 	pop	iy
   4383 D5            [11]   85 	push	de
   4384 C5            [11]   86 	push	bc
   4385 FD E5         [15]   87 	push	iy
   4387 CD 6B 45      [17]   88 	call	_cpct_drawSprite
   438A C9            [10]   89 	ret
                             90 	.area _CODE
                             91 	.area _INITIALIZER
                             92 	.area _CABS (ABS)

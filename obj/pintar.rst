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
                             11 	.globl _pintar_sprites
                             12 	.globl _cpct_getScreenPtr
                             13 	.globl _cpct_drawSprite
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
                             45 ;src/pintar.c:4: void pintar_sprites(){
                             46 ;	---------------------------------
                             47 ; Function pintar_sprites
                             48 ; ---------------------------------
   41FC                      49 _pintar_sprites::
                             50 ;src/pintar.c:6: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x_jugador, y_jugador);
   41FC 3A 8D 45      [13]   51 	ld	a, (_y_jugador)
   41FF F5            [11]   52 	push	af
   4200 33            [ 6]   53 	inc	sp
   4201 3A 8C 45      [13]   54 	ld	a, (_x_jugador)
   4204 F5            [11]   55 	push	af
   4205 33            [ 6]   56 	inc	sp
   4206 21 00 C0      [10]   57 	ld	hl, #0xc000
   4209 E5            [11]   58 	push	hl
   420A CD 76 45      [17]   59 	call	_cpct_getScreenPtr
                             60 ;src/pintar.c:7: cpct_drawSprite(derecha,pvmem,DERECHA_W,DERECHA_H);
   420D 01 B8 40      [10]   61 	ld	bc, #_derecha+0
   4210 11 02 14      [10]   62 	ld	de, #0x1402
   4213 D5            [11]   63 	push	de
   4214 E5            [11]   64 	push	hl
   4215 C5            [11]   65 	push	bc
   4216 CD 95 43      [17]   66 	call	_cpct_drawSprite
                             67 ;src/pintar.c:8: pvmem=   cpct_getScreenPtr(CPCT_VMEM_START,x_manzana,y_manzana);
   4219 3A 97 45      [13]   68 	ld	a, (_y_manzana)
   421C F5            [11]   69 	push	af
   421D 33            [ 6]   70 	inc	sp
   421E 3A 96 45      [13]   71 	ld	a, (_x_manzana)
   4221 F5            [11]   72 	push	af
   4222 33            [ 6]   73 	inc	sp
   4223 21 00 C0      [10]   74 	ld	hl, #0xc000
   4226 E5            [11]   75 	push	hl
   4227 CD 76 45      [17]   76 	call	_cpct_getScreenPtr
                             77 ;src/pintar.c:9: cpct_drawSprite(manzana,pvmem,MANZANA_W,MANZANA_H);
   422A 01 20 40      [10]   78 	ld	bc, #_manzana+0
   422D 11 02 10      [10]   79 	ld	de, #0x1002
   4230 D5            [11]   80 	push	de
   4231 E5            [11]   81 	push	hl
   4232 C5            [11]   82 	push	bc
   4233 CD 95 43      [17]   83 	call	_cpct_drawSprite
   4236 C9            [10]   84 	ret
                             85 	.area _CODE
                             86 	.area _INITIALIZER
                             87 	.area _CABS (ABS)

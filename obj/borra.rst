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
                             45 ;src/borra.c:4: void borra(){
                             46 ;	---------------------------------
                             47 ; Function borra
                             48 ; ---------------------------------
   40E2                      49 _borra::
                             50 ;src/borra.c:6: pvmem   =   cpct_getScreenPtr(0xc000,x_jugador,y_jugador);
   40E2 3A 8D 45      [13]   51 	ld	a, (_y_jugador)
   40E5 F5            [11]   52 	push	af
   40E6 33            [ 6]   53 	inc	sp
   40E7 3A 8C 45      [13]   54 	ld	a, (_x_jugador)
   40EA F5            [11]   55 	push	af
   40EB 33            [ 6]   56 	inc	sp
   40EC 21 00 C0      [10]   57 	ld	hl, #0xc000
   40EF E5            [11]   58 	push	hl
   40F0 CD 76 45      [17]   59 	call	_cpct_getScreenPtr
                             60 ;src/borra.c:7: cpct_drawSolidBox(pvmem,0,DERECHA_W,DERECHA_H);
   40F3 01 02 14      [10]   61 	ld	bc, #0x1402
   40F6 C5            [11]   62 	push	bc
   40F7 01 00 00      [10]   63 	ld	bc, #0x0000
   40FA C5            [11]   64 	push	bc
   40FB E5            [11]   65 	push	hl
   40FC CD 9D 44      [17]   66 	call	_cpct_drawSolidBox
   40FF C9            [10]   67 	ret
                             68 	.area _CODE
                             69 	.area _INITIALIZER
                             70 	.area _CABS (ABS)

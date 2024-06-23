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
                             11 	.globl _pinta_con_puntero
                             12 	.globl _pintar_sprites
                             13 ;--------------------------------------------------------
                             14 ; special function registers
                             15 ;--------------------------------------------------------
                             16 ;--------------------------------------------------------
                             17 ; ram data
                             18 ;--------------------------------------------------------
                             19 	.area _DATA
                             20 ;--------------------------------------------------------
                             21 ; ram data
                             22 ;--------------------------------------------------------
                             23 	.area _INITIALIZED
                             24 ;--------------------------------------------------------
                             25 ; absolute external ram data
                             26 ;--------------------------------------------------------
                             27 	.area _DABS (ABS)
                             28 ;--------------------------------------------------------
                             29 ; global & static initialisations
                             30 ;--------------------------------------------------------
                             31 	.area _HOME
                             32 	.area _GSINIT
                             33 	.area _GSFINAL
                             34 	.area _GSINIT
                             35 ;--------------------------------------------------------
                             36 ; Home
                             37 ;--------------------------------------------------------
                             38 	.area _HOME
                             39 	.area _HOME
                             40 ;--------------------------------------------------------
                             41 ; code
                             42 ;--------------------------------------------------------
                             43 	.area _CODE
                             44 ;src/sistemas/pintar.c:6: void pintar_sprites(){
                             45 ;	---------------------------------
                             46 ; Function pintar_sprites
                             47 ; ---------------------------------
   8518                      48 _pintar_sprites::
                             49 ;src/sistemas/pintar.c:8: for (i=0;i<3;i++){
   8518 0E 00         [ 7]   50 	ld	c, #0x00
   851A                      51 00102$:
                             52 ;src/sistemas/pintar.c:9: pinta_objeto  = &array[i];
   851A 06 00         [ 7]   53 	ld	b,#0x00
   851C 69            [ 4]   54 	ld	l, c
   851D 60            [ 4]   55 	ld	h, b
   851E 29            [11]   56 	add	hl, hl
   851F 29            [11]   57 	add	hl, hl
   8520 09            [11]   58 	add	hl, bc
   8521 29            [11]   59 	add	hl, hl
   8522 11 35 8E      [10]   60 	ld	de, #_array
   8525 19            [11]   61 	add	hl, de
   8526 22 6F 89      [16]   62 	ld	(_pinta_objeto), hl
                             63 ;src/sistemas/pintar.c:10: pinta_con_puntero();} 
   8529 C5            [11]   64 	push	bc
   852A CD 71 89      [17]   65 	call	_pinta_con_puntero
   852D C1            [10]   66 	pop	bc
                             67 ;src/sistemas/pintar.c:8: for (i=0;i<3;i++){
   852E 0C            [ 4]   68 	inc	c
   852F 79            [ 4]   69 	ld	a, c
   8530 D6 03         [ 7]   70 	sub	a, #0x03
   8532 38 E6         [12]   71 	jr	C,00102$
   8534 C9            [10]   72 	ret
                             73 	.area _CODE
                             74 	.area _INITIALIZER
                             75 	.area _CABS (ABS)

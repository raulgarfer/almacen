                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module puntuacion
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _pinta_marcador
                             12 	.globl _suma_puntos
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
                             44 ;src/sistemas/puntuacion.c:5: void suma_puntos(u8 i){
                             45 ;	---------------------------------
                             46 ; Function suma_puntos
                             47 ; ---------------------------------
   470A                      48 _suma_puntos::
   470A DD E5         [15]   49 	push	ix
   470C DD 21 00 00   [14]   50 	ld	ix,#0
   4710 DD 39         [15]   51 	add	ix,sp
                             52 ;src/sistemas/puntuacion.c:6: puntos++;
   4712 FD 21 31 4D   [14]   53 	ld	iy, #_puntos
   4716 FD 34 00      [23]   54 	inc	0 (iy)
                             55 ;src/sistemas/puntuacion.c:7: if (puntos=='9'+1)
   4719 FD 7E 00      [19]   56 	ld	a, 0 (iy)
   471C D6 3A         [ 7]   57 	sub	a, #0x3a
   471E 20 08         [12]   58 	jr	NZ,00102$
                             59 ;src/sistemas/puntuacion.c:8: {puntos='0';
   4720 FD 36 00 30   [19]   60 	ld	0 (iy), #0x30
                             61 ;src/sistemas/puntuacion.c:9: puntos_decena++;}
   4724 21 AE 4C      [10]   62 	ld	hl, #_puntos_decena+0
   4727 34            [11]   63 	inc	(hl)
   4728                      64 00102$:
                             65 ;src/sistemas/puntuacion.c:10: array[i].x = array[i].x_inicial;
   4728 01 B1 4C      [10]   66 	ld	bc, #_array+0
   472B DD 5E 04      [19]   67 	ld	e,4 (ix)
   472E 16 00         [ 7]   68 	ld	d,#0x00
   4730 6B            [ 4]   69 	ld	l, e
   4731 62            [ 4]   70 	ld	h, d
   4732 29            [11]   71 	add	hl, hl
   4733 29            [11]   72 	add	hl, hl
   4734 19            [11]   73 	add	hl, de
   4735 29            [11]   74 	add	hl, hl
   4736 09            [11]   75 	add	hl, bc
   4737 4D            [ 4]   76 	ld	c, l
   4738 44            [ 4]   77 	ld	b, h
   4739 03            [ 6]   78 	inc	bc
   473A 11 09 00      [10]   79 	ld	de, #0x0009
   473D 19            [11]   80 	add	hl, de
   473E 7E            [ 7]   81 	ld	a, (hl)
   473F 02            [ 7]   82 	ld	(bc), a
                             83 ;src/sistemas/puntuacion.c:11: pinta_marcador();
   4740 DD E1         [14]   84 	pop	ix
   4742 C3 82 46      [10]   85 	jp	_pinta_marcador
                             86 	.area _CODE
                             87 	.area _INITIALIZER
                             88 	.area _CABS (ABS)

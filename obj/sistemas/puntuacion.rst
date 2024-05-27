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
                             11 	.globl _suma_puntos
                             12 ;--------------------------------------------------------
                             13 ; special function registers
                             14 ;--------------------------------------------------------
                             15 ;--------------------------------------------------------
                             16 ; ram data
                             17 ;--------------------------------------------------------
                             18 	.area _DATA
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _INITIALIZED
                             23 ;--------------------------------------------------------
                             24 ; absolute external ram data
                             25 ;--------------------------------------------------------
                             26 	.area _DABS (ABS)
                             27 ;--------------------------------------------------------
                             28 ; global & static initialisations
                             29 ;--------------------------------------------------------
                             30 	.area _HOME
                             31 	.area _GSINIT
                             32 	.area _GSFINAL
                             33 	.area _GSINIT
                             34 ;--------------------------------------------------------
                             35 ; Home
                             36 ;--------------------------------------------------------
                             37 	.area _HOME
                             38 	.area _HOME
                             39 ;--------------------------------------------------------
                             40 ; code
                             41 ;--------------------------------------------------------
                             42 	.area _CODE
                             43 ;src/sistemas/puntuacion.c:5: void suma_puntos(){
                             44 ;	---------------------------------
                             45 ; Function suma_puntos
                             46 ; ---------------------------------
   4379                      47 _suma_puntos::
                             48 ;src/sistemas/puntuacion.c:6: puntos++;
   4379 FD 21 4C 48   [14]   49 	ld	iy, #_puntos
   437D FD 34 00      [23]   50 	inc	0 (iy)
                             51 ;src/sistemas/puntuacion.c:7: if (puntos=='9'+1)
   4380 FD 7E 00      [19]   52 	ld	a, 0 (iy)
   4383 D6 3A         [ 7]   53 	sub	a, #0x3a
   4385 20 08         [12]   54 	jr	NZ,00102$
                             55 ;src/sistemas/puntuacion.c:8: {puntos='0';
   4387 FD 36 00 30   [19]   56 	ld	0 (iy), #0x30
                             57 ;src/sistemas/puntuacion.c:9: puntos_decena++;}
   438B 21 DD 47      [10]   58 	ld	hl, #_puntos_decena+0
   438E 34            [11]   59 	inc	(hl)
   438F                      60 00102$:
                             61 ;src/sistemas/puntuacion.c:10: array[1].x = 60;
   438F 21 FC 47      [10]   62 	ld	hl, #(_array + 0x000a)
   4392 36 3C         [10]   63 	ld	(hl), #0x3c
                             64 ;src/sistemas/puntuacion.c:11: pinta_marcador();
   4394 C3 CA 42      [10]   65 	jp  _pinta_marcador
                             66 	.area _CODE
                             67 	.area _INITIALIZER
                             68 	.area _CABS (ABS)

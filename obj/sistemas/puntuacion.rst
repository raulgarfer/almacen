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
   42FC                      47 _suma_puntos::
                             48 ;src/sistemas/puntuacion.c:6: puntos++;
   42FC FD 21 B1 46   [14]   49 	ld	iy, #_puntos
   4300 FD 34 00      [23]   50 	inc	0 (iy)
                             51 ;src/sistemas/puntuacion.c:7: if (puntos=='9'+1)
   4303 FD 7E 00      [19]   52 	ld	a, 0 (iy)
   4306 D6 3A         [ 7]   53 	sub	a, #0x3a
   4308 20 08         [12]   54 	jr	NZ,00102$
                             55 ;src/sistemas/puntuacion.c:8: {puntos='0';
   430A FD 36 00 30   [19]   56 	ld	0 (iy), #0x30
                             57 ;src/sistemas/puntuacion.c:9: puntos_decena++;}
   430E 21 B0 46      [10]   58 	ld	hl, #_puntos_decena+0
   4311 34            [11]   59 	inc	(hl)
   4312                      60 00102$:
                             61 ;src/sistemas/puntuacion.c:10: x_manzana = x_start_objeto;
   4312 3A A1 46      [13]   62 	ld	a,(#_x_start_objeto + 0)
   4315 32 A2 46      [13]   63 	ld	(#_x_manzana + 0),a
                             64 ;src/sistemas/puntuacion.c:11: pinta_marcador();
   4318 C3 75 42      [10]   65 	jp  _pinta_marcador
                             66 	.area _CODE
                             67 	.area _INITIALIZER
                             68 	.area _CABS (ABS)

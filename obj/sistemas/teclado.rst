                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module teclado
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _cpct_isKeyPressed
                             12 	.globl _cpct_scanKeyboard
                             13 	.globl _teclado
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
                             45 ;src/sistemas/teclado.c:4: void teclado(){
                             46 ;	---------------------------------
                             47 ; Function teclado
                             48 ; ---------------------------------
   431B                      49 _teclado::
                             50 ;src/sistemas/teclado.c:5: vy_jug=0;
   431B 21 9B 46      [10]   51 	ld	hl,#_vy_jug + 0
   431E 36 00         [10]   52 	ld	(hl), #0x00
                             53 ;src/sistemas/teclado.c:6: cpct_scanKeyboard();
   4320 CD 50 46      [17]   54 	call	_cpct_scanKeyboard
                             55 ;src/sistemas/teclado.c:7: if(cpct_isKeyPressed(Key_Q)
   4323 21 08 08      [10]   56 	ld	hl, #0x0808
   4326 CD 34 44      [17]   57 	call	_cpct_isKeyPressed
   4329 7D            [ 4]   58 	ld	a, l
   432A B7            [ 4]   59 	or	a, a
   432B 28 0E         [12]   60 	jr	Z,00102$
                             61 ;src/sistemas/teclado.c:8: && y_jugador>=y_frame_1)
   432D 21 A8 46      [10]   62 	ld	hl, #_y_frame_1
   4330 3A 98 46      [13]   63 	ld	a,(#_y_jugador + 0)
   4333 96            [ 7]   64 	sub	a, (hl)
   4334 38 05         [12]   65 	jr	C,00102$
                             66 ;src/sistemas/teclado.c:9: {vy_jug=-1;}
   4336 21 9B 46      [10]   67 	ld	hl,#_vy_jug + 0
   4339 36 FF         [10]   68 	ld	(hl), #0xff
   433B                      69 00102$:
                             70 ;src/sistemas/teclado.c:10: if(cpct_isKeyPressed(Key_A)
   433B 21 08 20      [10]   71 	ld	hl, #0x2008
   433E CD 34 44      [17]   72 	call	_cpct_isKeyPressed
   4341 7D            [ 4]   73 	ld	a, l
   4342 B7            [ 4]   74 	or	a, a
   4343 C8            [11]   75 	ret	Z
                             76 ;src/sistemas/teclado.c:11: && y_jugador<=y_frame_4)
   4344 3A AB 46      [13]   77 	ld	a, (#_y_frame_4)
   4347 FD 21 98 46   [14]   78 	ld	iy, #_y_jugador
   434B FD 96 00      [19]   79 	sub	a, 0 (iy)
   434E D8            [11]   80 	ret	C
                             81 ;src/sistemas/teclado.c:12: {vy_jug=1;}
   434F 21 9B 46      [10]   82 	ld	hl,#_vy_jug + 0
   4352 36 01         [10]   83 	ld	(hl), #0x01
   4354 C9            [10]   84 	ret
                             85 	.area _CODE
                             86 	.area _INITIALIZER
                             87 	.area _CABS (ABS)

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
   4390                      49 _teclado::
                             50 ;src/sistemas/teclado.c:5: vy_jug=0;
   4390 21 C2 47      [10]   51 	ld	hl,#_vy_jug + 0
   4393 36 00         [10]   52 	ld	(hl), #0x00
                             53 ;src/sistemas/teclado.c:6: cpct_scanKeyboard();
   4395 CD 77 47      [17]   54 	call	_cpct_scanKeyboard
                             55 ;src/sistemas/teclado.c:7: if(cpct_isKeyPressed(Key_Q)
   4398 21 08 08      [10]   56 	ld	hl, #0x0808
   439B CD 03 45      [17]   57 	call	_cpct_isKeyPressed
   439E 7D            [ 4]   58 	ld	a, l
   439F B7            [ 4]   59 	or	a, a
   43A0 28 0C         [12]   60 	jr	Z,00102$
                             61 ;src/sistemas/teclado.c:8: && y_jugador>=y_frame_1)
   43A2 3A BF 47      [13]   62 	ld	a,(#_y_jugador + 0)
   43A5 D6 14         [ 7]   63 	sub	a, #0x14
   43A7 38 05         [12]   64 	jr	C,00102$
                             65 ;src/sistemas/teclado.c:9: {vy_jug=-1;}
   43A9 21 C2 47      [10]   66 	ld	hl,#_vy_jug + 0
   43AC 36 FF         [10]   67 	ld	(hl), #0xff
   43AE                      68 00102$:
                             69 ;src/sistemas/teclado.c:10: if(cpct_isKeyPressed(Key_A)
   43AE 21 08 20      [10]   70 	ld	hl, #0x2008
   43B1 CD 03 45      [17]   71 	call	_cpct_isKeyPressed
   43B4 7D            [ 4]   72 	ld	a, l
   43B5 B7            [ 4]   73 	or	a, a
   43B6 C8            [11]   74 	ret	Z
                             75 ;src/sistemas/teclado.c:11: && y_jugador<=y_frame_4)
   43B7 3E AA         [ 7]   76 	ld	a, #0xaa
   43B9 FD 21 BF 47   [14]   77 	ld	iy, #_y_jugador
   43BD FD 96 00      [19]   78 	sub	a, 0 (iy)
   43C0 D8            [11]   79 	ret	C
                             80 ;src/sistemas/teclado.c:12: {vy_jug=1;}
   43C1 21 C2 47      [10]   81 	ld	hl,#_vy_jug + 0
   43C4 36 01         [10]   82 	ld	(hl), #0x01
   43C6 C9            [10]   83 	ret
                             84 	.area _CODE
                             85 	.area _INITIALIZER
                             86 	.area _CABS (ABS)

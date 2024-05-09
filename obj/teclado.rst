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
                             45 ;src/teclado.c:4: void teclado(){
                             46 ;	---------------------------------
                             47 ; Function teclado
                             48 ; ---------------------------------
   4237                      49 _teclado::
                             50 ;src/teclado.c:5: vy_jug=0;
   4237 21 90 45      [10]   51 	ld	hl,#_vy_jug + 0
   423A 36 00         [10]   52 	ld	(hl), #0x00
                             53 ;src/teclado.c:6: cpct_scanKeyboard();
   423C CD 45 45      [17]   54 	call	_cpct_scanKeyboard
                             55 ;src/teclado.c:7: if(cpct_isKeyPressed(Key_Q)
   423F 21 08 08      [10]   56 	ld	hl, #0x0808
   4242 CD 50 43      [17]   57 	call	_cpct_isKeyPressed
   4245 7D            [ 4]   58 	ld	a, l
   4246 B7            [ 4]   59 	or	a, a
   4247 28 0E         [12]   60 	jr	Z,00102$
                             61 ;src/teclado.c:8: && y_jugador>=y_frame_1)
   4249 21 9B 45      [10]   62 	ld	hl, #_y_frame_1
   424C 3A 8D 45      [13]   63 	ld	a,(#_y_jugador + 0)
   424F 96            [ 7]   64 	sub	a, (hl)
   4250 38 05         [12]   65 	jr	C,00102$
                             66 ;src/teclado.c:9: {vy_jug=-1;}
   4252 21 90 45      [10]   67 	ld	hl,#_vy_jug + 0
   4255 36 FF         [10]   68 	ld	(hl), #0xff
   4257                      69 00102$:
                             70 ;src/teclado.c:10: if(cpct_isKeyPressed(Key_A)
   4257 21 08 20      [10]   71 	ld	hl, #0x2008
   425A CD 50 43      [17]   72 	call	_cpct_isKeyPressed
   425D 7D            [ 4]   73 	ld	a, l
   425E B7            [ 4]   74 	or	a, a
   425F C8            [11]   75 	ret	Z
                             76 ;src/teclado.c:11: && y_jugador<=y_frame_4)
   4260 3A 9E 45      [13]   77 	ld	a, (#_y_frame_4)
   4263 FD 21 8D 45   [14]   78 	ld	iy, #_y_jugador
   4267 FD 96 00      [19]   79 	sub	a, 0 (iy)
   426A D8            [11]   80 	ret	C
                             81 ;src/teclado.c:12: {vy_jug=1;}
   426B 21 90 45      [10]   82 	ld	hl,#_vy_jug + 0
   426E 36 01         [10]   83 	ld	(hl), #0x01
   4270 C9            [10]   84 	ret
                             85 	.area _CODE
                             86 	.area _INITIALIZER
                             87 	.area _CABS (ABS)

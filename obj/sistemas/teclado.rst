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
   8763                      49 _teclado::
                             50 ;src/sistemas/teclado.c:5: comprueba_que_arriba_no_este_pulsada();
   8763 CD 63 88      [17]   51 	call	_comprueba_que_arriba_no_este_pulsada
                             52 ;src/sistemas/teclado.c:6: cpct_scanKeyboard();
   8766 CD 14 95      [17]   53 	call	_cpct_scanKeyboard
                             54 ;src/sistemas/teclado.c:7: if(cpct_isKeyPressed(Key_Q) 
   8769 21 08 08      [10]   55 	ld	hl, #0x0808
   876C CD 5E 89      [17]   56 	call	_cpct_isKeyPressed
   876F 7D            [ 4]   57 	ld	a, l
   8770 B7            [ 4]   58 	or	a, a
   8771 28 0E         [12]   59 	jr	Z,00102$
                             60 ;src/sistemas/teclado.c:8: && array[0].y>=y_frame_1)
   8773 3A 86 95      [13]   61 	ld	a, (#_array + 2)
   8776 D6 0A         [ 7]   62 	sub	a, #0x0a
   8778 38 07         [12]   63 	jr	C,00102$
                             64 ;src/sistemas/teclado.c:9: {array[0].vy+=-1;}
   877A 01 88 95      [10]   65 	ld	bc, #_array + 4
   877D 0A            [ 7]   66 	ld	a, (bc)
   877E C6 FF         [ 7]   67 	add	a, #0xff
   8780 02            [ 7]   68 	ld	(bc), a
   8781                      69 00102$:
                             70 ;src/sistemas/teclado.c:10: if(cpct_isKeyPressed(Key_A)
   8781 21 08 20      [10]   71 	ld	hl, #0x2008
   8784 CD 5E 89      [17]   72 	call	_cpct_isKeyPressed
   8787 7D            [ 4]   73 	ld	a, l
   8788 B7            [ 4]   74 	or	a, a
   8789 28 0F         [12]   75 	jr	Z,00105$
                             76 ;src/sistemas/teclado.c:11: && array[0].y<=y_frame_4)
   878B 21 86 95      [10]   77 	ld	hl, #_array + 2
   878E 4E            [ 7]   78 	ld	c, (hl)
   878F 3E 96         [ 7]   79 	ld	a, #0x96
   8791 91            [ 4]   80 	sub	a, c
   8792 38 06         [12]   81 	jr	C,00105$
                             82 ;src/sistemas/teclado.c:12: {array[0].vy+=1;}   
   8794 01 88 95      [10]   83 	ld	bc, #_array + 4
   8797 0A            [ 7]   84 	ld	a, (bc)
   8798 3C            [ 4]   85 	inc	a
   8799 02            [ 7]   86 	ld	(bc), a
   879A                      87 00105$:
                             88 ;src/sistemas/teclado.c:13: if (cpct_isKeyPressed(Key_Esc))
   879A 21 08 04      [10]   89 	ld	hl, #0x0408
   879D CD 5E 89      [17]   90 	call	_cpct_isKeyPressed
   87A0 7D            [ 4]   91 	ld	a, l
   87A1 B7            [ 4]   92 	or	a, a
   87A2 C8            [11]   93 	ret	Z
                             94 ;src/sistemas/teclado.c:14: {inicia();}   
   87A3 C3 1C 83      [10]   95 	jp  _inicia
                             96 	.area _CODE
                             97 	.area _INITIALIZER
                             98 	.area _CABS (ABS)

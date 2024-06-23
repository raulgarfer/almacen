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
   8570                      49 _teclado::
                             50 ;src/sistemas/teclado.c:5: comprueba_que_arriba_no_este_pulsada();
   8570 CD 83 88      [17]   51 	call	_comprueba_que_arriba_no_este_pulsada
                             52 ;src/sistemas/teclado.c:6: cpct_scanKeyboard();
   8573 CD C5 8D      [17]   53 	call	_cpct_scanKeyboard
                             54 ;src/sistemas/teclado.c:7: if(cpct_isKeyPressed(Key_Q) 
   8576 21 08 08      [10]   55 	ld	hl, #0x0808
   8579 CD 93 89      [17]   56 	call	_cpct_isKeyPressed
   857C 7D            [ 4]   57 	ld	a, l
   857D B7            [ 4]   58 	or	a, a
   857E 28 0E         [12]   59 	jr	Z,00102$
                             60 ;src/sistemas/teclado.c:8: && array[0].y>=y_frame_1)
   8580 3A 37 8E      [13]   61 	ld	a, (#_array + 2)
   8583 D6 0A         [ 7]   62 	sub	a, #0x0a
   8585 38 07         [12]   63 	jr	C,00102$
                             64 ;src/sistemas/teclado.c:9: {array[0].vy+=-1;}
   8587 01 39 8E      [10]   65 	ld	bc, #_array + 4
   858A 0A            [ 7]   66 	ld	a, (bc)
   858B C6 FF         [ 7]   67 	add	a, #0xff
   858D 02            [ 7]   68 	ld	(bc), a
   858E                      69 00102$:
                             70 ;src/sistemas/teclado.c:10: if(cpct_isKeyPressed(Key_A)
   858E 21 08 20      [10]   71 	ld	hl, #0x2008
   8591 CD 93 89      [17]   72 	call	_cpct_isKeyPressed
   8594 7D            [ 4]   73 	ld	a, l
   8595 B7            [ 4]   74 	or	a, a
   8596 28 0F         [12]   75 	jr	Z,00105$
                             76 ;src/sistemas/teclado.c:11: && array[0].y<=y_frame_4)
   8598 21 37 8E      [10]   77 	ld	hl, #_array + 2
   859B 4E            [ 7]   78 	ld	c, (hl)
   859C 3E 96         [ 7]   79 	ld	a, #0x96
   859E 91            [ 4]   80 	sub	a, c
   859F 38 06         [12]   81 	jr	C,00105$
                             82 ;src/sistemas/teclado.c:12: {array[0].vy+=1;}   
   85A1 01 39 8E      [10]   83 	ld	bc, #_array + 4
   85A4 0A            [ 7]   84 	ld	a, (bc)
   85A5 3C            [ 4]   85 	inc	a
   85A6 02            [ 7]   86 	ld	(bc), a
   85A7                      87 00105$:
                             88 ;src/sistemas/teclado.c:13: if (cpct_isKeyPressed(Key_Esc))
   85A7 21 08 04      [10]   89 	ld	hl, #0x0408
   85AA CD 93 89      [17]   90 	call	_cpct_isKeyPressed
   85AD 7D            [ 4]   91 	ld	a, l
   85AE B7            [ 4]   92 	or	a, a
   85AF C8            [11]   93 	ret	Z
                             94 ;src/sistemas/teclado.c:14: {inicia();}   
   85B0 C3 25 81      [10]   95 	jp  _inicia
                             96 	.area _CODE
                             97 	.area _INITIALIZER
                             98 	.area _CABS (ABS)

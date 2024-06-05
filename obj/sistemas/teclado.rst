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
   485C                      49 _teclado::
                             50 ;src/sistemas/teclado.c:5: array[0].vy=0;
   485C 21 53 4D      [10]   51 	ld	hl, #(_array + 0x0004)
   485F 36 00         [10]   52 	ld	(hl), #0x00
                             53 ;src/sistemas/teclado.c:6: cpct_scanKeyboard();
   4861 CD DF 4C      [17]   54 	call	_cpct_scanKeyboard
                             55 ;src/sistemas/teclado.c:7: if(cpct_isKeyPressed(Key_Q)
   4864 21 08 08      [10]   56 	ld	hl, #0x0808
   4867 CD F0 49      [17]   57 	call	_cpct_isKeyPressed
                             58 ;src/sistemas/teclado.c:8: && array[0].y>=y_frame_1)
                             59 ;src/sistemas/teclado.c:7: if(cpct_isKeyPressed(Key_Q)
   486A 7D            [ 4]   60 	ld	a, l
   486B B7            [ 4]   61 	or	a, a
   486C 28 0C         [12]   62 	jr	Z,00102$
                             63 ;src/sistemas/teclado.c:8: && array[0].y>=y_frame_1)
   486E 3A 51 4D      [13]   64 	ld	a, (#(_array + 0x0002) + 0)
   4871 D6 0A         [ 7]   65 	sub	a, #0x0a
   4873 38 05         [12]   66 	jr	C,00102$
                             67 ;src/sistemas/teclado.c:9: {array[0].vy=-1;}
   4875 21 53 4D      [10]   68 	ld	hl, #(_array + 0x0004)
   4878 36 FF         [10]   69 	ld	(hl), #0xff
   487A                      70 00102$:
                             71 ;src/sistemas/teclado.c:10: if(cpct_isKeyPressed(Key_A)
   487A 21 08 20      [10]   72 	ld	hl, #0x2008
   487D CD F0 49      [17]   73 	call	_cpct_isKeyPressed
   4880 7D            [ 4]   74 	ld	a, l
   4881 B7            [ 4]   75 	or	a, a
   4882 C8            [11]   76 	ret	Z
                             77 ;src/sistemas/teclado.c:11: && array[0].y<=y_frame_4)
   4883 21 51 4D      [10]   78 	ld	hl, #(_array + 0x0002) + 0
   4886 4E            [ 7]   79 	ld	c, (hl)
   4887 3E 96         [ 7]   80 	ld	a, #0x96
   4889 91            [ 4]   81 	sub	a, c
   488A D8            [11]   82 	ret	C
                             83 ;src/sistemas/teclado.c:12: {array[0].vy=1;}
   488B 21 53 4D      [10]   84 	ld	hl, #(_array + 0x0004)
   488E 36 01         [10]   85 	ld	(hl), #0x01
   4890 C9            [10]   86 	ret
                             87 	.area _CODE
                             88 	.area _INITIALIZER
                             89 	.area _CABS (ABS)

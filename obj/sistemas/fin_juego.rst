                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module fin_juego
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _pinta_puntos
                             12 	.globl _a_jugar
                             13 	.globl _cpct_getScreenPtr
                             14 	.globl _cpct_drawStringM2
                             15 	.globl _cpct_memset_f64
                             16 	.globl _muere
                             17 	.globl _fin_juego
                             18 	.globl _espera_pulsacion_tecla
                             19 	.globl _espera_pulsar
                             20 ;--------------------------------------------------------
                             21 ; special function registers
                             22 ;--------------------------------------------------------
                             23 ;--------------------------------------------------------
                             24 ; ram data
                             25 ;--------------------------------------------------------
                             26 	.area _DATA
                             27 ;--------------------------------------------------------
                             28 ; ram data
                             29 ;--------------------------------------------------------
                             30 	.area _INITIALIZED
                             31 ;--------------------------------------------------------
                             32 ; absolute external ram data
                             33 ;--------------------------------------------------------
                             34 	.area _DABS (ABS)
                             35 ;--------------------------------------------------------
                             36 ; global & static initialisations
                             37 ;--------------------------------------------------------
                             38 	.area _HOME
                             39 	.area _GSINIT
                             40 	.area _GSFINAL
                             41 	.area _GSINIT
                             42 ;--------------------------------------------------------
                             43 ; Home
                             44 ;--------------------------------------------------------
                             45 	.area _HOME
                             46 	.area _HOME
                             47 ;--------------------------------------------------------
                             48 ; code
                             49 ;--------------------------------------------------------
                             50 	.area _CODE
                             51 ;src/sistemas/fin_juego.c:4: void muere(u8 i){
                             52 ;	---------------------------------
                             53 ; Function muere
                             54 ; ---------------------------------
   45A3                      55 _muere::
   45A3 DD E5         [15]   56 	push	ix
   45A5 DD 21 00 00   [14]   57 	ld	ix,#0
   45A9 DD 39         [15]   58 	add	ix,sp
                             59 ;src/sistemas/fin_juego.c:5: vidas--;
   45AB 21 4E 4D      [10]   60 	ld	hl, #_vidas+0
   45AE 35            [11]   61 	dec	(hl)
                             62 ;src/sistemas/fin_juego.c:6: array[i].x = array[i].x_inicial;
   45AF 01 4F 4D      [10]   63 	ld	bc, #_array+0
   45B2 DD 5E 04      [19]   64 	ld	e,4 (ix)
   45B5 16 00         [ 7]   65 	ld	d,#0x00
   45B7 6B            [ 4]   66 	ld	l, e
   45B8 62            [ 4]   67 	ld	h, d
   45B9 29            [11]   68 	add	hl, hl
   45BA 29            [11]   69 	add	hl, hl
   45BB 19            [11]   70 	add	hl, de
   45BC 29            [11]   71 	add	hl, hl
   45BD 09            [11]   72 	add	hl, bc
   45BE 4D            [ 4]   73 	ld	c, l
   45BF 44            [ 4]   74 	ld	b, h
   45C0 03            [ 6]   75 	inc	bc
   45C1 11 09 00      [10]   76 	ld	de, #0x0009
   45C4 19            [11]   77 	add	hl, de
   45C5 7E            [ 7]   78 	ld	a, (hl)
   45C6 02            [ 7]   79 	ld	(bc), a
                             80 ;src/sistemas/fin_juego.c:7: pinta_puntos();
   45C7 CD CB 47      [17]   81 	call	_pinta_puntos
                             82 ;src/sistemas/fin_juego.c:8: if (vidas=='0')
   45CA 3A 4E 4D      [13]   83 	ld	a,(#_vidas + 0)
   45CD D6 30         [ 7]   84 	sub	a, #0x30
   45CF 20 03         [12]   85 	jr	NZ,00103$
                             86 ;src/sistemas/fin_juego.c:9: {fin_juego();}
   45D1 CD D7 45      [17]   87 	call	_fin_juego
   45D4                      88 00103$:
   45D4 DD E1         [14]   89 	pop	ix
   45D6 C9            [10]   90 	ret
                             91 ;src/sistemas/fin_juego.c:11: void fin_juego(){
                             92 ;	---------------------------------
                             93 ; Function fin_juego
                             94 ; ---------------------------------
   45D7                      95 _fin_juego::
                             96 ;src/sistemas/fin_juego.c:13: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,20);
   45D7 2A 38 4D      [16]   97 	ld	hl, (_vmem_ahora)
   45DA 01 0A 14      [10]   98 	ld	bc, #0x140a
   45DD C5            [11]   99 	push	bc
   45DE E5            [11]  100 	push	hl
   45DF CD 10 4D      [17]  101 	call	_cpct_getScreenPtr
                            102 ;src/sistemas/fin_juego.c:14: cpct_drawStringM2("Has sido despedido!",pvmem);
   45E2 01 04 46      [10]  103 	ld	bc, #___str_0+0
   45E5 E5            [11]  104 	push	hl
   45E6 C5            [11]  105 	push	bc
   45E7 CD 7C 4A      [17]  106 	call	_cpct_drawStringM2
                            107 ;src/sistemas/fin_juego.c:15: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,40);
   45EA 2A 38 4D      [16]  108 	ld	hl, (_vmem_ahora)
   45ED 01 0A 28      [10]  109 	ld	bc, #0x280a
   45F0 C5            [11]  110 	push	bc
   45F1 E5            [11]  111 	push	hl
   45F2 CD 10 4D      [17]  112 	call	_cpct_getScreenPtr
                            113 ;src/sistemas/fin_juego.c:16: cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
   45F5 01 18 46      [10]  114 	ld	bc, #___str_1+0
   45F8 E5            [11]  115 	push	hl
   45F9 C5            [11]  116 	push	bc
   45FA CD 7C 4A      [17]  117 	call	_cpct_drawStringM2
                            118 ;src/sistemas/fin_juego.c:17: espera_pulsacion_tecla();
   45FD CD 2D 46      [17]  119 	call	_espera_pulsacion_tecla
                            120 ;src/sistemas/fin_juego.c:18: espera_pulsar();
   4600 CD 3E 46      [17]  121 	call	_espera_pulsar
   4603 C9            [10]  122 	ret
   4604                     123 ___str_0:
   4604 48 61 73 20 73 69   124 	.ascii "Has sido despedido!"
        64 6F 20 64 65 73
        70 65 64 69 64 6F
        21
   4617 00                  125 	.db 0x00
   4618                     126 ___str_1:
   4618 56 75 65 6C 76 65   127 	.ascii "Vuelve a intentarlo."
        20 61 20 69 6E 74
        65 6E 74 61 72 6C
        6F 2E
   462C 00                  128 	.db 0x00
                            129 ;src/sistemas/fin_juego.c:20: void espera_pulsacion_tecla(){
                            130 ;	---------------------------------
                            131 ; Function espera_pulsacion_tecla
                            132 ; ---------------------------------
   462D                     133 _espera_pulsacion_tecla::
                            134 ;src/sistemas/fin_juego.c:21: espera_pulsacion_alguna_tecla();
   462D CD 1C 49      [17]  135 	call	_espera_pulsacion_alguna_tecla
                            136 ;src/sistemas/fin_juego.c:22: cpct_clearScreen_f64 (0);
   4630 21 00 40      [10]  137 	ld	hl, #0x4000
   4633 E5            [11]  138 	push	hl
   4634 26 00         [ 7]  139 	ld	h, #0x00
   4636 E5            [11]  140 	push	hl
   4637 26 C0         [ 7]  141 	ld	h, #0xc0
   4639 E5            [11]  142 	push	hl
   463A CD 96 4B      [17]  143 	call	_cpct_memset_f64
   463D C9            [10]  144 	ret
                            145 ;src/sistemas/fin_juego.c:24: void espera_pulsar(){
                            146 ;	---------------------------------
                            147 ; Function espera_pulsar
                            148 ; ---------------------------------
   463E                     149 _espera_pulsar::
                            150 ;src/sistemas/fin_juego.c:25: a_jugar();}
   463E C3 58 44      [10]  151 	jp  _a_jugar
                            152 	.area _CODE
                            153 	.area _INITIALIZER
                            154 	.area _CABS (ABS)

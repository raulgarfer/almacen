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
   4612                      55 _muere::
   4612 DD E5         [15]   56 	push	ix
   4614 DD 21 00 00   [14]   57 	ld	ix,#0
   4618 DD 39         [15]   58 	add	ix,sp
                             59 ;src/sistemas/fin_juego.c:5: vidas--;
   461A 21 26 56      [10]   60 	ld	hl, #_vidas+0
   461D 35            [11]   61 	dec	(hl)
                             62 ;src/sistemas/fin_juego.c:6: array[i].x = array[i].x_inicial;
   461E 01 27 56      [10]   63 	ld	bc, #_array+0
   4621 DD 5E 04      [19]   64 	ld	e,4 (ix)
   4624 16 00         [ 7]   65 	ld	d,#0x00
   4626 6B            [ 4]   66 	ld	l, e
   4627 62            [ 4]   67 	ld	h, d
   4628 29            [11]   68 	add	hl, hl
   4629 29            [11]   69 	add	hl, hl
   462A 19            [11]   70 	add	hl, de
   462B 29            [11]   71 	add	hl, hl
   462C 09            [11]   72 	add	hl, bc
   462D 4D            [ 4]   73 	ld	c, l
   462E 44            [ 4]   74 	ld	b, h
   462F 03            [ 6]   75 	inc	bc
   4630 11 09 00      [10]   76 	ld	de, #0x0009
   4633 19            [11]   77 	add	hl, de
   4634 7E            [ 7]   78 	ld	a, (hl)
   4635 02            [ 7]   79 	ld	(bc), a
                             80 ;src/sistemas/fin_juego.c:7: pinta_puntos();
   4636 CD 44 48      [17]   81 	call	_pinta_puntos
                             82 ;src/sistemas/fin_juego.c:8: if (vidas=='0')
   4639 3A 26 56      [13]   83 	ld	a,(#_vidas + 0)
   463C D6 30         [ 7]   84 	sub	a, #0x30
   463E 20 03         [12]   85 	jr	NZ,00103$
                             86 ;src/sistemas/fin_juego.c:9: {fin_juego();}
   4640 CD 46 46      [17]   87 	call	_fin_juego
   4643                      88 00103$:
   4643 DD E1         [14]   89 	pop	ix
   4645 C9            [10]   90 	ret
                             91 ;src/sistemas/fin_juego.c:11: void fin_juego(){
                             92 ;	---------------------------------
                             93 ; Function fin_juego
                             94 ; ---------------------------------
   4646                      95 _fin_juego::
                             96 ;src/sistemas/fin_juego.c:13: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,20);
   4646 2A 10 56      [16]   97 	ld	hl, (_vmem_ahora)
   4649 01 0A 14      [10]   98 	ld	bc, #0x140a
   464C C5            [11]   99 	push	bc
   464D E5            [11]  100 	push	hl
   464E CD E8 55      [17]  101 	call	_cpct_getScreenPtr
                            102 ;src/sistemas/fin_juego.c:14: cpct_drawStringM2("Has sido despedido!",pvmem);
   4651 01 73 46      [10]  103 	ld	bc, #___str_0+0
   4654 E5            [11]  104 	push	hl
   4655 C5            [11]  105 	push	bc
   4656 CD 2B 4B      [17]  106 	call	_cpct_drawStringM2
                            107 ;src/sistemas/fin_juego.c:15: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,40);
   4659 2A 10 56      [16]  108 	ld	hl, (_vmem_ahora)
   465C 01 0A 28      [10]  109 	ld	bc, #0x280a
   465F C5            [11]  110 	push	bc
   4660 E5            [11]  111 	push	hl
   4661 CD E8 55      [17]  112 	call	_cpct_getScreenPtr
                            113 ;src/sistemas/fin_juego.c:16: cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
   4664 01 87 46      [10]  114 	ld	bc, #___str_1+0
   4667 E5            [11]  115 	push	hl
   4668 C5            [11]  116 	push	bc
   4669 CD 2B 4B      [17]  117 	call	_cpct_drawStringM2
                            118 ;src/sistemas/fin_juego.c:17: espera_pulsacion_tecla();
   466C CD 9C 46      [17]  119 	call	_espera_pulsacion_tecla
                            120 ;src/sistemas/fin_juego.c:18: espera_pulsar();
   466F CD AD 46      [17]  121 	call	_espera_pulsar
   4672 C9            [10]  122 	ret
   4673                     123 ___str_0:
   4673 48 61 73 20 73 69   124 	.ascii "Has sido despedido!"
        64 6F 20 64 65 73
        70 65 64 69 64 6F
        21
   4686 00                  125 	.db 0x00
   4687                     126 ___str_1:
   4687 56 75 65 6C 76 65   127 	.ascii "Vuelve a intentarlo."
        20 61 20 69 6E 74
        65 6E 74 61 72 6C
        6F 2E
   469B 00                  128 	.db 0x00
                            129 ;src/sistemas/fin_juego.c:20: void espera_pulsacion_tecla(){
                            130 ;	---------------------------------
                            131 ; Function espera_pulsacion_tecla
                            132 ; ---------------------------------
   469C                     133 _espera_pulsacion_tecla::
                            134 ;src/sistemas/fin_juego.c:21: espera_pulsacion_alguna_tecla();
   469C CD 9D 49      [17]  135 	call	_espera_pulsacion_alguna_tecla
                            136 ;src/sistemas/fin_juego.c:22: cpct_clearScreen_f64 (0);
   469F 21 00 40      [10]  137 	ld	hl, #0x4000
   46A2 E5            [11]  138 	push	hl
   46A3 26 00         [ 7]  139 	ld	h, #0x00
   46A5 E5            [11]  140 	push	hl
   46A6 26 C0         [ 7]  141 	ld	h, #0xc0
   46A8 E5            [11]  142 	push	hl
   46A9 CD 45 4C      [17]  143 	call	_cpct_memset_f64
   46AC C9            [10]  144 	ret
                            145 ;src/sistemas/fin_juego.c:24: void espera_pulsar(){
                            146 ;	---------------------------------
                            147 ; Function espera_pulsar
                            148 ; ---------------------------------
   46AD                     149 _espera_pulsar::
                            150 ;src/sistemas/fin_juego.c:25: a_jugar();}
   46AD C3 B0 44      [10]  151 	jp  _a_jugar
                            152 	.area _CODE
                            153 	.area _INITIALIZER
                            154 	.area _CABS (ABS)

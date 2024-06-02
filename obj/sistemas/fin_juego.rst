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
   44D3                      55 _muere::
   44D3 DD E5         [15]   56 	push	ix
   44D5 DD 21 00 00   [14]   57 	ld	ix,#0
   44D9 DD 39         [15]   58 	add	ix,sp
                             59 ;src/sistemas/fin_juego.c:5: vidas--;
   44DB 21 B0 4C      [10]   60 	ld	hl, #_vidas+0
   44DE 35            [11]   61 	dec	(hl)
                             62 ;src/sistemas/fin_juego.c:6: array[i].x = array[i].x_inicial;
   44DF 01 B1 4C      [10]   63 	ld	bc, #_array+0
   44E2 DD 5E 04      [19]   64 	ld	e,4 (ix)
   44E5 16 00         [ 7]   65 	ld	d,#0x00
   44E7 6B            [ 4]   66 	ld	l, e
   44E8 62            [ 4]   67 	ld	h, d
   44E9 29            [11]   68 	add	hl, hl
   44EA 29            [11]   69 	add	hl, hl
   44EB 19            [11]   70 	add	hl, de
   44EC 29            [11]   71 	add	hl, hl
   44ED 09            [11]   72 	add	hl, bc
   44EE 4D            [ 4]   73 	ld	c, l
   44EF 44            [ 4]   74 	ld	b, h
   44F0 03            [ 6]   75 	inc	bc
   44F1 11 09 00      [10]   76 	ld	de, #0x0009
   44F4 19            [11]   77 	add	hl, de
   44F5 7E            [ 7]   78 	ld	a, (hl)
   44F6 02            [ 7]   79 	ld	(bc), a
                             80 ;src/sistemas/fin_juego.c:7: pinta_puntos();
   44F7 CD B4 46      [17]   81 	call	_pinta_puntos
                             82 ;src/sistemas/fin_juego.c:8: if (vidas=='0')
   44FA 3A B0 4C      [13]   83 	ld	a,(#_vidas + 0)
   44FD D6 30         [ 7]   84 	sub	a, #0x30
   44FF 20 03         [12]   85 	jr	NZ,00103$
                             86 ;src/sistemas/fin_juego.c:9: {fin_juego();}
   4501 CD 07 45      [17]   87 	call	_fin_juego
   4504                      88 00103$:
   4504 DD E1         [14]   89 	pop	ix
   4506 C9            [10]   90 	ret
                             91 ;src/sistemas/fin_juego.c:11: void fin_juego(){
                             92 ;	---------------------------------
                             93 ; Function fin_juego
                             94 ; ---------------------------------
   4507                      95 _fin_juego::
                             96 ;src/sistemas/fin_juego.c:13: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,20);
   4507 2A 9A 4C      [16]   97 	ld	hl, (_vmem_ahora)
   450A 01 0A 14      [10]   98 	ld	bc, #0x140a
   450D C5            [11]   99 	push	bc
   450E E5            [11]  100 	push	hl
   450F CD 72 4C      [17]  101 	call	_cpct_getScreenPtr
                            102 ;src/sistemas/fin_juego.c:14: cpct_drawStringM2("Has sido despedido!",pvmem);
   4512 01 34 45      [10]  103 	ld	bc, #___str_0+0
   4515 E5            [11]  104 	push	hl
   4516 C5            [11]  105 	push	bc
   4517 CD DE 49      [17]  106 	call	_cpct_drawStringM2
                            107 ;src/sistemas/fin_juego.c:15: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,40);
   451A 2A 9A 4C      [16]  108 	ld	hl, (_vmem_ahora)
   451D 01 0A 28      [10]  109 	ld	bc, #0x280a
   4520 C5            [11]  110 	push	bc
   4521 E5            [11]  111 	push	hl
   4522 CD 72 4C      [17]  112 	call	_cpct_getScreenPtr
                            113 ;src/sistemas/fin_juego.c:16: cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
   4525 01 48 45      [10]  114 	ld	bc, #___str_1+0
   4528 E5            [11]  115 	push	hl
   4529 C5            [11]  116 	push	bc
   452A CD DE 49      [17]  117 	call	_cpct_drawStringM2
                            118 ;src/sistemas/fin_juego.c:17: espera_pulsacion_tecla();
   452D CD 5D 45      [17]  119 	call	_espera_pulsacion_tecla
                            120 ;src/sistemas/fin_juego.c:18: espera_pulsar();
   4530 CD 6E 45      [17]  121 	call	_espera_pulsar
   4533 C9            [10]  122 	ret
   4534                     123 ___str_0:
   4534 48 61 73 20 73 69   124 	.ascii "Has sido despedido!"
        64 6F 20 64 65 73
        70 65 64 69 64 6F
        21
   4547 00                  125 	.db 0x00
   4548                     126 ___str_1:
   4548 56 75 65 6C 76 65   127 	.ascii "Vuelve a intentarlo."
        20 61 20 69 6E 74
        65 6E 74 61 72 6C
        6F 2E
   455C 00                  128 	.db 0x00
                            129 ;src/sistemas/fin_juego.c:20: void espera_pulsacion_tecla(){
                            130 ;	---------------------------------
                            131 ; Function espera_pulsacion_tecla
                            132 ; ---------------------------------
   455D                     133 _espera_pulsacion_tecla::
                            134 ;src/sistemas/fin_juego.c:21: espera_pulsacion_alguna_tecla();
   455D CD 45 48      [17]  135 	call	_espera_pulsacion_alguna_tecla
                            136 ;src/sistemas/fin_juego.c:22: cpct_clearScreen_f64 (0);
   4560 21 00 40      [10]  137 	ld	hl, #0x4000
   4563 E5            [11]  138 	push	hl
   4564 26 00         [ 7]  139 	ld	h, #0x00
   4566 E5            [11]  140 	push	hl
   4567 26 C0         [ 7]  141 	ld	h, #0xc0
   4569 E5            [11]  142 	push	hl
   456A CD F8 4A      [17]  143 	call	_cpct_memset_f64
   456D C9            [10]  144 	ret
                            145 ;src/sistemas/fin_juego.c:24: void espera_pulsar(){
                            146 ;	---------------------------------
                            147 ; Function espera_pulsar
                            148 ; ---------------------------------
   456E                     149 _espera_pulsar::
                            150 ;src/sistemas/fin_juego.c:25: a_jugar();}
   456E C3 8D 43      [10]  151 	jp  _a_jugar
                            152 	.area _CODE
                            153 	.area _INITIALIZER
                            154 	.area _CABS (ABS)

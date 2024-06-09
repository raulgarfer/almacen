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
   4610                      55 _muere::
                             56 ;src/sistemas/fin_juego.c:5: vidas--;
   4610 21 09 56      [10]   57 	ld	hl, #_vidas+0
   4613 35            [11]   58 	dec	(hl)
                             59 ;src/sistemas/fin_juego.c:7: pinta_puntos();
   4614 CD 15 48      [17]   60 	call	_pinta_puntos
                             61 ;src/sistemas/fin_juego.c:8: if (vidas=='0')
   4617 3A 09 56      [13]   62 	ld	a,(#_vidas + 0)
   461A D6 30         [ 7]   63 	sub	a, #0x30
   461C C0            [11]   64 	ret	NZ
                             65 ;src/sistemas/fin_juego.c:9: {fin_juego();}
   461D C3 20 46      [10]   66 	jp  _fin_juego
                             67 ;src/sistemas/fin_juego.c:11: void fin_juego(){
                             68 ;	---------------------------------
                             69 ; Function fin_juego
                             70 ; ---------------------------------
   4620                      71 _fin_juego::
                             72 ;src/sistemas/fin_juego.c:13: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,20);
   4620 2A F3 55      [16]   73 	ld	hl, (_vmem_ahora)
   4623 01 0A 14      [10]   74 	ld	bc, #0x140a
   4626 C5            [11]   75 	push	bc
   4627 E5            [11]   76 	push	hl
   4628 CD CB 55      [17]   77 	call	_cpct_getScreenPtr
                             78 ;src/sistemas/fin_juego.c:14: cpct_drawStringM2("Has sido despedido!",pvmem);
   462B 01 4D 46      [10]   79 	ld	bc, #___str_0+0
   462E E5            [11]   80 	push	hl
   462F C5            [11]   81 	push	bc
   4630 CD 0E 4B      [17]   82 	call	_cpct_drawStringM2
                             83 ;src/sistemas/fin_juego.c:15: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,40);
   4633 2A F3 55      [16]   84 	ld	hl, (_vmem_ahora)
   4636 01 0A 28      [10]   85 	ld	bc, #0x280a
   4639 C5            [11]   86 	push	bc
   463A E5            [11]   87 	push	hl
   463B CD CB 55      [17]   88 	call	_cpct_getScreenPtr
                             89 ;src/sistemas/fin_juego.c:16: cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
   463E 01 61 46      [10]   90 	ld	bc, #___str_1+0
   4641 E5            [11]   91 	push	hl
   4642 C5            [11]   92 	push	bc
   4643 CD 0E 4B      [17]   93 	call	_cpct_drawStringM2
                             94 ;src/sistemas/fin_juego.c:17: espera_pulsacion_tecla();
   4646 CD 76 46      [17]   95 	call	_espera_pulsacion_tecla
                             96 ;src/sistemas/fin_juego.c:18: espera_pulsar();
   4649 CD 87 46      [17]   97 	call	_espera_pulsar
   464C C9            [10]   98 	ret
   464D                      99 ___str_0:
   464D 48 61 73 20 73 69   100 	.ascii "Has sido despedido!"
        64 6F 20 64 65 73
        70 65 64 69 64 6F
        21
   4660 00                  101 	.db 0x00
   4661                     102 ___str_1:
   4661 56 75 65 6C 76 65   103 	.ascii "Vuelve a intentarlo."
        20 61 20 69 6E 74
        65 6E 74 61 72 6C
        6F 2E
   4675 00                  104 	.db 0x00
                            105 ;src/sistemas/fin_juego.c:20: void espera_pulsacion_tecla(){
                            106 ;	---------------------------------
                            107 ; Function espera_pulsacion_tecla
                            108 ; ---------------------------------
   4676                     109 _espera_pulsacion_tecla::
                            110 ;src/sistemas/fin_juego.c:21: espera_pulsacion_alguna_tecla();
   4676 CD 7B 49      [17]  111 	call	_espera_pulsacion_alguna_tecla
                            112 ;src/sistemas/fin_juego.c:22: cpct_clearScreen_f64 (0);
   4679 21 00 40      [10]  113 	ld	hl, #0x4000
   467C E5            [11]  114 	push	hl
   467D 26 00         [ 7]  115 	ld	h, #0x00
   467F E5            [11]  116 	push	hl
   4680 26 C0         [ 7]  117 	ld	h, #0xc0
   4682 E5            [11]  118 	push	hl
   4683 CD 28 4C      [17]  119 	call	_cpct_memset_f64
   4686 C9            [10]  120 	ret
                            121 ;src/sistemas/fin_juego.c:24: void espera_pulsar(){
                            122 ;	---------------------------------
                            123 ; Function espera_pulsar
                            124 ; ---------------------------------
   4687                     125 _espera_pulsar::
                            126 ;src/sistemas/fin_juego.c:25: a_jugar();}
   4687 C3 B0 44      [10]  127 	jp  _a_jugar
                            128 	.area _CODE
                            129 	.area _INITIALIZER
                            130 	.area _CABS (ABS)

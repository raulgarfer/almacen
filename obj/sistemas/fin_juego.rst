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
                             51 ;src/sistemas/fin_juego.c:5: void muere(u8 i){
                             52 ;	---------------------------------
                             53 ; Function muere
                             54 ; ---------------------------------
   848D                      55 _muere::
                             56 ;src/sistemas/fin_juego.c:6: vidas--;
   848D 21 73 95      [10]   57 	ld	hl, #_vidas+0
   8490 35            [11]   58 	dec	(hl)
                             59 ;src/sistemas/fin_juego.c:8: pinta_puntos();
   8491 CD B3 86      [17]   60 	call	_pinta_puntos
                             61 ;src/sistemas/fin_juego.c:9: if (vidas=='0')
   8494 3A 73 95      [13]   62 	ld	a,(#_vidas + 0)
   8497 D6 30         [ 7]   63 	sub	a, #0x30
   8499 C0            [11]   64 	ret	NZ
                             65 ;src/sistemas/fin_juego.c:10: {fin_juego();}
   849A C3 9D 84      [10]   66 	jp  _fin_juego
                             67 ;src/sistemas/fin_juego.c:12: void fin_juego(){
                             68 ;	---------------------------------
                             69 ; Function fin_juego
                             70 ; ---------------------------------
   849D                      71 _fin_juego::
                             72 ;src/sistemas/fin_juego.c:14: if (puntos>=hisc)
   849D 21 F3 95      [10]   73 	ld	hl, #_hisc
   84A0 FD 21 F7 95   [14]   74 	ld	iy, #_puntos
   84A4 FD 7E 00      [19]   75 	ld	a, 0 (iy)
   84A7 96            [ 7]   76 	sub	a, (hl)
   84A8 38 06         [12]   77 	jr	C,00102$
                             78 ;src/sistemas/fin_juego.c:15: {hisc=puntos;}
   84AA FD 7E 00      [19]   79 	ld	a, 0 (iy)
   84AD 32 F3 95      [13]   80 	ld	(#_hisc + 0),a
   84B0                      81 00102$:
                             82 ;src/sistemas/fin_juego.c:17: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,20);
   84B0 2A 5D 95      [16]   83 	ld	hl, (_vmem_ahora)
   84B3 01 0A 14      [10]   84 	ld	bc, #0x140a
   84B6 C5            [11]   85 	push	bc
   84B7 E5            [11]   86 	push	hl
   84B8 CD 35 95      [17]   87 	call	_cpct_getScreenPtr
                             88 ;src/sistemas/fin_juego.c:18: cpct_drawStringM2("Has sido despedido!",pvmem);
   84BB 01 DD 84      [10]   89 	ld	bc, #___str_0+0
   84BE E5            [11]   90 	push	hl
   84BF C5            [11]   91 	push	bc
   84C0 CD 14 8A      [17]   92 	call	_cpct_drawStringM2
                             93 ;src/sistemas/fin_juego.c:19: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,40);
   84C3 2A 5D 95      [16]   94 	ld	hl, (_vmem_ahora)
   84C6 01 0A 28      [10]   95 	ld	bc, #0x280a
   84C9 C5            [11]   96 	push	bc
   84CA E5            [11]   97 	push	hl
   84CB CD 35 95      [17]   98 	call	_cpct_getScreenPtr
                             99 ;src/sistemas/fin_juego.c:20: cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
   84CE 01 F1 84      [10]  100 	ld	bc, #___str_1+0
   84D1 E5            [11]  101 	push	hl
   84D2 C5            [11]  102 	push	bc
   84D3 CD 14 8A      [17]  103 	call	_cpct_drawStringM2
                            104 ;src/sistemas/fin_juego.c:21: espera_pulsacion_tecla();
   84D6 CD 06 85      [17]  105 	call	_espera_pulsacion_tecla
                            106 ;src/sistemas/fin_juego.c:22: espera_pulsar();
   84D9 CD 17 85      [17]  107 	call	_espera_pulsar
   84DC C9            [10]  108 	ret
   84DD                     109 ___str_0:
   84DD 48 61 73 20 73 69   110 	.ascii "Has sido despedido!"
        64 6F 20 64 65 73
        70 65 64 69 64 6F
        21
   84F0 00                  111 	.db 0x00
   84F1                     112 ___str_1:
   84F1 56 75 65 6C 76 65   113 	.ascii "Vuelve a intentarlo."
        20 61 20 69 6E 74
        65 6E 74 61 72 6C
        6F 2E
   8505 00                  114 	.db 0x00
                            115 ;src/sistemas/fin_juego.c:24: void espera_pulsacion_tecla(){
                            116 ;	---------------------------------
                            117 ; Function espera_pulsacion_tecla
                            118 ; ---------------------------------
   8506                     119 _espera_pulsacion_tecla::
                            120 ;src/sistemas/fin_juego.c:25: espera_pulsacion_alguna_tecla();
   8506 CD 40 88      [17]  121 	call	_espera_pulsacion_alguna_tecla
                            122 ;src/sistemas/fin_juego.c:26: cpct_clearScreen_f64 (0);
   8509 21 00 40      [10]  123 	ld	hl, #0x4000
   850C E5            [11]  124 	push	hl
   850D 26 00         [ 7]  125 	ld	h, #0x00
   850F E5            [11]  126 	push	hl
   8510 26 C0         [ 7]  127 	ld	h, #0xc0
   8512 E5            [11]  128 	push	hl
   8513 CD 92 8B      [17]  129 	call	_cpct_memset_f64
   8516 C9            [10]  130 	ret
                            131 ;src/sistemas/fin_juego.c:28: void espera_pulsar(){
                            132 ;	---------------------------------
                            133 ; Function espera_pulsar
                            134 ; ---------------------------------
   8517                     135 _espera_pulsar::
                            136 ;src/sistemas/fin_juego.c:29: a_jugar();}
   8517 C3 2D 83      [10]  137 	jp  _a_jugar
                            138 	.area _CODE
                            139 	.area _INITIALIZER
                            140 	.area _CABS (ABS)

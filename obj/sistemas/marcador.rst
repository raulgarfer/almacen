                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module marcador
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _cpct_setPALColour
                             12 	.globl _cpct_drawStringM2
                             13 	.globl _cpct_drawCharM2
                             14 	.globl _puntos
                             15 	.globl _pinta_marcador
                             16 	.globl _pinta_puntos
                             17 ;--------------------------------------------------------
                             18 ; special function registers
                             19 ;--------------------------------------------------------
                             20 ;--------------------------------------------------------
                             21 ; ram data
                             22 ;--------------------------------------------------------
                             23 	.area _DATA
   8EB8                      24 _puntos::
   8EB8                      25 	.ds 1
                             26 ;--------------------------------------------------------
                             27 ; ram data
                             28 ;--------------------------------------------------------
                             29 	.area _INITIALIZED
                             30 ;--------------------------------------------------------
                             31 ; absolute external ram data
                             32 ;--------------------------------------------------------
                             33 	.area _DABS (ABS)
                             34 ;--------------------------------------------------------
                             35 ; global & static initialisations
                             36 ;--------------------------------------------------------
                             37 	.area _HOME
                             38 	.area _GSINIT
                             39 	.area _GSFINAL
                             40 	.area _GSINIT
                             41 ;--------------------------------------------------------
                             42 ; Home
                             43 ;--------------------------------------------------------
                             44 	.area _HOME
                             45 	.area _HOME
                             46 ;--------------------------------------------------------
                             47 ; code
                             48 ;--------------------------------------------------------
                             49 	.area _CODE
                             50 ;src/sistemas/marcador.c:5: void pinta_marcador(){
                             51 ;	---------------------------------
                             52 ; Function pinta_marcador
                             53 ; ---------------------------------
   8483                      54 _pinta_marcador::
                             55 ;src/sistemas/marcador.c:6: cpct_setPALColour (0, 1);
   8483 21 00 01      [10]   56 	ld	hl, #0x0100
   8486 E5            [11]   57 	push	hl
   8487 CD 09 8A      [17]   58 	call	_cpct_setPALColour
                             59 ;src/sistemas/marcador.c:7: cpct_setPALColour (1, 2);
   848A 21 01 02      [10]   60 	ld	hl, #0x0201
   848D E5            [11]   61 	push	hl
   848E CD 09 8A      [17]   62 	call	_cpct_setPALColour
                             63 ;src/sistemas/marcador.c:8: cpct_drawStringM2("Puntos",(u8*)marcador_y); 
   8491 21 80 C7      [10]   64 	ld	hl, #0xc780
   8494 E5            [11]   65 	push	hl
   8495 21 B3 84      [10]   66 	ld	hl, #___str_0
   8498 E5            [11]   67 	push	hl
   8499 CD 59 8A      [17]   68 	call	_cpct_drawStringM2
                             69 ;src/sistemas/marcador.c:9: cpct_drawStringM2("Vidas",(u8*)marcador_y+10);
   849C 21 8A C7      [10]   70 	ld	hl, #0xc78a
   849F E5            [11]   71 	push	hl
   84A0 21 BA 84      [10]   72 	ld	hl, #___str_1
   84A3 E5            [11]   73 	push	hl
   84A4 CD 59 8A      [17]   74 	call	_cpct_drawStringM2
                             75 ;src/sistemas/marcador.c:10: cpct_drawStringM2("HI",(u8*)marcador_y+20);
   84A7 21 94 C7      [10]   76 	ld	hl, #0xc794
   84AA E5            [11]   77 	push	hl
   84AB 21 C0 84      [10]   78 	ld	hl, #___str_2
   84AE E5            [11]   79 	push	hl
   84AF CD 59 8A      [17]   80 	call	_cpct_drawStringM2
   84B2 C9            [10]   81 	ret
   84B3                      82 ___str_0:
   84B3 50 75 6E 74 6F 73    83 	.ascii "Puntos"
   84B9 00                   84 	.db 0x00
   84BA                      85 ___str_1:
   84BA 56 69 64 61 73       86 	.ascii "Vidas"
   84BF 00                   87 	.db 0x00
   84C0                      88 ___str_2:
   84C0 48 49                89 	.ascii "HI"
   84C2 00                   90 	.db 0x00
                             91 ;src/sistemas/marcador.c:13: void pinta_puntos(){
                             92 ;	---------------------------------
                             93 ; Function pinta_puntos
                             94 ; ---------------------------------
   84C3                      95 _pinta_puntos::
                             96 ;src/sistemas/marcador.c:14: cpct_setPALColour (0, 1);
   84C3 21 00 01      [10]   97 	ld	hl, #0x0100
   84C6 E5            [11]   98 	push	hl
   84C7 CD 09 8A      [17]   99 	call	_cpct_setPALColour
                            100 ;src/sistemas/marcador.c:15: cpct_setPALColour (1, 2);
   84CA 21 01 02      [10]  101 	ld	hl, #0x0201
   84CD E5            [11]  102 	push	hl
   84CE CD 09 8A      [17]  103 	call	_cpct_setPALColour
                            104 ;src/sistemas/marcador.c:16: cpct_drawCharM2((u8*)marcador_y+7,puntos_decena);
   84D1 21 32 8E      [10]  105 	ld	hl,#_puntos_decena + 0
   84D4 4E            [ 7]  106 	ld	c, (hl)
   84D5 06 00         [ 7]  107 	ld	b, #0x00
   84D7 C5            [11]  108 	push	bc
   84D8 21 87 C7      [10]  109 	ld	hl, #0xc787
   84DB E5            [11]  110 	push	hl
   84DC CD 57 8C      [17]  111 	call	_cpct_drawCharM2
                            112 ;src/sistemas/marcador.c:17: cpct_drawCharM2((u8*)marcador_y+8,puntos);
   84DF 21 B8 8E      [10]  113 	ld	hl,#_puntos + 0
   84E2 4E            [ 7]  114 	ld	c, (hl)
   84E3 06 00         [ 7]  115 	ld	b, #0x00
   84E5 C5            [11]  116 	push	bc
   84E6 21 88 C7      [10]  117 	ld	hl, #0xc788
   84E9 E5            [11]  118 	push	hl
   84EA CD 57 8C      [17]  119 	call	_cpct_drawCharM2
                            120 ;src/sistemas/marcador.c:18: cpct_setPALColour (1, 3);
   84ED 21 01 03      [10]  121 	ld	hl, #0x0301
   84F0 E5            [11]  122 	push	hl
   84F1 CD 09 8A      [17]  123 	call	_cpct_setPALColour
                            124 ;src/sistemas/marcador.c:19: cpct_drawCharM2((u8*)marcador_y+16,vidas);
   84F4 21 34 8E      [10]  125 	ld	hl,#_vidas + 0
   84F7 4E            [ 7]  126 	ld	c, (hl)
   84F8 06 00         [ 7]  127 	ld	b, #0x00
   84FA C5            [11]  128 	push	bc
   84FB 21 90 C7      [10]  129 	ld	hl, #0xc790
   84FE E5            [11]  130 	push	hl
   84FF CD 57 8C      [17]  131 	call	_cpct_drawCharM2
                            132 ;src/sistemas/marcador.c:20: cpct_drawCharM2((u8*)marcador_y+32,hisc);
   8502 FD 21 B4 8E   [14]  133 	ld	iy, #_hisc
   8506 FD 4E 00      [19]  134 	ld	c, 0 (iy)
   8509 FD 7E 00      [19]  135 	ld	a, 0 (iy)
   850C 17            [ 4]  136 	rla
   850D 9F            [ 4]  137 	sbc	a, a
   850E 47            [ 4]  138 	ld	b, a
   850F C5            [11]  139 	push	bc
   8510 21 A0 C7      [10]  140 	ld	hl, #0xc7a0
   8513 E5            [11]  141 	push	hl
   8514 CD 57 8C      [17]  142 	call	_cpct_drawCharM2
   8517 C9            [10]  143 	ret
                            144 	.area _CODE
                            145 	.area _INITIALIZER
                            146 	.area _CABS (ABS)

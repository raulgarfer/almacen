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
   9607                      24 _puntos::
   9607                      25 	.ds 1
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
   8676                      54 _pinta_marcador::
                             55 ;src/sistemas/marcador.c:6: cpct_setPALColour (0, 1);
   8676 21 00 01      [10]   56 	ld	hl, #0x0100
   8679 E5            [11]   57 	push	hl
   867A CD D4 89      [17]   58 	call	_cpct_setPALColour
                             59 ;src/sistemas/marcador.c:7: cpct_setPALColour (1, 2);
   867D 21 01 02      [10]   60 	ld	hl, #0x0201
   8680 E5            [11]   61 	push	hl
   8681 CD D4 89      [17]   62 	call	_cpct_setPALColour
                             63 ;src/sistemas/marcador.c:8: cpct_drawStringM2("Puntos",(u8*)marcador_y); 
   8684 21 80 C7      [10]   64 	ld	hl, #0xc780
   8687 E5            [11]   65 	push	hl
   8688 21 A6 86      [10]   66 	ld	hl, #___str_0
   868B E5            [11]   67 	push	hl
   868C CD 24 8A      [17]   68 	call	_cpct_drawStringM2
                             69 ;src/sistemas/marcador.c:9: cpct_drawStringM2("Vidas",(u8*)marcador_y+10);
   868F 21 8A C7      [10]   70 	ld	hl, #0xc78a
   8692 E5            [11]   71 	push	hl
   8693 21 AD 86      [10]   72 	ld	hl, #___str_1
   8696 E5            [11]   73 	push	hl
   8697 CD 24 8A      [17]   74 	call	_cpct_drawStringM2
                             75 ;src/sistemas/marcador.c:10: cpct_drawStringM2("HI",(u8*)marcador_y+20);
   869A 21 94 C7      [10]   76 	ld	hl, #0xc794
   869D E5            [11]   77 	push	hl
   869E 21 B3 86      [10]   78 	ld	hl, #___str_2
   86A1 E5            [11]   79 	push	hl
   86A2 CD 24 8A      [17]   80 	call	_cpct_drawStringM2
   86A5 C9            [10]   81 	ret
   86A6                      82 ___str_0:
   86A6 50 75 6E 74 6F 73    83 	.ascii "Puntos"
   86AC 00                   84 	.db 0x00
   86AD                      85 ___str_1:
   86AD 56 69 64 61 73       86 	.ascii "Vidas"
   86B2 00                   87 	.db 0x00
   86B3                      88 ___str_2:
   86B3 48 49                89 	.ascii "HI"
   86B5 00                   90 	.db 0x00
                             91 ;src/sistemas/marcador.c:13: void pinta_puntos(){
                             92 ;	---------------------------------
                             93 ; Function pinta_puntos
                             94 ; ---------------------------------
   86B6                      95 _pinta_puntos::
                             96 ;src/sistemas/marcador.c:14: cpct_setPALColour (0, 1);
   86B6 21 00 01      [10]   97 	ld	hl, #0x0100
   86B9 E5            [11]   98 	push	hl
   86BA CD D4 89      [17]   99 	call	_cpct_setPALColour
                            100 ;src/sistemas/marcador.c:15: cpct_setPALColour (1, 2);
   86BD 21 01 02      [10]  101 	ld	hl, #0x0201
   86C0 E5            [11]  102 	push	hl
   86C1 CD D4 89      [17]  103 	call	_cpct_setPALColour
                            104 ;src/sistemas/marcador.c:16: cpct_drawCharM2((u8*)marcador_y+7,puntos_decena);
   86C4 21 81 95      [10]  105 	ld	hl,#_puntos_decena + 0
   86C7 4E            [ 7]  106 	ld	c, (hl)
   86C8 06 00         [ 7]  107 	ld	b, #0x00
   86CA C5            [11]  108 	push	bc
   86CB 21 87 C7      [10]  109 	ld	hl, #0xc787
   86CE E5            [11]  110 	push	hl
   86CF CD 7D 8B      [17]  111 	call	_cpct_drawCharM2
                            112 ;src/sistemas/marcador.c:17: cpct_drawCharM2((u8*)marcador_y+8,puntos);
   86D2 21 07 96      [10]  113 	ld	hl,#_puntos + 0
   86D5 4E            [ 7]  114 	ld	c, (hl)
   86D6 06 00         [ 7]  115 	ld	b, #0x00
   86D8 C5            [11]  116 	push	bc
   86D9 21 88 C7      [10]  117 	ld	hl, #0xc788
   86DC E5            [11]  118 	push	hl
   86DD CD 7D 8B      [17]  119 	call	_cpct_drawCharM2
                            120 ;src/sistemas/marcador.c:18: cpct_setPALColour (1, 3);
   86E0 21 01 03      [10]  121 	ld	hl, #0x0301
   86E3 E5            [11]  122 	push	hl
   86E4 CD D4 89      [17]  123 	call	_cpct_setPALColour
                            124 ;src/sistemas/marcador.c:19: cpct_drawCharM2((u8*)marcador_y+16,vidas);
   86E7 21 83 95      [10]  125 	ld	hl,#_vidas + 0
   86EA 4E            [ 7]  126 	ld	c, (hl)
   86EB 06 00         [ 7]  127 	ld	b, #0x00
   86ED C5            [11]  128 	push	bc
   86EE 21 90 C7      [10]  129 	ld	hl, #0xc790
   86F1 E5            [11]  130 	push	hl
   86F2 CD 7D 8B      [17]  131 	call	_cpct_drawCharM2
                            132 ;src/sistemas/marcador.c:20: cpct_drawCharM2((u8*)marcador_y+32,hisc);
   86F5 FD 21 03 96   [14]  133 	ld	iy, #_hisc
   86F9 FD 4E 00      [19]  134 	ld	c, 0 (iy)
   86FC FD 7E 00      [19]  135 	ld	a, 0 (iy)
   86FF 17            [ 4]  136 	rla
   8700 9F            [ 4]  137 	sbc	a, a
   8701 47            [ 4]  138 	ld	b, a
   8702 C5            [11]  139 	push	bc
   8703 21 A0 C7      [10]  140 	ld	hl, #0xc7a0
   8706 E5            [11]  141 	push	hl
   8707 CD 7D 8B      [17]  142 	call	_cpct_drawCharM2
   870A C9            [10]  143 	ret
                            144 	.area _CODE
                            145 	.area _INITIALIZER
                            146 	.area _CABS (ABS)

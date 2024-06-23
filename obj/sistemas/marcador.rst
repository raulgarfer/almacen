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
   95F7                      24 _puntos::
   95F7                      25 	.ds 1
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
   8673                      54 _pinta_marcador::
                             55 ;src/sistemas/marcador.c:6: cpct_setPALColour (0, 1);
   8673 21 00 01      [10]   56 	ld	hl, #0x0100
   8676 E5            [11]   57 	push	hl
   8677 CD C4 89      [17]   58 	call	_cpct_setPALColour
                             59 ;src/sistemas/marcador.c:7: cpct_setPALColour (1, 2);
   867A 21 01 02      [10]   60 	ld	hl, #0x0201
   867D E5            [11]   61 	push	hl
   867E CD C4 89      [17]   62 	call	_cpct_setPALColour
                             63 ;src/sistemas/marcador.c:8: cpct_drawStringM2("Puntos",(u8*)marcador_y); 
   8681 21 80 C7      [10]   64 	ld	hl, #0xc780
   8684 E5            [11]   65 	push	hl
   8685 21 A3 86      [10]   66 	ld	hl, #___str_0
   8688 E5            [11]   67 	push	hl
   8689 CD 14 8A      [17]   68 	call	_cpct_drawStringM2
                             69 ;src/sistemas/marcador.c:9: cpct_drawStringM2("Vidas",(u8*)marcador_y+10);
   868C 21 8A C7      [10]   70 	ld	hl, #0xc78a
   868F E5            [11]   71 	push	hl
   8690 21 AA 86      [10]   72 	ld	hl, #___str_1
   8693 E5            [11]   73 	push	hl
   8694 CD 14 8A      [17]   74 	call	_cpct_drawStringM2
                             75 ;src/sistemas/marcador.c:10: cpct_drawStringM2("HI",(u8*)marcador_y+20);
   8697 21 94 C7      [10]   76 	ld	hl, #0xc794
   869A E5            [11]   77 	push	hl
   869B 21 B0 86      [10]   78 	ld	hl, #___str_2
   869E E5            [11]   79 	push	hl
   869F CD 14 8A      [17]   80 	call	_cpct_drawStringM2
   86A2 C9            [10]   81 	ret
   86A3                      82 ___str_0:
   86A3 50 75 6E 74 6F 73    83 	.ascii "Puntos"
   86A9 00                   84 	.db 0x00
   86AA                      85 ___str_1:
   86AA 56 69 64 61 73       86 	.ascii "Vidas"
   86AF 00                   87 	.db 0x00
   86B0                      88 ___str_2:
   86B0 48 49                89 	.ascii "HI"
   86B2 00                   90 	.db 0x00
                             91 ;src/sistemas/marcador.c:13: void pinta_puntos(){
                             92 ;	---------------------------------
                             93 ; Function pinta_puntos
                             94 ; ---------------------------------
   86B3                      95 _pinta_puntos::
                             96 ;src/sistemas/marcador.c:14: cpct_setPALColour (0, 1);
   86B3 21 00 01      [10]   97 	ld	hl, #0x0100
   86B6 E5            [11]   98 	push	hl
   86B7 CD C4 89      [17]   99 	call	_cpct_setPALColour
                            100 ;src/sistemas/marcador.c:15: cpct_setPALColour (1, 2);
   86BA 21 01 02      [10]  101 	ld	hl, #0x0201
   86BD E5            [11]  102 	push	hl
   86BE CD C4 89      [17]  103 	call	_cpct_setPALColour
                            104 ;src/sistemas/marcador.c:16: cpct_drawCharM2((u8*)marcador_y+7,puntos_decena);
   86C1 21 71 95      [10]  105 	ld	hl,#_puntos_decena + 0
   86C4 4E            [ 7]  106 	ld	c, (hl)
   86C5 06 00         [ 7]  107 	ld	b, #0x00
   86C7 C5            [11]  108 	push	bc
   86C8 21 87 C7      [10]  109 	ld	hl, #0xc787
   86CB E5            [11]  110 	push	hl
   86CC CD 6D 8B      [17]  111 	call	_cpct_drawCharM2
                            112 ;src/sistemas/marcador.c:17: cpct_drawCharM2((u8*)marcador_y+8,puntos);
   86CF 21 F7 95      [10]  113 	ld	hl,#_puntos + 0
   86D2 4E            [ 7]  114 	ld	c, (hl)
   86D3 06 00         [ 7]  115 	ld	b, #0x00
   86D5 C5            [11]  116 	push	bc
   86D6 21 88 C7      [10]  117 	ld	hl, #0xc788
   86D9 E5            [11]  118 	push	hl
   86DA CD 6D 8B      [17]  119 	call	_cpct_drawCharM2
                            120 ;src/sistemas/marcador.c:18: cpct_setPALColour (1, 3);
   86DD 21 01 03      [10]  121 	ld	hl, #0x0301
   86E0 E5            [11]  122 	push	hl
   86E1 CD C4 89      [17]  123 	call	_cpct_setPALColour
                            124 ;src/sistemas/marcador.c:19: cpct_drawCharM2((u8*)marcador_y+16,vidas);
   86E4 21 73 95      [10]  125 	ld	hl,#_vidas + 0
   86E7 4E            [ 7]  126 	ld	c, (hl)
   86E8 06 00         [ 7]  127 	ld	b, #0x00
   86EA C5            [11]  128 	push	bc
   86EB 21 90 C7      [10]  129 	ld	hl, #0xc790
   86EE E5            [11]  130 	push	hl
   86EF CD 6D 8B      [17]  131 	call	_cpct_drawCharM2
                            132 ;src/sistemas/marcador.c:20: cpct_drawCharM2((u8*)marcador_y+32,hisc);
   86F2 FD 21 F3 95   [14]  133 	ld	iy, #_hisc
   86F6 FD 4E 00      [19]  134 	ld	c, 0 (iy)
   86F9 FD 7E 00      [19]  135 	ld	a, 0 (iy)
   86FC 17            [ 4]  136 	rla
   86FD 9F            [ 4]  137 	sbc	a, a
   86FE 47            [ 4]  138 	ld	b, a
   86FF C5            [11]  139 	push	bc
   8700 21 A0 C7      [10]  140 	ld	hl, #0xc7a0
   8703 E5            [11]  141 	push	hl
   8704 CD 6D 8B      [17]  142 	call	_cpct_drawCharM2
   8707 C9            [10]  143 	ret
                            144 	.area _CODE
                            145 	.area _INITIALIZER
                            146 	.area _CABS (ABS)

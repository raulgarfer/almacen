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
   4D31                      24 _puntos::
   4D31                      25 	.ds 1
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
   4682                      54 _pinta_marcador::
                             55 ;src/sistemas/marcador.c:6: cpct_setPALColour (0, 1);
   4682 21 00 01      [10]   56 	ld	hl, #0x0100
   4685 E5            [11]   57 	push	hl
   4686 CD C8 49      [17]   58 	call	_cpct_setPALColour
                             59 ;src/sistemas/marcador.c:7: cpct_setPALColour (1, 2);
   4689 21 01 02      [10]   60 	ld	hl, #0x0201
   468C E5            [11]   61 	push	hl
   468D CD C8 49      [17]   62 	call	_cpct_setPALColour
                             63 ;src/sistemas/marcador.c:8: cpct_drawStringM2("Puntos",(u8*)marcador_y); 
   4690 21 80 C7      [10]   64 	ld	hl, #0xc780
   4693 E5            [11]   65 	push	hl
   4694 21 A7 46      [10]   66 	ld	hl, #___str_0
   4697 E5            [11]   67 	push	hl
   4698 CD DE 49      [17]   68 	call	_cpct_drawStringM2
                             69 ;src/sistemas/marcador.c:9: cpct_drawStringM2("Vidas",(u8*)marcador_y+10);
   469B 21 8A C7      [10]   70 	ld	hl, #0xc78a
   469E E5            [11]   71 	push	hl
   469F 21 AE 46      [10]   72 	ld	hl, #___str_1
   46A2 E5            [11]   73 	push	hl
   46A3 CD DE 49      [17]   74 	call	_cpct_drawStringM2
   46A6 C9            [10]   75 	ret
   46A7                      76 ___str_0:
   46A7 50 75 6E 74 6F 73    77 	.ascii "Puntos"
   46AD 00                   78 	.db 0x00
   46AE                      79 ___str_1:
   46AE 56 69 64 61 73       80 	.ascii "Vidas"
   46B3 00                   81 	.db 0x00
                             82 ;src/sistemas/marcador.c:12: void pinta_puntos(){
                             83 ;	---------------------------------
                             84 ; Function pinta_puntos
                             85 ; ---------------------------------
   46B4                      86 _pinta_puntos::
                             87 ;src/sistemas/marcador.c:13: cpct_setPALColour (0, 1);
   46B4 21 00 01      [10]   88 	ld	hl, #0x0100
   46B7 E5            [11]   89 	push	hl
   46B8 CD C8 49      [17]   90 	call	_cpct_setPALColour
                             91 ;src/sistemas/marcador.c:14: cpct_setPALColour (1, 2);
   46BB 21 01 02      [10]   92 	ld	hl, #0x0201
   46BE E5            [11]   93 	push	hl
   46BF CD C8 49      [17]   94 	call	_cpct_setPALColour
                             95 ;src/sistemas/marcador.c:15: cpct_drawCharM2((u8*)marcador_y+7,puntos_decena);
   46C2 21 AE 4C      [10]   96 	ld	hl,#_puntos_decena + 0
   46C5 4E            [ 7]   97 	ld	c, (hl)
   46C6 06 00         [ 7]   98 	ld	b, #0x00
   46C8 C5            [11]   99 	push	bc
   46C9 21 87 C7      [10]  100 	ld	hl, #0xc787
   46CC E5            [11]  101 	push	hl
   46CD CD D3 4A      [17]  102 	call	_cpct_drawCharM2
                            103 ;src/sistemas/marcador.c:16: cpct_drawCharM2((u8*)marcador_y+8,puntos);
   46D0 21 31 4D      [10]  104 	ld	hl,#_puntos + 0
   46D3 4E            [ 7]  105 	ld	c, (hl)
   46D4 06 00         [ 7]  106 	ld	b, #0x00
   46D6 C5            [11]  107 	push	bc
   46D7 21 88 C7      [10]  108 	ld	hl, #0xc788
   46DA E5            [11]  109 	push	hl
   46DB CD D3 4A      [17]  110 	call	_cpct_drawCharM2
                            111 ;src/sistemas/marcador.c:17: cpct_drawCharM2((u8*)marcador_y+16,vidas);
   46DE 21 B0 4C      [10]  112 	ld	hl,#_vidas + 0
   46E1 4E            [ 7]  113 	ld	c, (hl)
   46E2 06 00         [ 7]  114 	ld	b, #0x00
   46E4 C5            [11]  115 	push	bc
   46E5 21 90 C7      [10]  116 	ld	hl, #0xc790
   46E8 E5            [11]  117 	push	hl
   46E9 CD D3 4A      [17]  118 	call	_cpct_drawCharM2
   46EC C9            [10]  119 	ret
                            120 	.area _CODE
                            121 	.area _INITIALIZER
                            122 	.area _CABS (ABS)

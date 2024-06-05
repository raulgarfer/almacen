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
   4DD0                      24 _puntos::
   4DD0                      25 	.ds 1
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
   4799                      54 _pinta_marcador::
                             55 ;src/sistemas/marcador.c:6: cpct_setPALColour (0, 1);
   4799 21 00 01      [10]   56 	ld	hl, #0x0100
   479C E5            [11]   57 	push	hl
   479D CD 66 4A      [17]   58 	call	_cpct_setPALColour
                             59 ;src/sistemas/marcador.c:7: cpct_setPALColour (1, 2);
   47A0 21 01 02      [10]   60 	ld	hl, #0x0201
   47A3 E5            [11]   61 	push	hl
   47A4 CD 66 4A      [17]   62 	call	_cpct_setPALColour
                             63 ;src/sistemas/marcador.c:8: cpct_drawStringM2("Puntos",(u8*)marcador_y); 
   47A7 21 80 C7      [10]   64 	ld	hl, #0xc780
   47AA E5            [11]   65 	push	hl
   47AB 21 BE 47      [10]   66 	ld	hl, #___str_0
   47AE E5            [11]   67 	push	hl
   47AF CD 7C 4A      [17]   68 	call	_cpct_drawStringM2
                             69 ;src/sistemas/marcador.c:9: cpct_drawStringM2("Vidas",(u8*)marcador_y+10);
   47B2 21 8A C7      [10]   70 	ld	hl, #0xc78a
   47B5 E5            [11]   71 	push	hl
   47B6 21 C5 47      [10]   72 	ld	hl, #___str_1
   47B9 E5            [11]   73 	push	hl
   47BA CD 7C 4A      [17]   74 	call	_cpct_drawStringM2
   47BD C9            [10]   75 	ret
   47BE                      76 ___str_0:
   47BE 50 75 6E 74 6F 73    77 	.ascii "Puntos"
   47C4 00                   78 	.db 0x00
   47C5                      79 ___str_1:
   47C5 56 69 64 61 73       80 	.ascii "Vidas"
   47CA 00                   81 	.db 0x00
                             82 ;src/sistemas/marcador.c:12: void pinta_puntos(){
                             83 ;	---------------------------------
                             84 ; Function pinta_puntos
                             85 ; ---------------------------------
   47CB                      86 _pinta_puntos::
                             87 ;src/sistemas/marcador.c:13: cpct_setPALColour (0, 1);
   47CB 21 00 01      [10]   88 	ld	hl, #0x0100
   47CE E5            [11]   89 	push	hl
   47CF CD 66 4A      [17]   90 	call	_cpct_setPALColour
                             91 ;src/sistemas/marcador.c:14: cpct_setPALColour (1, 2);
   47D2 21 01 02      [10]   92 	ld	hl, #0x0201
   47D5 E5            [11]   93 	push	hl
   47D6 CD 66 4A      [17]   94 	call	_cpct_setPALColour
                             95 ;src/sistemas/marcador.c:15: cpct_drawCharM2((u8*)marcador_y+7,puntos_decena);
   47D9 21 4C 4D      [10]   96 	ld	hl,#_puntos_decena + 0
   47DC 4E            [ 7]   97 	ld	c, (hl)
   47DD 06 00         [ 7]   98 	ld	b, #0x00
   47DF C5            [11]   99 	push	bc
   47E0 21 87 C7      [10]  100 	ld	hl, #0xc787
   47E3 E5            [11]  101 	push	hl
   47E4 CD 71 4B      [17]  102 	call	_cpct_drawCharM2
                            103 ;src/sistemas/marcador.c:16: cpct_drawCharM2((u8*)marcador_y+8,puntos);
   47E7 21 D0 4D      [10]  104 	ld	hl,#_puntos + 0
   47EA 4E            [ 7]  105 	ld	c, (hl)
   47EB 06 00         [ 7]  106 	ld	b, #0x00
   47ED C5            [11]  107 	push	bc
   47EE 21 88 C7      [10]  108 	ld	hl, #0xc788
   47F1 E5            [11]  109 	push	hl
   47F2 CD 71 4B      [17]  110 	call	_cpct_drawCharM2
                            111 ;src/sistemas/marcador.c:17: cpct_drawCharM2((u8*)marcador_y+16,vidas);
   47F5 21 4E 4D      [10]  112 	ld	hl,#_vidas + 0
   47F8 4E            [ 7]  113 	ld	c, (hl)
   47F9 06 00         [ 7]  114 	ld	b, #0x00
   47FB C5            [11]  115 	push	bc
   47FC 21 90 C7      [10]  116 	ld	hl, #0xc790
   47FF E5            [11]  117 	push	hl
   4800 CD 71 4B      [17]  118 	call	_cpct_drawCharM2
   4803 C9            [10]  119 	ret
                            120 	.area _CODE
                            121 	.area _INITIALIZER
                            122 	.area _CABS (ABS)

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
   568C                      24 _puntos::
   568C                      25 	.ds 1
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
   47E3                      54 _pinta_marcador::
                             55 ;src/sistemas/marcador.c:6: cpct_setPALColour (0, 1);
   47E3 21 00 01      [10]   56 	ld	hl, #0x0100
   47E6 E5            [11]   57 	push	hl
   47E7 CD F8 4A      [17]   58 	call	_cpct_setPALColour
                             59 ;src/sistemas/marcador.c:7: cpct_setPALColour (1, 2);
   47EA 21 01 02      [10]   60 	ld	hl, #0x0201
   47ED E5            [11]   61 	push	hl
   47EE CD F8 4A      [17]   62 	call	_cpct_setPALColour
                             63 ;src/sistemas/marcador.c:8: cpct_drawStringM2("Puntos",(u8*)marcador_y); 
   47F1 21 80 C7      [10]   64 	ld	hl, #0xc780
   47F4 E5            [11]   65 	push	hl
   47F5 21 08 48      [10]   66 	ld	hl, #___str_0
   47F8 E5            [11]   67 	push	hl
   47F9 CD 0E 4B      [17]   68 	call	_cpct_drawStringM2
                             69 ;src/sistemas/marcador.c:9: cpct_drawStringM2("Vidas",(u8*)marcador_y+10);
   47FC 21 8A C7      [10]   70 	ld	hl, #0xc78a
   47FF E5            [11]   71 	push	hl
   4800 21 0F 48      [10]   72 	ld	hl, #___str_1
   4803 E5            [11]   73 	push	hl
   4804 CD 0E 4B      [17]   74 	call	_cpct_drawStringM2
   4807 C9            [10]   75 	ret
   4808                      76 ___str_0:
   4808 50 75 6E 74 6F 73    77 	.ascii "Puntos"
   480E 00                   78 	.db 0x00
   480F                      79 ___str_1:
   480F 56 69 64 61 73       80 	.ascii "Vidas"
   4814 00                   81 	.db 0x00
                             82 ;src/sistemas/marcador.c:12: void pinta_puntos(){
                             83 ;	---------------------------------
                             84 ; Function pinta_puntos
                             85 ; ---------------------------------
   4815                      86 _pinta_puntos::
                             87 ;src/sistemas/marcador.c:13: cpct_setPALColour (0, 1);
   4815 21 00 01      [10]   88 	ld	hl, #0x0100
   4818 E5            [11]   89 	push	hl
   4819 CD F8 4A      [17]   90 	call	_cpct_setPALColour
                             91 ;src/sistemas/marcador.c:14: cpct_setPALColour (1, 2);
   481C 21 01 02      [10]   92 	ld	hl, #0x0201
   481F E5            [11]   93 	push	hl
   4820 CD F8 4A      [17]   94 	call	_cpct_setPALColour
                             95 ;src/sistemas/marcador.c:15: cpct_drawCharM2((u8*)marcador_y+7,puntos_decena);
   4823 21 07 56      [10]   96 	ld	hl,#_puntos_decena + 0
   4826 4E            [ 7]   97 	ld	c, (hl)
   4827 06 00         [ 7]   98 	ld	b, #0x00
   4829 C5            [11]   99 	push	bc
   482A 21 87 C7      [10]  100 	ld	hl, #0xc787
   482D E5            [11]  101 	push	hl
   482E CD 03 4C      [17]  102 	call	_cpct_drawCharM2
                            103 ;src/sistemas/marcador.c:16: cpct_drawCharM2((u8*)marcador_y+8,puntos);
   4831 21 8C 56      [10]  104 	ld	hl,#_puntos + 0
   4834 4E            [ 7]  105 	ld	c, (hl)
   4835 06 00         [ 7]  106 	ld	b, #0x00
   4837 C5            [11]  107 	push	bc
   4838 21 88 C7      [10]  108 	ld	hl, #0xc788
   483B E5            [11]  109 	push	hl
   483C CD 03 4C      [17]  110 	call	_cpct_drawCharM2
                            111 ;src/sistemas/marcador.c:17: cpct_setPALColour (1, 3);
   483F 21 01 03      [10]  112 	ld	hl, #0x0301
   4842 E5            [11]  113 	push	hl
   4843 CD F8 4A      [17]  114 	call	_cpct_setPALColour
                            115 ;src/sistemas/marcador.c:18: cpct_drawCharM2((u8*)marcador_y+16,vidas);
   4846 21 09 56      [10]  116 	ld	hl,#_vidas + 0
   4849 4E            [ 7]  117 	ld	c, (hl)
   484A 06 00         [ 7]  118 	ld	b, #0x00
   484C C5            [11]  119 	push	bc
   484D 21 90 C7      [10]  120 	ld	hl, #0xc790
   4850 E5            [11]  121 	push	hl
   4851 CD 03 4C      [17]  122 	call	_cpct_drawCharM2
   4854 C9            [10]  123 	ret
                            124 	.area _CODE
                            125 	.area _INITIALIZER
                            126 	.area _CABS (ABS)

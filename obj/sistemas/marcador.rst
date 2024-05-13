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
                             11 	.globl _pinta_puntos
                             12 	.globl _pinta_marcador
                             13 	.globl _cpct_setPALColour
                             14 	.globl _cpct_drawStringM2
                             15 	.globl _cpct_drawCharM2
                             16 	.globl _puntos
                             17 ;--------------------------------------------------------
                             18 ; special function registers
                             19 ;--------------------------------------------------------
                             20 ;--------------------------------------------------------
                             21 ; ram data
                             22 ;--------------------------------------------------------
                             23 	.area _DATA
   46B1                      24 _puntos::
   46B1                      25 	.ds 1
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
                             50 ;src/sistemas/marcador.c:4: void pinta_marcador(){
                             51 ;	---------------------------------
                             52 ; Function pinta_marcador
                             53 ; ---------------------------------
   4275                      54 _pinta_marcador::
                             55 ;src/sistemas/marcador.c:5: cpct_setPALColour (0, 1);
   4275 21 00 01      [10]   56 	ld	hl, #0x0100
   4278 E5            [11]   57 	push	hl
   4279 CD 40 44      [17]   58 	call	_cpct_setPALColour
                             59 ;src/sistemas/marcador.c:7: cpct_setPALColour (1, 2);
   427C 21 01 02      [10]   60 	ld	hl, #0x0201
   427F E5            [11]   61 	push	hl
   4280 CD 40 44      [17]   62 	call	_cpct_setPALColour
                             63 ;src/sistemas/marcador.c:9: cpct_drawStringM2("Puntos",0xc780); 
   4283 21 80 C7      [10]   64 	ld	hl, #0xc780
   4286 E5            [11]   65 	push	hl
   4287 21 8F 42      [10]   66 	ld	hl, #___str_0
   428A E5            [11]   67 	push	hl
   428B CD 56 44      [17]   68 	call	_cpct_drawStringM2
   428E C9            [10]   69 	ret
   428F                      70 ___str_0:
   428F 50 75 6E 74 6F 73    71 	.ascii "Puntos"
   4295 00                   72 	.db 0x00
                             73 ;src/sistemas/marcador.c:12: void pinta_puntos(){
                             74 ;	---------------------------------
                             75 ; Function pinta_puntos
                             76 ; ---------------------------------
   4296                      77 _pinta_puntos::
                             78 ;src/sistemas/marcador.c:13: cpct_setPALColour (0, 1);
   4296 21 00 01      [10]   79 	ld	hl, #0x0100
   4299 E5            [11]   80 	push	hl
   429A CD 40 44      [17]   81 	call	_cpct_setPALColour
                             82 ;src/sistemas/marcador.c:14: cpct_setPALColour (1, 2);
   429D 21 01 02      [10]   83 	ld	hl, #0x0201
   42A0 E5            [11]   84 	push	hl
   42A1 CD 40 44      [17]   85 	call	_cpct_setPALColour
                             86 ;src/sistemas/marcador.c:15: cpct_drawCharM2(0xc78a,puntos_decena);
   42A4 21 B0 46      [10]   87 	ld	hl,#_puntos_decena + 0
   42A7 4E            [ 7]   88 	ld	c, (hl)
   42A8 06 00         [ 7]   89 	ld	b, #0x00
   42AA C5            [11]   90 	push	bc
   42AB 21 8A C7      [10]   91 	ld	hl, #0xc78a
   42AE E5            [11]   92 	push	hl
   42AF CD 50 45      [17]   93 	call	_cpct_drawCharM2
                             94 ;src/sistemas/marcador.c:16: cpct_drawCharM2(0xc78a+1,puntos);
   42B2 21 B1 46      [10]   95 	ld	hl,#_puntos + 0
   42B5 4E            [ 7]   96 	ld	c, (hl)
   42B6 06 00         [ 7]   97 	ld	b, #0x00
   42B8 C5            [11]   98 	push	bc
   42B9 21 8B C7      [10]   99 	ld	hl, #0xc78b
   42BC E5            [11]  100 	push	hl
   42BD CD 50 45      [17]  101 	call	_cpct_drawCharM2
   42C0 C9            [10]  102 	ret
                            103 	.area _CODE
                            104 	.area _INITIALIZER
                            105 	.area _CABS (ABS)

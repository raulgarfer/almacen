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
   484C                      24 _puntos::
   484C                      25 	.ds 1
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
   42CA                      54 _pinta_marcador::
                             55 ;src/sistemas/marcador.c:6: cpct_setPALColour (0, 1);
   42CA 21 00 01      [10]   56 	ld	hl, #0x0100
   42CD E5            [11]   57 	push	hl
   42CE CD 14 45      [17]   58 	call	_cpct_setPALColour
                             59 ;src/sistemas/marcador.c:7: cpct_setPALColour (1, 2);
   42D1 21 01 02      [10]   60 	ld	hl, #0x0201
   42D4 E5            [11]   61 	push	hl
   42D5 CD 14 45      [17]   62 	call	_cpct_setPALColour
                             63 ;src/sistemas/marcador.c:8: cpct_drawStringM2("Puntos",marcador_y); 
   42D8 21 80 C7      [10]   64 	ld	hl, #0xc780
   42DB E5            [11]   65 	push	hl
   42DC 21 EF 42      [10]   66 	ld	hl, #___str_0
   42DF E5            [11]   67 	push	hl
   42E0 CD 2A 45      [17]   68 	call	_cpct_drawStringM2
                             69 ;src/sistemas/marcador.c:9: cpct_drawStringM2("Vidas",marcador_y+10);
   42E3 21 8A C7      [10]   70 	ld	hl, #0xc78a
   42E6 E5            [11]   71 	push	hl
   42E7 21 F6 42      [10]   72 	ld	hl, #___str_1
   42EA E5            [11]   73 	push	hl
   42EB CD 2A 45      [17]   74 	call	_cpct_drawStringM2
   42EE C9            [10]   75 	ret
   42EF                      76 ___str_0:
   42EF 50 75 6E 74 6F 73    77 	.ascii "Puntos"
   42F5 00                   78 	.db 0x00
   42F6                      79 ___str_1:
   42F6 56 69 64 61 73       80 	.ascii "Vidas"
   42FB 00                   81 	.db 0x00
                             82 ;src/sistemas/marcador.c:12: void pinta_puntos(){
                             83 ;	---------------------------------
                             84 ; Function pinta_puntos
                             85 ; ---------------------------------
   42FC                      86 _pinta_puntos::
                             87 ;src/sistemas/marcador.c:13: cpct_setPALColour (0, 1);
   42FC 21 00 01      [10]   88 	ld	hl, #0x0100
   42FF E5            [11]   89 	push	hl
   4300 CD 14 45      [17]   90 	call	_cpct_setPALColour
                             91 ;src/sistemas/marcador.c:14: cpct_setPALColour (1, 2);
   4303 21 01 02      [10]   92 	ld	hl, #0x0201
   4306 E5            [11]   93 	push	hl
   4307 CD 14 45      [17]   94 	call	_cpct_setPALColour
                             95 ;src/sistemas/marcador.c:15: cpct_drawCharM2(marcador_y+7,puntos_decena);
   430A 21 DD 47      [10]   96 	ld	hl,#_puntos_decena + 0
   430D 4E            [ 7]   97 	ld	c, (hl)
   430E 06 00         [ 7]   98 	ld	b, #0x00
   4310 C5            [11]   99 	push	bc
   4311 21 87 C7      [10]  100 	ld	hl, #0xc787
   4314 E5            [11]  101 	push	hl
   4315 CD 24 46      [17]  102 	call	_cpct_drawCharM2
                            103 ;src/sistemas/marcador.c:16: cpct_drawCharM2(marcador_y+8,puntos);
   4318 21 4C 48      [10]  104 	ld	hl,#_puntos + 0
   431B 4E            [ 7]  105 	ld	c, (hl)
   431C 06 00         [ 7]  106 	ld	b, #0x00
   431E C5            [11]  107 	push	bc
   431F 21 88 C7      [10]  108 	ld	hl, #0xc788
   4322 E5            [11]  109 	push	hl
   4323 CD 24 46      [17]  110 	call	_cpct_drawCharM2
                            111 ;src/sistemas/marcador.c:17: cpct_drawCharM2(marcador_y+16,vidas);
   4326 21 DF 47      [10]  112 	ld	hl,#_vidas + 0
   4329 4E            [ 7]  113 	ld	c, (hl)
   432A 06 00         [ 7]  114 	ld	b, #0x00
   432C C5            [11]  115 	push	bc
   432D 21 90 C7      [10]  116 	ld	hl, #0xc790
   4330 E5            [11]  117 	push	hl
   4331 CD 24 46      [17]  118 	call	_cpct_drawCharM2
   4334 C9            [10]  119 	ret
                            120 	.area _CODE
                            121 	.area _INITIALIZER
                            122 	.area _CABS (ABS)

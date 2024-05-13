                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module borra
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _cpct_getScreenPtr
                             12 	.globl _cpct_drawSolidBox
                             13 	.globl _borra
                             14 	.globl _borra_objeto
                             15 ;--------------------------------------------------------
                             16 ; special function registers
                             17 ;--------------------------------------------------------
                             18 ;--------------------------------------------------------
                             19 ; ram data
                             20 ;--------------------------------------------------------
                             21 	.area _DATA
                             22 ;--------------------------------------------------------
                             23 ; ram data
                             24 ;--------------------------------------------------------
                             25 	.area _INITIALIZED
                             26 ;--------------------------------------------------------
                             27 ; absolute external ram data
                             28 ;--------------------------------------------------------
                             29 	.area _DABS (ABS)
                             30 ;--------------------------------------------------------
                             31 ; global & static initialisations
                             32 ;--------------------------------------------------------
                             33 	.area _HOME
                             34 	.area _GSINIT
                             35 	.area _GSFINAL
                             36 	.area _GSINIT
                             37 ;--------------------------------------------------------
                             38 ; Home
                             39 ;--------------------------------------------------------
                             40 	.area _HOME
                             41 	.area _HOME
                             42 ;--------------------------------------------------------
                             43 ; code
                             44 ;--------------------------------------------------------
                             45 	.area _CODE
                             46 ;src/sistemas/borra.c:4: void borra(){
                             47 ;	---------------------------------
                             48 ; Function borra
                             49 ; ---------------------------------
   4169                      50 _borra::
                             51 ;src/sistemas/borra.c:6: pvmem   =   cpct_getScreenPtr(0xc000,x_jugador,y_jugador);
   4169 3A 98 46      [13]   52 	ld	a, (_y_jugador)
   416C F5            [11]   53 	push	af
   416D 33            [ 6]   54 	inc	sp
   416E 3A 97 46      [13]   55 	ld	a, (_x_jugador)
   4171 F5            [11]   56 	push	af
   4172 33            [ 6]   57 	inc	sp
   4173 21 00 C0      [10]   58 	ld	hl, #0xc000
   4176 E5            [11]   59 	push	hl
   4177 CD 81 46      [17]   60 	call	_cpct_getScreenPtr
                             61 ;src/sistemas/borra.c:7: cpct_drawSolidBox(pvmem,0,DERECHA_W,DERECHA_H);
   417A 01 02 14      [10]   62 	ld	bc, #0x1402
   417D C5            [11]   63 	push	bc
   417E 01 00 00      [10]   64 	ld	bc, #0x0000
   4181 C5            [11]   65 	push	bc
   4182 E5            [11]   66 	push	hl
   4183 CD A8 45      [17]   67 	call	_cpct_drawSolidBox
   4186 C9            [10]   68 	ret
                             69 ;src/sistemas/borra.c:9: void borra_objeto(u8 x,u8 y,u8 ancho,u8 alto){
                             70 ;	---------------------------------
                             71 ; Function borra_objeto
                             72 ; ---------------------------------
   4187                      73 _borra_objeto::
                             74 ;src/sistemas/borra.c:11: pvmem   =   cpct_getScreenPtr(0xc000,x,y);  
   4187 21 03 00      [10]   75 	ld	hl, #3+0
   418A 39            [11]   76 	add	hl, sp
   418B 7E            [ 7]   77 	ld	a, (hl)
   418C F5            [11]   78 	push	af
   418D 33            [ 6]   79 	inc	sp
   418E 21 03 00      [10]   80 	ld	hl, #3+0
   4191 39            [11]   81 	add	hl, sp
   4192 7E            [ 7]   82 	ld	a, (hl)
   4193 F5            [11]   83 	push	af
   4194 33            [ 6]   84 	inc	sp
   4195 21 00 C0      [10]   85 	ld	hl, #0xc000
   4198 E5            [11]   86 	push	hl
   4199 CD 81 46      [17]   87 	call	_cpct_getScreenPtr
   419C 4D            [ 4]   88 	ld	c, l
   419D 44            [ 4]   89 	ld	b, h
                             90 ;src/sistemas/borra.c:12: cpct_drawSolidBox(pvmem,0,ancho,alto);
   419E 21 05 00      [10]   91 	ld	hl, #5+0
   41A1 39            [11]   92 	add	hl, sp
   41A2 7E            [ 7]   93 	ld	a, (hl)
   41A3 F5            [11]   94 	push	af
   41A4 33            [ 6]   95 	inc	sp
   41A5 21 05 00      [10]   96 	ld	hl, #5+0
   41A8 39            [11]   97 	add	hl, sp
   41A9 7E            [ 7]   98 	ld	a, (hl)
   41AA F5            [11]   99 	push	af
   41AB 33            [ 6]  100 	inc	sp
   41AC 21 00 00      [10]  101 	ld	hl, #0x0000
   41AF E5            [11]  102 	push	hl
   41B0 C5            [11]  103 	push	bc
   41B1 CD A8 45      [17]  104 	call	_cpct_drawSolidBox
   41B4 C9            [10]  105 	ret
                            106 	.area _CODE
                            107 	.area _INITIALIZER
                            108 	.area _CABS (ABS)

                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module menu
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _espera_pulsacion_tecla
                             12 	.globl _cpct_getScreenPtr
                             13 	.globl _cpct_drawStringM2
                             14 	.globl _cpct_memset_f64
                             15 	.globl _menu_juego
                             16 ;--------------------------------------------------------
                             17 ; special function registers
                             18 ;--------------------------------------------------------
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _DATA
                             23 ;--------------------------------------------------------
                             24 ; ram data
                             25 ;--------------------------------------------------------
                             26 	.area _INITIALIZED
                             27 ;--------------------------------------------------------
                             28 ; absolute external ram data
                             29 ;--------------------------------------------------------
                             30 	.area _DABS (ABS)
                             31 ;--------------------------------------------------------
                             32 ; global & static initialisations
                             33 ;--------------------------------------------------------
                             34 	.area _HOME
                             35 	.area _GSINIT
                             36 	.area _GSFINAL
                             37 	.area _GSINIT
                             38 ;--------------------------------------------------------
                             39 ; Home
                             40 ;--------------------------------------------------------
                             41 	.area _HOME
                             42 	.area _HOME
                             43 ;--------------------------------------------------------
                             44 ; code
                             45 ;--------------------------------------------------------
                             46 	.area _CODE
                             47 ;src/manager/menu.c:4: void menu_juego(){
                             48 ;	---------------------------------
                             49 ; Function menu_juego
                             50 ; ---------------------------------
   4891                      51 _menu_juego::
                             52 ;src/manager/menu.c:6: cpct_clearScreen_f64 (0);
   4891 21 00 40      [10]   53 	ld	hl, #0x4000
   4894 E5            [11]   54 	push	hl
   4895 26 00         [ 7]   55 	ld	h, #0x00
   4897 E5            [11]   56 	push	hl
   4898 26 C0         [ 7]   57 	ld	h, #0xc0
   489A E5            [11]   58 	push	hl
   489B CD 96 4B      [17]   59 	call	_cpct_memset_f64
                             60 ;src/manager/menu.c:7: cpct_clearScreen_f64(0);
   489E 21 00 40      [10]   61 	ld	hl, #0x4000
   48A1 E5            [11]   62 	push	hl
   48A2 26 00         [ 7]   63 	ld	h, #0x00
   48A4 E5            [11]   64 	push	hl
   48A5 26 C0         [ 7]   65 	ld	h, #0xc0
   48A7 E5            [11]   66 	push	hl
   48A8 CD 96 4B      [17]   67 	call	_cpct_memset_f64
                             68 ;src/manager/menu.c:8: pvmem   =  cpct_getScreenPtr((u8*)0xc000,10,20);
   48AB 21 0A 14      [10]   69 	ld	hl, #0x140a
   48AE E5            [11]   70 	push	hl
   48AF 21 00 C0      [10]   71 	ld	hl, #0xc000
   48B2 E5            [11]   72 	push	hl
   48B3 CD 10 4D      [17]   73 	call	_cpct_getScreenPtr
                             74 ;src/manager/menu.c:9: cpct_drawStringM2("Bienvenido al almacen",pvmem);
   48B6 01 D5 48      [10]   75 	ld	bc, #___str_0+0
   48B9 E5            [11]   76 	push	hl
   48BA C5            [11]   77 	push	bc
   48BB CD 7C 4A      [17]   78 	call	_cpct_drawStringM2
                             79 ;src/manager/menu.c:10: pvmem   =  cpct_getScreenPtr(0xc000,10,40);
   48BE 21 0A 28      [10]   80 	ld	hl, #0x280a
   48C1 E5            [11]   81 	push	hl
   48C2 21 00 C0      [10]   82 	ld	hl, #0xc000
   48C5 E5            [11]   83 	push	hl
   48C6 CD 10 4D      [17]   84 	call	_cpct_getScreenPtr
                             85 ;src/manager/menu.c:11: cpct_drawStringM2("pulsa una tecla",pvmem);
   48C9 01 EB 48      [10]   86 	ld	bc, #___str_1+0
   48CC E5            [11]   87 	push	hl
   48CD C5            [11]   88 	push	bc
   48CE CD 7C 4A      [17]   89 	call	_cpct_drawStringM2
                             90 ;src/manager/menu.c:12: espera_pulsacion_tecla();
   48D1 CD 2D 46      [17]   91 	call	_espera_pulsacion_tecla
   48D4 C9            [10]   92 	ret
   48D5                      93 ___str_0:
   48D5 42 69 65 6E 76 65    94 	.ascii "Bienvenido al almacen"
        6E 69 64 6F 20 61
        6C 20 61 6C 6D 61
        63 65 6E
   48EA 00                   95 	.db 0x00
   48EB                      96 ___str_1:
   48EB 70 75 6C 73 61 20    97 	.ascii "pulsa una tecla"
        75 6E 61 20 74 65
        63 6C 61
   48FA 00                   98 	.db 0x00
                             99 	.area _CODE
                            100 	.area _INITIALIZER
                            101 	.area _CABS (ABS)

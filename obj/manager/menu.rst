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
   4912                      51 _menu_juego::
                             52 ;src/manager/menu.c:6: cpct_clearScreen_f64 (0);
   4912 21 00 40      [10]   53 	ld	hl, #0x4000
   4915 E5            [11]   54 	push	hl
   4916 26 00         [ 7]   55 	ld	h, #0x00
   4918 E5            [11]   56 	push	hl
   4919 26 C0         [ 7]   57 	ld	h, #0xc0
   491B E5            [11]   58 	push	hl
   491C CD 45 4C      [17]   59 	call	_cpct_memset_f64
                             60 ;src/manager/menu.c:7: cpct_clearScreen_f64(0);
   491F 21 00 40      [10]   61 	ld	hl, #0x4000
   4922 E5            [11]   62 	push	hl
   4923 26 00         [ 7]   63 	ld	h, #0x00
   4925 E5            [11]   64 	push	hl
   4926 26 C0         [ 7]   65 	ld	h, #0xc0
   4928 E5            [11]   66 	push	hl
   4929 CD 45 4C      [17]   67 	call	_cpct_memset_f64
                             68 ;src/manager/menu.c:8: pvmem   =  cpct_getScreenPtr((u8*)0xc000,10,20);
   492C 21 0A 14      [10]   69 	ld	hl, #0x140a
   492F E5            [11]   70 	push	hl
   4930 21 00 C0      [10]   71 	ld	hl, #0xc000
   4933 E5            [11]   72 	push	hl
   4934 CD E8 55      [17]   73 	call	_cpct_getScreenPtr
                             74 ;src/manager/menu.c:9: cpct_drawStringM2("Bienvenido al almacen",pvmem);
   4937 01 56 49      [10]   75 	ld	bc, #___str_0+0
   493A E5            [11]   76 	push	hl
   493B C5            [11]   77 	push	bc
   493C CD 2B 4B      [17]   78 	call	_cpct_drawStringM2
                             79 ;src/manager/menu.c:10: pvmem   =  cpct_getScreenPtr(0xc000,10,40);
   493F 21 0A 28      [10]   80 	ld	hl, #0x280a
   4942 E5            [11]   81 	push	hl
   4943 21 00 C0      [10]   82 	ld	hl, #0xc000
   4946 E5            [11]   83 	push	hl
   4947 CD E8 55      [17]   84 	call	_cpct_getScreenPtr
                             85 ;src/manager/menu.c:11: cpct_drawStringM2("pulsa una tecla",pvmem);
   494A 01 6C 49      [10]   86 	ld	bc, #___str_1+0
   494D E5            [11]   87 	push	hl
   494E C5            [11]   88 	push	bc
   494F CD 2B 4B      [17]   89 	call	_cpct_drawStringM2
                             90 ;src/manager/menu.c:12: espera_pulsacion_tecla();
   4952 CD 9C 46      [17]   91 	call	_espera_pulsacion_tecla
   4955 C9            [10]   92 	ret
   4956                      93 ___str_0:
   4956 42 69 65 6E 76 65    94 	.ascii "Bienvenido al almacen"
        6E 69 64 6F 20 61
        6C 20 61 6C 6D 61
        63 65 6E
   496B 00                   95 	.db 0x00
   496C                      96 ___str_1:
   496C 70 75 6C 73 61 20    97 	.ascii "pulsa una tecla"
        75 6E 61 20 74 65
        63 6C 61
   497B 00                   98 	.db 0x00
                             99 	.area _CODE
                            100 	.area _INITIALIZER
                            101 	.area _CABS (ABS)

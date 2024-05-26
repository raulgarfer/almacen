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
                             11 	.globl _menu_juego
                             12 	.globl _espera_pulsacion_tecla
                             13 	.globl _cpct_getScreenPtr
                             14 	.globl _cpct_drawStringM2
                             15 	.globl _cpct_memset_f64
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
   43C7                      51 _menu_juego::
                             52 ;src/manager/menu.c:6: cpct_clearScreen_f64(0);
   43C7 21 00 40      [10]   53 	ld	hl, #0x4000
   43CA E5            [11]   54 	push	hl
   43CB 26 00         [ 7]   55 	ld	h, #0x00
   43CD E5            [11]   56 	push	hl
   43CE 26 C0         [ 7]   57 	ld	h, #0xc0
   43D0 E5            [11]   58 	push	hl
   43D1 CD 44 46      [17]   59 	call	_cpct_memset_f64
                             60 ;src/manager/menu.c:7: pvmem   =  cpct_getScreenPtr(0xc000,10,20);
   43D4 21 0A 14      [10]   61 	ld	hl, #0x140a
   43D7 E5            [11]   62 	push	hl
   43D8 21 00 C0      [10]   63 	ld	hl, #0xc000
   43DB E5            [11]   64 	push	hl
   43DC CD A8 47      [17]   65 	call	_cpct_getScreenPtr
                             66 ;src/manager/menu.c:8: cpct_drawStringM2("Bienvenido al almacen",pvmem);
   43DF 01 FE 43      [10]   67 	ld	bc, #___str_0+0
   43E2 E5            [11]   68 	push	hl
   43E3 C5            [11]   69 	push	bc
   43E4 CD 25 45      [17]   70 	call	_cpct_drawStringM2
                             71 ;src/manager/menu.c:9: pvmem   =  cpct_getScreenPtr(0xc000,10,40);
   43E7 21 0A 28      [10]   72 	ld	hl, #0x280a
   43EA E5            [11]   73 	push	hl
   43EB 21 00 C0      [10]   74 	ld	hl, #0xc000
   43EE E5            [11]   75 	push	hl
   43EF CD A8 47      [17]   76 	call	_cpct_getScreenPtr
                             77 ;src/manager/menu.c:10: cpct_drawStringM2("pulsa una tecla",pvmem);
   43F2 01 14 44      [10]   78 	ld	bc, #___str_1+0
   43F5 E5            [11]   79 	push	hl
   43F6 C5            [11]   80 	push	bc
   43F7 CD 25 45      [17]   81 	call	_cpct_drawStringM2
                             82 ;src/manager/menu.c:11: espera_pulsacion_tecla();
   43FA CD BC 42      [17]   83 	call	_espera_pulsacion_tecla
   43FD C9            [10]   84 	ret
   43FE                      85 ___str_0:
   43FE 42 69 65 6E 76 65    86 	.ascii "Bienvenido al almacen"
        6E 69 64 6F 20 61
        6C 20 61 6C 6D 61
        63 65 6E
   4413 00                   87 	.db 0x00
   4414                      88 ___str_1:
   4414 70 75 6C 73 61 20    89 	.ascii "pulsa una tecla"
        75 6E 61 20 74 65
        63 6C 61
   4423 00                   90 	.db 0x00
                             91 	.area _CODE
                             92 	.area _INITIALIZER
                             93 	.area _CABS (ABS)

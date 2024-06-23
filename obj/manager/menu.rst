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
                             13 	.globl _cpct_setVideoMode
                             14 	.globl _cpct_drawStringM0
                             15 	.globl _cpct_memset_f64
                             16 	.globl _retromaniac
                             17 	.globl _menu_juego
                             18 ;--------------------------------------------------------
                             19 ; special function registers
                             20 ;--------------------------------------------------------
                             21 ;--------------------------------------------------------
                             22 ; ram data
                             23 ;--------------------------------------------------------
                             24 	.area _DATA
                             25 ;--------------------------------------------------------
                             26 ; ram data
                             27 ;--------------------------------------------------------
                             28 	.area _INITIALIZED
                             29 ;--------------------------------------------------------
                             30 ; absolute external ram data
                             31 ;--------------------------------------------------------
                             32 	.area _DABS (ABS)
                             33 ;--------------------------------------------------------
                             34 ; global & static initialisations
                             35 ;--------------------------------------------------------
                             36 	.area _HOME
                             37 	.area _GSINIT
                             38 	.area _GSFINAL
                             39 	.area _GSINIT
                             40 ;--------------------------------------------------------
                             41 ; Home
                             42 ;--------------------------------------------------------
                             43 	.area _HOME
                             44 	.area _HOME
                             45 ;--------------------------------------------------------
                             46 ; code
                             47 ;--------------------------------------------------------
                             48 	.area _CODE
                             49 ;src/manager/menu.c:6: void menu_juego(){
                             50 ;	---------------------------------
                             51 ; Function menu_juego
                             52 ; ---------------------------------
   87A3                      53 _menu_juego::
                             54 ;src/manager/menu.c:8: cpct_setVideoMode(0);
   87A3 2E 00         [ 7]   55 	ld	l, #0x00
   87A5 CD E5 8B      [17]   56 	call	_cpct_setVideoMode
                             57 ;src/manager/menu.c:9: cpct_clearScreen_f64 (0);
   87A8 21 00 40      [10]   58 	ld	hl, #0x4000
   87AB E5            [11]   59 	push	hl
   87AC 26 00         [ 7]   60 	ld	h, #0x00
   87AE E5            [11]   61 	push	hl
   87AF 26 C0         [ 7]   62 	ld	h, #0xc0
   87B1 E5            [11]   63 	push	hl
   87B2 CD 92 8B      [17]   64 	call	_cpct_memset_f64
                             65 ;src/manager/menu.c:10: cpct_clearScreen_f64(0);
   87B5 21 00 40      [10]   66 	ld	hl, #0x4000
   87B8 E5            [11]   67 	push	hl
   87B9 26 00         [ 7]   68 	ld	h, #0x00
   87BB E5            [11]   69 	push	hl
   87BC 26 C0         [ 7]   70 	ld	h, #0xc0
   87BE E5            [11]   71 	push	hl
   87BF CD 92 8B      [17]   72 	call	_cpct_memset_f64
                             73 ;src/manager/menu.c:11: pvmem   =  cpct_getScreenPtr((u8*)0xc000,10,20);
   87C2 21 0A 14      [10]   74 	ld	hl, #0x140a
   87C5 E5            [11]   75 	push	hl
   87C6 21 00 C0      [10]   76 	ld	hl, #0xc000
   87C9 E5            [11]   77 	push	hl
   87CA CD 35 95      [17]   78 	call	_cpct_getScreenPtr
                             79 ;src/manager/menu.c:12: cpct_drawStringM0("Bienvenido al almacen",pvmem);
   87CD 01 06 88      [10]   80 	ld	bc, #___str_0+0
   87D0 E5            [11]   81 	push	hl
   87D1 C5            [11]   82 	push	bc
   87D2 CD DA 89      [17]   83 	call	_cpct_drawStringM0
                             84 ;src/manager/menu.c:13: pvmem   =  cpct_getScreenPtr(0xc000,10,40);
   87D5 21 0A 28      [10]   85 	ld	hl, #0x280a
   87D8 E5            [11]   86 	push	hl
   87D9 21 00 C0      [10]   87 	ld	hl, #0xc000
   87DC E5            [11]   88 	push	hl
   87DD CD 35 95      [17]   89 	call	_cpct_getScreenPtr
                             90 ;src/manager/menu.c:14: cpct_drawStringM0("pulsa una tecla",pvmem);
   87E0 01 1C 88      [10]   91 	ld	bc, #___str_1+0
   87E3 E5            [11]   92 	push	hl
   87E4 C5            [11]   93 	push	bc
   87E5 CD DA 89      [17]   94 	call	_cpct_drawStringM0
                             95 ;src/manager/menu.c:15: pvmem   =  cpct_getScreenPtr(0xc000,10,50);
   87E8 21 0A 32      [10]   96 	ld	hl, #0x320a
   87EB E5            [11]   97 	push	hl
   87EC 21 00 C0      [10]   98 	ld	hl, #0xc000
   87EF E5            [11]   99 	push	hl
   87F0 CD 35 95      [17]  100 	call	_cpct_getScreenPtr
                            101 ;src/manager/menu.c:17: espera_pulsacion_tecla();
   87F3 CD 06 85      [17]  102 	call	_espera_pulsacion_tecla
                            103 ;src/manager/menu.c:18: cpct_setVideoMode(2);
   87F6 2E 02         [ 7]  104 	ld	l, #0x02
   87F8 CD E5 8B      [17]  105 	call	_cpct_setVideoMode
   87FB C9            [10]  106 	ret
   87FC                     107 _retromaniac:
   87FC 01                  108 	.db #0x01	; 1
   87FD 14                  109 	.db #0x14	; 20
   87FE 3C                  110 	.db #0x3c	; 60
   87FF 00                  111 	.db #0x00	;  0
   8800 00                  112 	.db #0x00	;  0
   8801 50                  113 	.db #0x50	; 80	'P'
   8802 C8                  114 	.db #0xc8	; 200
   8803 F4 41               115 	.dw _granada
   8805 00                  116 	.db #0x00	; 0
   8806                     117 ___str_0:
   8806 42 69 65 6E 76 65   118 	.ascii "Bienvenido al almacen"
        6E 69 64 6F 20 61
        6C 20 61 6C 6D 61
        63 65 6E
   881B 00                  119 	.db 0x00
   881C                     120 ___str_1:
   881C 70 75 6C 73 61 20   121 	.ascii "pulsa una tecla"
        75 6E 61 20 74 65
        63 6C 61
   882B 00                  122 	.db 0x00
                            123 	.area _CODE
                            124 	.area _INITIALIZER
                            125 	.area _CABS (ABS)

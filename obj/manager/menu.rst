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
   87A6                      53 _menu_juego::
                             54 ;src/manager/menu.c:8: cpct_setVideoMode(0);
   87A6 2E 00         [ 7]   55 	ld	l, #0x00
   87A8 CD F5 8B      [17]   56 	call	_cpct_setVideoMode
                             57 ;src/manager/menu.c:9: cpct_clearScreen_f64 (0);
   87AB 21 00 40      [10]   58 	ld	hl, #0x4000
   87AE E5            [11]   59 	push	hl
   87AF 26 00         [ 7]   60 	ld	h, #0x00
   87B1 E5            [11]   61 	push	hl
   87B2 26 C0         [ 7]   62 	ld	h, #0xc0
   87B4 E5            [11]   63 	push	hl
   87B5 CD A2 8B      [17]   64 	call	_cpct_memset_f64
                             65 ;src/manager/menu.c:10: cpct_clearScreen_f64(0);
   87B8 21 00 40      [10]   66 	ld	hl, #0x4000
   87BB E5            [11]   67 	push	hl
   87BC 26 00         [ 7]   68 	ld	h, #0x00
   87BE E5            [11]   69 	push	hl
   87BF 26 C0         [ 7]   70 	ld	h, #0xc0
   87C1 E5            [11]   71 	push	hl
   87C2 CD A2 8B      [17]   72 	call	_cpct_memset_f64
                             73 ;src/manager/menu.c:12: pvmem   =  cpct_getScreenPtr((u8*)0xc000,10,20);
   87C5 21 0A 14      [10]   74 	ld	hl, #0x140a
   87C8 E5            [11]   75 	push	hl
   87C9 21 00 C0      [10]   76 	ld	hl, #0xc000
   87CC E5            [11]   77 	push	hl
   87CD CD 45 95      [17]   78 	call	_cpct_getScreenPtr
                             79 ;src/manager/menu.c:13: cpct_drawStringM0("Bienvenido al almacen",pvmem);
   87D0 01 09 88      [10]   80 	ld	bc, #___str_0+0
   87D3 E5            [11]   81 	push	hl
   87D4 C5            [11]   82 	push	bc
   87D5 CD EA 89      [17]   83 	call	_cpct_drawStringM0
                             84 ;src/manager/menu.c:14: pvmem   =  cpct_getScreenPtr(0xc000,10,40);
   87D8 21 0A 28      [10]   85 	ld	hl, #0x280a
   87DB E5            [11]   86 	push	hl
   87DC 21 00 C0      [10]   87 	ld	hl, #0xc000
   87DF E5            [11]   88 	push	hl
   87E0 CD 45 95      [17]   89 	call	_cpct_getScreenPtr
                             90 ;src/manager/menu.c:15: cpct_drawStringM0("pulsa una tecla",pvmem);
   87E3 01 1F 88      [10]   91 	ld	bc, #___str_1+0
   87E6 E5            [11]   92 	push	hl
   87E7 C5            [11]   93 	push	bc
   87E8 CD EA 89      [17]   94 	call	_cpct_drawStringM0
                             95 ;src/manager/menu.c:16: pvmem   =  cpct_getScreenPtr(0xc000,10,50);
   87EB 21 0A 32      [10]   96 	ld	hl, #0x320a
   87EE E5            [11]   97 	push	hl
   87EF 21 00 C0      [10]   98 	ld	hl, #0xc000
   87F2 E5            [11]   99 	push	hl
   87F3 CD 45 95      [17]  100 	call	_cpct_getScreenPtr
                            101 ;src/manager/menu.c:18: espera_pulsacion_tecla();
   87F6 CD 09 85      [17]  102 	call	_espera_pulsacion_tecla
                            103 ;src/manager/menu.c:19: cpct_setVideoMode(2);
   87F9 2E 02         [ 7]  104 	ld	l, #0x02
   87FB CD F5 8B      [17]  105 	call	_cpct_setVideoMode
   87FE C9            [10]  106 	ret
   87FF                     107 _retromaniac:
   87FF 01                  108 	.db #0x01	; 1
   8800 14                  109 	.db #0x14	; 20
   8801 3C                  110 	.db #0x3c	; 60
   8802 00                  111 	.db #0x00	;  0
   8803 00                  112 	.db #0x00	;  0
   8804 50                  113 	.db #0x50	; 80	'P'
   8805 C8                  114 	.db #0xc8	; 200
   8806 F4 41               115 	.dw _granada
   8808 00                  116 	.db #0x00	; 0
   8809                     117 ___str_0:
   8809 42 69 65 6E 76 65   118 	.ascii "Bienvenido al almacen"
        6E 69 64 6F 20 61
        6C 20 61 6C 6D 61
        63 65 6E
   881E 00                  119 	.db 0x00
   881F                     120 ___str_1:
   881F 70 75 6C 73 61 20   121 	.ascii "pulsa una tecla"
        75 6E 61 20 74 65
        63 6C 61
   882E 00                  122 	.db 0x00
                            123 	.area _CODE
                            124 	.area _INITIALIZER
                            125 	.area _CABS (ABS)

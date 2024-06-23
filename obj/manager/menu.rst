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
                             15 	.globl _cpct_drawSprite
                             16 	.globl _cpct_memset_f64
                             17 	.globl _retromaniac
                             18 	.globl _menu_juego
                             19 ;--------------------------------------------------------
                             20 ; special function registers
                             21 ;--------------------------------------------------------
                             22 ;--------------------------------------------------------
                             23 ; ram data
                             24 ;--------------------------------------------------------
                             25 	.area _DATA
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
                             50 ;src/manager/menu.c:8: void menu_juego(){
                             51 ;	---------------------------------
                             52 ; Function menu_juego
                             53 ; ---------------------------------
   85B3                      54 _menu_juego::
                             55 ;src/manager/menu.c:10: cpct_setVideoMode(0);
   85B3 2E 00         [ 7]   56 	ld	l, #0x00
   85B5 CD CF 8C      [17]   57 	call	_cpct_setVideoMode
                             58 ;src/manager/menu.c:11: cpct_clearScreen_f64 (0);
   85B8 21 00 40      [10]   59 	ld	hl, #0x4000
   85BB E5            [11]   60 	push	hl
   85BC 26 00         [ 7]   61 	ld	h, #0x00
   85BE E5            [11]   62 	push	hl
   85BF 26 C0         [ 7]   63 	ld	h, #0xc0
   85C1 E5            [11]   64 	push	hl
   85C2 CD 7C 8C      [17]   65 	call	_cpct_memset_f64
                             66 ;src/manager/menu.c:12: cpct_clearScreen_f64(0);
   85C5 21 00 40      [10]   67 	ld	hl, #0x4000
   85C8 E5            [11]   68 	push	hl
   85C9 26 00         [ 7]   69 	ld	h, #0x00
   85CB E5            [11]   70 	push	hl
   85CC 26 C0         [ 7]   71 	ld	h, #0xc0
   85CE E5            [11]   72 	push	hl
   85CF CD 7C 8C      [17]   73 	call	_cpct_memset_f64
                             74 ;src/manager/menu.c:13: pvmem   =  cpct_getScreenPtr((u8*)0xc000,0,20);
   85D2 21 00 14      [10]   75 	ld	hl, #0x1400
   85D5 E5            [11]   76 	push	hl
   85D6 26 C0         [ 7]   77 	ld	h, #0xc0
   85D8 E5            [11]   78 	push	hl
   85D9 CD F6 8D      [17]   79 	call	_cpct_getScreenPtr
                             80 ;src/manager/menu.c:14: cpct_drawStringM0("Bienvenido a almacen",pvmem);
   85DC 01 33 86      [10]   81 	ld	bc, #___str_0+0
   85DF E5            [11]   82 	push	hl
   85E0 C5            [11]   83 	push	bc
   85E1 CD 1F 8A      [17]   84 	call	_cpct_drawStringM0
                             85 ;src/manager/menu.c:15: pvmem   =  cpct_getScreenPtr(0xc000,10,40);
   85E4 21 0A 28      [10]   86 	ld	hl, #0x280a
   85E7 E5            [11]   87 	push	hl
   85E8 21 00 C0      [10]   88 	ld	hl, #0xc000
   85EB E5            [11]   89 	push	hl
   85EC CD F6 8D      [17]   90 	call	_cpct_getScreenPtr
                             91 ;src/manager/menu.c:16: cpct_drawStringM0("pulsa una tecla",pvmem);
   85EF 01 48 86      [10]   92 	ld	bc, #___str_1+0
   85F2 E5            [11]   93 	push	hl
   85F3 C5            [11]   94 	push	bc
   85F4 CD 1F 8A      [17]   95 	call	_cpct_drawStringM0
                             96 ;src/manager/menu.c:17: pvmem   =  cpct_getScreenPtr(0xc000,0,80);
   85F7 21 00 50      [10]   97 	ld	hl, #0x5000
   85FA E5            [11]   98 	push	hl
   85FB 26 C0         [ 7]   99 	ld	h, #0xc0
   85FD E5            [11]  100 	push	hl
   85FE CD F6 8D      [17]  101 	call	_cpct_getScreenPtr
                            102 ;src/manager/menu.c:18: cpct_drawStringM0("Teclas: Q A Esc",pvmem);
   8601 01 58 86      [10]  103 	ld	bc, #___str_2+0
   8604 E5            [11]  104 	push	hl
   8605 C5            [11]  105 	push	bc
   8606 CD 1F 8A      [17]  106 	call	_cpct_drawStringM0
                            107 ;src/manager/menu.c:19: pvmem   =  cpct_getScreenPtr(0xc000,10,50);
   8609 21 0A 32      [10]  108 	ld	hl, #0x320a
   860C E5            [11]  109 	push	hl
   860D 21 00 C0      [10]  110 	ld	hl, #0xc000
   8610 E5            [11]  111 	push	hl
   8611 CD F6 8D      [17]  112 	call	_cpct_getScreenPtr
                            113 ;src/manager/menu.c:20: cpct_drawSprite (granada, pvmem, GRANADA_W,GRANADA_H);
   8614 01 00 40      [10]  114 	ld	bc, #_granada+0
   8617 11 50 C8      [10]  115 	ld	de, #0xc850
   861A D5            [11]  116 	push	de
   861B E5            [11]  117 	push	hl
   861C C5            [11]  118 	push	bc
   861D CD EC 8A      [17]  119 	call	_cpct_drawSprite
                            120 ;src/manager/menu.c:21: espera_pulsacion_tecla();
   8620 CD 12 83      [17]  121 	call	_espera_pulsacion_tecla
                            122 ;src/manager/menu.c:22: cpct_setVideoMode(2);
   8623 2E 02         [ 7]  123 	ld	l, #0x02
   8625 CD CF 8C      [17]  124 	call	_cpct_setVideoMode
   8628 C9            [10]  125 	ret
   8629                     126 _retromaniac:
   8629 01                  127 	.db #0x01	; 1
   862A 14                  128 	.db #0x14	; 20
   862B 3C                  129 	.db #0x3c	; 60
   862C 00                  130 	.db #0x00	;  0
   862D 00                  131 	.db #0x00	;  0
   862E 50                  132 	.db #0x50	; 80	'P'
   862F C8                  133 	.db #0xc8	; 200
   8630 00 40               134 	.dw _granada
   8632 00                  135 	.db #0x00	; 0
   8633                     136 ___str_0:
   8633 42 69 65 6E 76 65   137 	.ascii "Bienvenido a almacen"
        6E 69 64 6F 20 61
        20 61 6C 6D 61 63
        65 6E
   8647 00                  138 	.db 0x00
   8648                     139 ___str_1:
   8648 70 75 6C 73 61 20   140 	.ascii "pulsa una tecla"
        75 6E 61 20 74 65
        63 6C 61
   8657 00                  141 	.db 0x00
   8658                     142 ___str_2:
   8658 54 65 63 6C 61 73   143 	.ascii "Teclas: Q A Esc"
        3A 20 51 20 41 20
        45 73 63
   8667 00                  144 	.db 0x00
                            145 	.area _CODE
                            146 	.area _INITIALIZER
                            147 	.area _CABS (ABS)

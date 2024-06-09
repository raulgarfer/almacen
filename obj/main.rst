                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module main
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _cambiar_sprites
                             12 	.globl _main
                             13 	.globl _pinta_puntos
                             14 	.globl _pinta_marcador
                             15 	.globl _menu_juego
                             16 	.globl _inicia_objetos
                             17 	.globl _pintar_sprites
                             18 	.globl _fisica_objetos
                             19 	.globl _iniciar_valores
                             20 	.globl _fisica
                             21 	.globl _teclado
                             22 	.globl _borra
                             23 	.globl _control_interrupciones
                             24 	.globl _cpct_akp_musicInit
                             25 	.globl _cpct_waitVSYNC
                             26 	.globl _cpct_setVideoMode
                             27 	.globl _cpct_disableFirmware
                             28 	.globl _vmem_ahora
                             29 	.globl _a_jugar
                             30 	.globl _mientras_juego
                             31 ;--------------------------------------------------------
                             32 ; special function registers
                             33 ;--------------------------------------------------------
                             34 ;--------------------------------------------------------
                             35 ; ram data
                             36 ;--------------------------------------------------------
                             37 	.area _DATA
   5610                      38 _vmem_ahora::
   5610                      39 	.ds 2
                             40 ;--------------------------------------------------------
                             41 ; ram data
                             42 ;--------------------------------------------------------
                             43 	.area _INITIALIZED
                             44 ;--------------------------------------------------------
                             45 ; absolute external ram data
                             46 ;--------------------------------------------------------
                             47 	.area _DABS (ABS)
                             48 ;--------------------------------------------------------
                             49 ; global & static initialisations
                             50 ;--------------------------------------------------------
                             51 	.area _HOME
                             52 	.area _GSINIT
                             53 	.area _GSFINAL
                             54 	.area _GSINIT
                             55 ;--------------------------------------------------------
                             56 ; Home
                             57 ;--------------------------------------------------------
                             58 	.area _HOME
                             59 	.area _HOME
                             60 ;--------------------------------------------------------
                             61 ; code
                             62 ;--------------------------------------------------------
                             63 	.area _CODE
                             64 ;src/main.c:7: void main(void) {
                             65 ;	---------------------------------
                             66 ; Function main
                             67 ; ---------------------------------
   448E                      68 _main::
                             69 ;src/main.c:8: cpct_disableFirmware();
   448E CD FF 54      [17]   70 	call	_cpct_disableFirmware
                             71 ;src/main.c:9: mover_pila();
   4491 CD 7C 49      [17]   72 	call	_mover_pila
                             73 ;src/main.c:10: cpct_akp_musicInit (Demo);
   4494 21 D8 79      [10]   74 	ld	hl, #_Demo
   4497 E5            [11]   75 	push	hl
   4498 CD DB 53      [17]   76 	call	_cpct_akp_musicInit
   449B F1            [10]   77 	pop	af
                             78 ;src/main.c:11: control_interrupciones();
   449C CD DD 49      [17]   79 	call	_control_interrupciones
                             80 ;src/main.c:12: cpct_setVideoMode(2);
   449F 2E 02         [ 7]   81 	ld	l, #0x02
   44A1 CD 98 4C      [17]   82 	call	_cpct_setVideoMode
                             83 ;src/main.c:13: borrar_ambas_pantallas();
   44A4 CD 82 49      [17]   84 	call	_borrar_ambas_pantallas
                             85 ;src/main.c:14: inicia_objetos();
   44A7 CD 37 45      [17]   86 	call	_inicia_objetos
                             87 ;src/main.c:15: menu_juego();
   44AA CD 12 49      [17]   88 	call	_menu_juego
                             89 ;src/main.c:16: a_jugar();}
   44AD C3 B0 44      [10]   90 	jp  _a_jugar
                             91 ;src/main.c:17: void a_jugar(){  
                             92 ;	---------------------------------
                             93 ; Function a_jugar
                             94 ; ---------------------------------
   44B0                      95 _a_jugar::
                             96 ;src/main.c:19: borrar_ambas_pantallas();
   44B0 CD 82 49      [17]   97 	call	_borrar_ambas_pantallas
                             98 ;src/main.c:20: iniciar_valores();
   44B3 CD EA 44      [17]   99 	call	_iniciar_valores
                            100 ;src/main.c:21: pinta_marcador();
   44B6 CD 12 48      [17]  101 	call	_pinta_marcador
                            102 ;src/main.c:22: pinta_puntos();
   44B9 CD 44 48      [17]  103 	call	_pinta_puntos
                            104 ;src/main.c:23: mientras_juego();
   44BC C3 BF 44      [10]  105 	jp  _mientras_juego
                            106 ;src/main.c:27: void mientras_juego(){
                            107 ;	---------------------------------
                            108 ; Function mientras_juego
                            109 ; ---------------------------------
   44BF                     110 _mientras_juego::
                            111 ;src/main.c:28: while(1){
   44BF                     112 00102$:
                            113 ;src/main.c:29: borra();
   44BF CD 83 45      [17]  114 	call	_borra
                            115 ;src/main.c:30: teclado();
   44C2 CD DC 48      [17]  116 	call	_teclado
                            117 ;src/main.c:31: fisica();
   44C5 CD B0 46      [17]  118 	call	_fisica
                            119 ;src/main.c:32: cambiar_sprites();
   44C8 CD D6 44      [17]  120 	call	_cambiar_sprites
                            121 ;src/main.c:33: fisica_objetos();
   44CB CD 41 47      [17]  122 	call	_fisica_objetos
                            123 ;src/main.c:34: pintar_sprites();
   44CE CD 84 48      [17]  124 	call	_pintar_sprites
                            125 ;src/main.c:35: cpct_waitVSYNC();
   44D1 CD 90 4C      [17]  126 	call	_cpct_waitVSYNC
   44D4 18 E9         [12]  127 	jr	00102$
                            128 ;src/main.c:38: void cambiar_sprites(){
                            129 ;	---------------------------------
                            130 ; Function cambiar_sprites
                            131 ; ---------------------------------
   44D6                     132 _cambiar_sprites::
                            133 ;src/main.c:39: if (vaso_lleno==vacio)
   44D6 3A A5 56      [13]  134 	ld	a,(#_vaso_lleno + 0)
   44D9 B7            [ 4]  135 	or	a, a
   44DA 20 07         [12]  136 	jr	NZ,00102$
                            137 ;src/main.c:40: {array[0].sprite =   derecha_2;}
   44DC 21 C4 43      [10]  138 	ld	hl, #_derecha_2
   44DF 22 2E 56      [16]  139 	ld	((_array + 0x0007)), hl
   44E2 C9            [10]  140 	ret
   44E3                     141 00102$:
                            142 ;src/main.c:41: else array[0].sprite =  derecha_2_lleno;}
   44E3 21 24 43      [10]  143 	ld	hl, #_derecha_2_lleno
   44E6 22 2E 56      [16]  144 	ld	((_array + 0x0007)), hl
   44E9 C9            [10]  145 	ret
                            146 	.area _CODE
                            147 	.area _INITIALIZER
                            148 	.area _CABS (ABS)

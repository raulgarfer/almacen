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
   55F3                      38 _vmem_ahora::
   55F3                      39 	.ds 2
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
   448E CD E2 54      [17]   70 	call	_cpct_disableFirmware
                             71 ;src/main.c:9: mover_pila();
   4491 CD 5A 49      [17]   72 	call	_mover_pila
                             73 ;src/main.c:10: cpct_akp_musicInit (Demo);
   4494 21 D8 79      [10]   74 	ld	hl, #_Demo
   4497 E5            [11]   75 	push	hl
   4498 CD BE 53      [17]   76 	call	_cpct_akp_musicInit
   449B F1            [10]   77 	pop	af
                             78 ;src/main.c:11: control_interrupciones();
   449C CD BB 49      [17]   79 	call	_control_interrupciones
                             80 ;src/main.c:12: cpct_setVideoMode(2);
   449F 2E 02         [ 7]   81 	ld	l, #0x02
   44A1 CD 7B 4C      [17]   82 	call	_cpct_setVideoMode
                             83 ;src/main.c:13: borrar_ambas_pantallas();
   44A4 CD 60 49      [17]   84 	call	_borrar_ambas_pantallas
                             85 ;src/main.c:14: inicia_objetos();
   44A7 CD 3A 45      [17]   86 	call	_inicia_objetos
                             87 ;src/main.c:15: menu_juego();
   44AA CD F0 48      [17]   88 	call	_menu_juego
                             89 ;src/main.c:16: a_jugar();}
   44AD C3 B0 44      [10]   90 	jp  _a_jugar
                             91 ;src/main.c:17: void a_jugar(){  
                             92 ;	---------------------------------
                             93 ; Function a_jugar
                             94 ; ---------------------------------
   44B0                      95 _a_jugar::
                             96 ;src/main.c:19: borrar_ambas_pantallas();
   44B0 CD 60 49      [17]   97 	call	_borrar_ambas_pantallas
                             98 ;src/main.c:20: iniciar_valores();
   44B3 CD ED 44      [17]   99 	call	_iniciar_valores
                            100 ;src/main.c:21: inicia_objetos();
   44B6 CD 3A 45      [17]  101 	call	_inicia_objetos
                            102 ;src/main.c:22: pinta_marcador();
   44B9 CD E3 47      [17]  103 	call	_pinta_marcador
                            104 ;src/main.c:23: pinta_puntos();
   44BC CD 15 48      [17]  105 	call	_pinta_puntos
                            106 ;src/main.c:24: mientras_juego();
   44BF C3 C2 44      [10]  107 	jp  _mientras_juego
                            108 ;src/main.c:28: void mientras_juego(){
                            109 ;	---------------------------------
                            110 ; Function mientras_juego
                            111 ; ---------------------------------
   44C2                     112 _mientras_juego::
                            113 ;src/main.c:29: while(1){
   44C2                     114 00102$:
                            115 ;src/main.c:30: borra();
   44C2 CD 81 45      [17]  116 	call	_borra
                            117 ;src/main.c:31: teclado();
   44C5 CD AD 48      [17]  118 	call	_teclado
                            119 ;src/main.c:32: fisica();
   44C8 CD 8A 46      [17]  120 	call	_fisica
                            121 ;src/main.c:33: cambiar_sprites();
   44CB CD D9 44      [17]  122 	call	_cambiar_sprites
                            123 ;src/main.c:34: fisica_objetos();
   44CE CD 0C 47      [17]  124 	call	_fisica_objetos
                            125 ;src/main.c:35: pintar_sprites();
   44D1 CD 55 48      [17]  126 	call	_pintar_sprites
                            127 ;src/main.c:36: cpct_waitVSYNC();
   44D4 CD 73 4C      [17]  128 	call	_cpct_waitVSYNC
   44D7 18 E9         [12]  129 	jr	00102$
                            130 ;src/main.c:39: void cambiar_sprites(){
                            131 ;	---------------------------------
                            132 ; Function cambiar_sprites
                            133 ; ---------------------------------
   44D9                     134 _cambiar_sprites::
                            135 ;src/main.c:40: if (vaso_lleno==vacio)
   44D9 3A 88 56      [13]  136 	ld	a,(#_vaso_lleno + 0)
   44DC B7            [ 4]  137 	or	a, a
   44DD 20 07         [12]  138 	jr	NZ,00102$
                            139 ;src/main.c:41: {array[0].sprite =   derecha_2;}
   44DF 21 C4 43      [10]  140 	ld	hl, #_derecha_2
   44E2 22 11 56      [16]  141 	ld	((_array + 0x0007)), hl
   44E5 C9            [10]  142 	ret
   44E6                     143 00102$:
                            144 ;src/main.c:42: else array[0].sprite =  derecha_2_lleno;}
   44E6 21 24 43      [10]  145 	ld	hl, #_derecha_2_lleno
   44E9 22 11 56      [16]  146 	ld	((_array + 0x0007)), hl
   44EC C9            [10]  147 	ret
                            148 	.area _CODE
                            149 	.area _INITIALIZER
                            150 	.area _CABS (ABS)

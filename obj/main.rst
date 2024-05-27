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
                             11 	.globl _a_jugar
                             12 	.globl _main
                             13 	.globl _inicia_objetos
                             14 	.globl _pintar_sprites
                             15 	.globl _fisica_objetos
                             16 	.globl _iniciar_valores
                             17 	.globl _fisica
                             18 	.globl _teclado
                             19 	.globl _borra
                             20 	.globl _control_interrupciones
                             21 	.globl _cpct_waitVSYNC
                             22 	.globl _cpct_setVideoMode
                             23 	.globl _cpct_memset_f64
                             24 	.globl _cpct_disableFirmware
                             25 	.globl _mientras_juego
                             26 ;--------------------------------------------------------
                             27 ; special function registers
                             28 ;--------------------------------------------------------
                             29 ;--------------------------------------------------------
                             30 ; ram data
                             31 ;--------------------------------------------------------
                             32 	.area _DATA
                             33 ;--------------------------------------------------------
                             34 ; ram data
                             35 ;--------------------------------------------------------
                             36 	.area _INITIALIZED
                             37 ;--------------------------------------------------------
                             38 ; absolute external ram data
                             39 ;--------------------------------------------------------
                             40 	.area _DABS (ABS)
                             41 ;--------------------------------------------------------
                             42 ; global & static initialisations
                             43 ;--------------------------------------------------------
                             44 	.area _HOME
                             45 	.area _GSINIT
                             46 	.area _GSFINAL
                             47 	.area _GSINIT
                             48 ;--------------------------------------------------------
                             49 ; Home
                             50 ;--------------------------------------------------------
                             51 	.area _HOME
                             52 	.area _HOME
                             53 ;--------------------------------------------------------
                             54 ; code
                             55 ;--------------------------------------------------------
                             56 	.area _CODE
                             57 ;src/main.c:6: void main(void) {
                             58 ;	---------------------------------
                             59 ; Function main
                             60 ; ---------------------------------
   40E2                      61 _main::
                             62 ;src/main.c:7: cpct_disableFirmware();
   40E2 CD CC 46      [17]   63 	call	_cpct_disableFirmware
                             64 ;src/main.c:8: control_interrupciones();
   40E5 CD 2A 44      [17]   65 	call	_control_interrupciones
                             66 ;src/main.c:9: cpct_setVideoMode(2);
   40E8 2E 02         [ 7]   67 	ld	l, #0x02
   40EA CD A9 46      [17]   68 	call	_cpct_setVideoMode
                             69 ;src/main.c:10: inicia_objetos();
   40ED CD 51 41      [17]   70 	call	_inicia_objetos
                             71 ;src/main.c:11: menu_juego();
   40F0 CD CC 43      [17]   72 	call	_menu_juego
                             73 ;src/main.c:12: a_jugar();}
   40F3 C3 F6 40      [10]   74 	jp  _a_jugar
                             75 ;src/main.c:13: void a_jugar(){  
                             76 ;	---------------------------------
                             77 ; Function a_jugar
                             78 ; ---------------------------------
   40F6                      79 _a_jugar::
                             80 ;src/main.c:14: cpct_clearScreen_f64(0); 
   40F6 21 00 40      [10]   81 	ld	hl, #0x4000
   40F9 E5            [11]   82 	push	hl
   40FA 26 00         [ 7]   83 	ld	h, #0x00
   40FC E5            [11]   84 	push	hl
   40FD 26 C0         [ 7]   85 	ld	h, #0xc0
   40FF E5            [11]   86 	push	hl
   4100 CD 49 46      [17]   87 	call	_cpct_memset_f64
                             88 ;src/main.c:15: iniciar_valores();
   4103 CD 24 41      [17]   89 	call	_iniciar_valores
                             90 ;src/main.c:16: pinta_marcador();
   4106 CD CA 42      [17]   91 	call	_pinta_marcador
                             92 ;src/main.c:17: mientras_juego();
   4109 CD 0D 41      [17]   93 	call	_mientras_juego
   410C C9            [10]   94 	ret
                             95 ;src/main.c:20: void mientras_juego(){
                             96 ;	---------------------------------
                             97 ; Function mientras_juego
                             98 ; ---------------------------------
   410D                      99 _mientras_juego::
                            100 ;src/main.c:21: while(1){
   410D                     101 00102$:
                            102 ;src/main.c:22: borra();
   410D CD 82 41      [17]  103 	call	_borra
                            104 ;src/main.c:23: teclado();
   4110 CD 97 43      [17]  105 	call	_teclado
                            106 ;src/main.c:24: fisica();
   4113 CD CD 41      [17]  107 	call	_fisica
                            108 ;src/main.c:25: fisica_objetos();
   4116 CD 0A 42      [17]  109 	call	_fisica_objetos
                            110 ;src/main.c:26: pintar_sprites();
   4119 CD 35 43      [17]  111 	call	_pintar_sprites
                            112 ;src/main.c:27: pinta_puntos();
   411C CD FC 42      [17]  113 	call	_pinta_puntos
                            114 ;src/main.c:28: cpct_waitVSYNC();
   411F CD A1 46      [17]  115 	call	_cpct_waitVSYNC
   4122 18 E9         [12]  116 	jr	00102$
                            117 	.area _CODE
                            118 	.area _INITIALIZER
                            119 	.area _CABS (ABS)

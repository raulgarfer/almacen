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
                             13 	.globl _pintar_sprites
                             14 	.globl _fisica_objetos
                             15 	.globl _iniciar_valores
                             16 	.globl _fisica
                             17 	.globl _teclado
                             18 	.globl _borra
                             19 	.globl _control_interrupciones
                             20 	.globl _cpct_waitVSYNC
                             21 	.globl _cpct_setVideoMode
                             22 	.globl _cpct_memset_f64
                             23 	.globl _cpct_disableFirmware
                             24 	.globl _mientras_juego
                             25 ;--------------------------------------------------------
                             26 ; special function registers
                             27 ;--------------------------------------------------------
                             28 ;--------------------------------------------------------
                             29 ; ram data
                             30 ;--------------------------------------------------------
                             31 	.area _DATA
                             32 ;--------------------------------------------------------
                             33 ; ram data
                             34 ;--------------------------------------------------------
                             35 	.area _INITIALIZED
                             36 ;--------------------------------------------------------
                             37 ; absolute external ram data
                             38 ;--------------------------------------------------------
                             39 	.area _DABS (ABS)
                             40 ;--------------------------------------------------------
                             41 ; global & static initialisations
                             42 ;--------------------------------------------------------
                             43 	.area _HOME
                             44 	.area _GSINIT
                             45 	.area _GSFINAL
                             46 	.area _GSINIT
                             47 ;--------------------------------------------------------
                             48 ; Home
                             49 ;--------------------------------------------------------
                             50 	.area _HOME
                             51 	.area _HOME
                             52 ;--------------------------------------------------------
                             53 ; code
                             54 ;--------------------------------------------------------
                             55 	.area _CODE
                             56 ;src/main.c:6: void main(void) {
                             57 ;	---------------------------------
                             58 ; Function main
                             59 ; ---------------------------------
   40E2                      60 _main::
                             61 ;src/main.c:7: cpct_disableFirmware();
   40E2 CD BF 46      [17]   62 	call	_cpct_disableFirmware
                             63 ;src/main.c:8: control_interrupciones();
   40E5 CD 25 44      [17]   64 	call	_control_interrupciones
                             65 ;src/main.c:9: cpct_setVideoMode(2);
   40E8 2E 02         [ 7]   66 	ld	l, #0x02
   40EA CD A4 46      [17]   67 	call	_cpct_setVideoMode
                             68 ;src/main.c:10: menu_juego();
   40ED CD C7 43      [17]   69 	call	_menu_juego
                             70 ;src/main.c:11: a_jugar();}
   40F0 C3 F3 40      [10]   71 	jp  _a_jugar
                             72 ;src/main.c:12: void a_jugar(){  
                             73 ;	---------------------------------
                             74 ; Function a_jugar
                             75 ; ---------------------------------
   40F3                      76 _a_jugar::
                             77 ;src/main.c:13: cpct_clearScreen_f64(0); 
   40F3 21 00 40      [10]   78 	ld	hl, #0x4000
   40F6 E5            [11]   79 	push	hl
   40F7 26 00         [ 7]   80 	ld	h, #0x00
   40F9 E5            [11]   81 	push	hl
   40FA 26 C0         [ 7]   82 	ld	h, #0xc0
   40FC E5            [11]   83 	push	hl
   40FD CD 44 46      [17]   84 	call	_cpct_memset_f64
                             85 ;src/main.c:14: iniciar_valores();
   4100 CD 21 41      [17]   86 	call	_iniciar_valores
                             87 ;src/main.c:15: pinta_marcador();
   4103 CD CC 42      [17]   88 	call	_pinta_marcador
                             89 ;src/main.c:16: mientras_juego();
   4106 CD 0A 41      [17]   90 	call	_mientras_juego
   4109 C9            [10]   91 	ret
                             92 ;src/main.c:19: void mientras_juego(){
                             93 ;	---------------------------------
                             94 ; Function mientras_juego
                             95 ; ---------------------------------
   410A                      96 _mientras_juego::
                             97 ;src/main.c:20: while(1){
   410A                      98 00102$:
                             99 ;src/main.c:21: borra();
   410A CD 59 41      [17]  100 	call	_borra
                            101 ;src/main.c:22: teclado();
   410D CD 90 43      [17]  102 	call	_teclado
                            103 ;src/main.c:23: fisica();
   4110 CD A5 41      [17]  104 	call	_fisica
                            105 ;src/main.c:24: fisica_objetos();
   4113 CD 12 42      [17]  106 	call	_fisica_objetos
                            107 ;src/main.c:25: pintar_sprites();
   4116 CD 37 43      [17]  108 	call	_pintar_sprites
                            109 ;src/main.c:26: pinta_puntos();
   4119 CD FE 42      [17]  110 	call	_pinta_puntos
                            111 ;src/main.c:27: cpct_waitVSYNC();
   411C CD 9C 46      [17]  112 	call	_cpct_waitVSYNC
   411F 18 E9         [12]  113 	jr	00102$
                            114 	.area _CODE
                            115 	.area _INITIALIZER
                            116 	.area _CABS (ABS)

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
                             11 	.globl _main
                             12 	.globl _iniciar_valores
                             13 	.globl _fisica
                             14 	.globl _teclado
                             15 	.globl _borra
                             16 	.globl _control_interrupciones
                             17 	.globl _cpct_waitVSYNC
                             18 	.globl _cpct_setVideoMode
                             19 	.globl _cpct_disableFirmware
                             20 	.globl _mientras_juego
                             21 ;--------------------------------------------------------
                             22 ; special function registers
                             23 ;--------------------------------------------------------
                             24 ;--------------------------------------------------------
                             25 ; ram data
                             26 ;--------------------------------------------------------
                             27 	.area _DATA
                             28 ;--------------------------------------------------------
                             29 ; ram data
                             30 ;--------------------------------------------------------
                             31 	.area _INITIALIZED
                             32 ;--------------------------------------------------------
                             33 ; absolute external ram data
                             34 ;--------------------------------------------------------
                             35 	.area _DABS (ABS)
                             36 ;--------------------------------------------------------
                             37 ; global & static initialisations
                             38 ;--------------------------------------------------------
                             39 	.area _HOME
                             40 	.area _GSINIT
                             41 	.area _GSFINAL
                             42 	.area _GSINIT
                             43 ;--------------------------------------------------------
                             44 ; Home
                             45 ;--------------------------------------------------------
                             46 	.area _HOME
                             47 	.area _HOME
                             48 ;--------------------------------------------------------
                             49 ; code
                             50 ;--------------------------------------------------------
                             51 	.area _CODE
                             52 ;src/main.c:10: void main(void) {
                             53 ;	---------------------------------
                             54 ; Function main
                             55 ; ---------------------------------
   41B7                      56 _main::
   41B7 21 FA FF      [10]   57 	ld	hl, #-6
   41BA 39            [11]   58 	add	hl, sp
   41BB F9            [ 6]   59 	ld	sp, hl
                             60 ;src/main.c:13: cpct_disableFirmware();
   41BC CD 8D 44      [17]   61 	call	_cpct_disableFirmware
                             62 ;src/main.c:14: control_interrupciones();
   41BF CD 72 42      [17]   63 	call	_control_interrupciones
                             64 ;src/main.c:15: cpct_setVideoMode(2);
   41C2 2E 02         [ 7]   65 	ld	l, #0x02
   41C4 CD 72 44      [17]   66 	call	_cpct_setVideoMode
                             67 ;src/main.c:16: iniciar_valores();
   41C7 CD 00 41      [17]   68 	call	_iniciar_valores
                             69 ;src/main.c:18: mientras_juego();
   41CA CD D3 41      [17]   70 	call	_mientras_juego
   41CD 21 06 00      [10]   71 	ld	hl, #6
   41D0 39            [11]   72 	add	hl, sp
   41D1 F9            [ 6]   73 	ld	sp, hl
   41D2 C9            [10]   74 	ret
                             75 ;src/main.c:21: void mientras_juego(){
                             76 ;	---------------------------------
                             77 ; Function mientras_juego
                             78 ; ---------------------------------
   41D3                      79 _mientras_juego::
                             80 ;src/main.c:22: while(1){
   41D3                      81 00102$:
                             82 ;src/main.c:23: borra();
   41D3 CD E2 40      [17]   83 	call	_borra
                             84 ;src/main.c:24: teclado();
   41D6 CD 37 42      [17]   85 	call	_teclado
                             86 ;src/main.c:25: fisica();
   41D9 CD 38 41      [17]   87 	call	_fisica
                             88 ;src/main.c:26: pintar_sprites();
   41DC CD FC 41      [17]   89 	call	_pintar_sprites
                             90 ;src/main.c:27: pinta_marcador();
   41DF CD E7 41      [17]   91 	call	_pinta_marcador
                             92 ;src/main.c:28: cpct_waitVSYNC();
   41E2 CD 6A 44      [17]   93 	call	_cpct_waitVSYNC
   41E5 18 EC         [12]   94 	jr	00102$
                             95 	.area _CODE
                             96 	.area _INITIALIZER
                             97 	.area _CABS (ABS)

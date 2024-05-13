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
                             12 	.globl _pintar_sprites
                             13 	.globl _fisica_objetos
                             14 	.globl _iniciar_valores
                             15 	.globl _fisica
                             16 	.globl _teclado
                             17 	.globl _borra
                             18 	.globl _control_interrupciones
                             19 	.globl _cpct_waitVSYNC
                             20 	.globl _cpct_setVideoMode
                             21 	.globl _cpct_disableFirmware
                             22 	.globl _mientras_juego
                             23 ;--------------------------------------------------------
                             24 ; special function registers
                             25 ;--------------------------------------------------------
                             26 ;--------------------------------------------------------
                             27 ; ram data
                             28 ;--------------------------------------------------------
                             29 	.area _DATA
                             30 ;--------------------------------------------------------
                             31 ; ram data
                             32 ;--------------------------------------------------------
                             33 	.area _INITIALIZED
                             34 ;--------------------------------------------------------
                             35 ; absolute external ram data
                             36 ;--------------------------------------------------------
                             37 	.area _DABS (ABS)
                             38 ;--------------------------------------------------------
                             39 ; global & static initialisations
                             40 ;--------------------------------------------------------
                             41 	.area _HOME
                             42 	.area _GSINIT
                             43 	.area _GSFINAL
                             44 	.area _GSINIT
                             45 ;--------------------------------------------------------
                             46 ; Home
                             47 ;--------------------------------------------------------
                             48 	.area _HOME
                             49 	.area _HOME
                             50 ;--------------------------------------------------------
                             51 ; code
                             52 ;--------------------------------------------------------
                             53 	.area _CODE
                             54 ;src/main.c:10: void main(void) {
                             55 ;	---------------------------------
                             56 ; Function main
                             57 ; ---------------------------------
   40E2                      58 _main::
   40E2 21 FA FF      [10]   59 	ld	hl, #-6
   40E5 39            [11]   60 	add	hl, sp
   40E6 F9            [ 6]   61 	ld	sp, hl
                             62 ;src/main.c:12: cpct_disableFirmware();
   40E7 CD 98 45      [17]   63 	call	_cpct_disableFirmware
                             64 ;src/main.c:13: control_interrupciones();
   40EA CD 56 43      [17]   65 	call	_control_interrupciones
                             66 ;src/main.c:14: cpct_setVideoMode(2);
   40ED 2E 02         [ 7]   67 	ld	l, #0x02
   40EF CD 7D 45      [17]   68 	call	_cpct_setVideoMode
                             69 ;src/main.c:15: iniciar_valores();
   40F2 CD 18 41      [17]   70 	call	_iniciar_valores
                             71 ;src/main.c:16: pinta_marcador();
   40F5 CD 75 42      [17]   72 	call	_pinta_marcador
                             73 ;src/main.c:17: mientras_juego();
   40F8 CD 01 41      [17]   74 	call	_mientras_juego
   40FB 21 06 00      [10]   75 	ld	hl, #6
   40FE 39            [11]   76 	add	hl, sp
   40FF F9            [ 6]   77 	ld	sp, hl
   4100 C9            [10]   78 	ret
                             79 ;src/main.c:20: void mientras_juego(){
                             80 ;	---------------------------------
                             81 ; Function mientras_juego
                             82 ; ---------------------------------
   4101                      83 _mientras_juego::
                             84 ;src/main.c:21: while(1){
   4101                      85 00102$:
                             86 ;src/main.c:22: borra();
   4101 CD 69 41      [17]   87 	call	_borra
                             88 ;src/main.c:23: teclado();
   4104 CD 1B 43      [17]   89 	call	_teclado
                             90 ;src/main.c:24: fisica();
   4107 CD B5 41      [17]   91 	call	_fisica
                             92 ;src/main.c:25: fisica_objetos();
   410A CD 34 42      [17]   93 	call	_fisica_objetos
                             94 ;src/main.c:26: pintar_sprites();
   410D CD C1 42      [17]   95 	call	_pintar_sprites
                             96 ;src/main.c:27: pinta_puntos();
   4110 CD 96 42      [17]   97 	call	_pinta_puntos
                             98 ;src/main.c:28: cpct_waitVSYNC();
   4113 CD 75 45      [17]   99 	call	_cpct_waitVSYNC
   4116 18 E9         [12]  100 	jr	00102$
                            101 	.area _CODE
                            102 	.area _INITIALIZER
                            103 	.area _CABS (ABS)

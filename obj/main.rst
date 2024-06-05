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
                             12 	.globl _pinta_puntos
                             13 	.globl _pinta_marcador
                             14 	.globl _menu_juego
                             15 	.globl _inicia_objetos
                             16 	.globl _pintar_sprites
                             17 	.globl _fisica_objetos
                             18 	.globl _iniciar_valores
                             19 	.globl _fisica
                             20 	.globl _teclado
                             21 	.globl _borra
                             22 	.globl _control_interrupciones
                             23 	.globl _cpct_waitVSYNC
                             24 	.globl _cpct_setVideoMode
                             25 	.globl _cpct_disableFirmware
                             26 	.globl _vmem_ahora
                             27 	.globl _a_jugar
                             28 	.globl _mientras_juego
                             29 ;--------------------------------------------------------
                             30 ; special function registers
                             31 ;--------------------------------------------------------
                             32 ;--------------------------------------------------------
                             33 ; ram data
                             34 ;--------------------------------------------------------
                             35 	.area _DATA
   4D38                      36 _vmem_ahora::
   4D38                      37 	.ds 2
                             38 ;--------------------------------------------------------
                             39 ; ram data
                             40 ;--------------------------------------------------------
                             41 	.area _INITIALIZED
                             42 ;--------------------------------------------------------
                             43 ; absolute external ram data
                             44 ;--------------------------------------------------------
                             45 	.area _DABS (ABS)
                             46 ;--------------------------------------------------------
                             47 ; global & static initialisations
                             48 ;--------------------------------------------------------
                             49 	.area _HOME
                             50 	.area _GSINIT
                             51 	.area _GSFINAL
                             52 	.area _GSINIT
                             53 ;--------------------------------------------------------
                             54 ; Home
                             55 ;--------------------------------------------------------
                             56 	.area _HOME
                             57 	.area _HOME
                             58 ;--------------------------------------------------------
                             59 ; code
                             60 ;--------------------------------------------------------
                             61 	.area _CODE
                             62 ;src/main.c:7: void main(void) {
                             63 ;	---------------------------------
                             64 ; Function main
                             65 ; ---------------------------------
   443E                      66 _main::
                             67 ;src/main.c:8: cpct_disableFirmware();
   443E CD 27 4C      [17]   68 	call	_cpct_disableFirmware
                             69 ;src/main.c:9: mover_pila();
   4441 CD FB 48      [17]   70 	call	_mover_pila
                             71 ;src/main.c:10: control_interrupciones();
   4444 CD 2E 49      [17]   72 	call	_control_interrupciones
                             73 ;src/main.c:11: cpct_setVideoMode(2);
   4447 2E 02         [ 7]   74 	ld	l, #0x02
   4449 CD E9 4B      [17]   75 	call	_cpct_setVideoMode
                             76 ;src/main.c:12: borrar_ambas_pantallas();
   444C CD 01 49      [17]   77 	call	_borrar_ambas_pantallas
                             78 ;src/main.c:13: inicia_objetos();
   444F CD C8 44      [17]   79 	call	_inicia_objetos
                             80 ;src/main.c:14: menu_juego();
   4452 CD 91 48      [17]   81 	call	_menu_juego
                             82 ;src/main.c:15: a_jugar();}
   4455 C3 58 44      [10]   83 	jp  _a_jugar
                             84 ;src/main.c:16: void a_jugar(){  
                             85 ;	---------------------------------
                             86 ; Function a_jugar
                             87 ; ---------------------------------
   4458                      88 _a_jugar::
                             89 ;src/main.c:18: borrar_ambas_pantallas();
   4458 CD 01 49      [17]   90 	call	_borrar_ambas_pantallas
                             91 ;src/main.c:19: iniciar_valores();
   445B CD 7B 44      [17]   92 	call	_iniciar_valores
                             93 ;src/main.c:20: pinta_marcador();
   445E CD 99 47      [17]   94 	call	_pinta_marcador
                             95 ;src/main.c:21: pinta_puntos();
   4461 CD CB 47      [17]   96 	call	_pinta_puntos
                             97 ;src/main.c:22: mientras_juego();
   4464 C3 67 44      [10]   98 	jp  _mientras_juego
                             99 ;src/main.c:26: void mientras_juego(){
                            100 ;	---------------------------------
                            101 ; Function mientras_juego
                            102 ; ---------------------------------
   4467                     103 _mientras_juego::
                            104 ;src/main.c:27: while(1){
   4467                     105 00102$:
                            106 ;src/main.c:28: borra();
   4467 CD 14 45      [17]  107 	call	_borra
                            108 ;src/main.c:29: teclado();
   446A CD 5C 48      [17]  109 	call	_teclado
                            110 ;src/main.c:30: fisica();
   446D CD 41 46      [17]  111 	call	_fisica
                            112 ;src/main.c:31: fisica_objetos();
   4470 CD C8 46      [17]  113 	call	_fisica_objetos
                            114 ;src/main.c:32: pintar_sprites();
   4473 CD 04 48      [17]  115 	call	_pintar_sprites
                            116 ;src/main.c:40: cpct_waitVSYNC();
   4476 CD E1 4B      [17]  117 	call	_cpct_waitVSYNC
   4479 18 EC         [12]  118 	jr	00102$
                            119 	.area _CODE
                            120 	.area _INITIALIZER
                            121 	.area _CABS (ABS)

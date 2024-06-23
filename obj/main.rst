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
                             12 	.globl _inicia
                             13 	.globl _main
                             14 	.globl _pinta_puntos
                             15 	.globl _pinta_marcador
                             16 	.globl _menu_juego
                             17 	.globl _inicia_objetos
                             18 	.globl _pintar_sprites
                             19 	.globl _fisica_objetos
                             20 	.globl _iniciar_valores
                             21 	.globl _fisica
                             22 	.globl _teclado
                             23 	.globl _borra
                             24 	.globl _control_interrupciones
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
   955D                      38 _vmem_ahora::
   955D                      39 	.ds 2
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
   830E                      68 _main::
                             69 ;src/main.c:8: cpct_disableFirmware();
   830E CD 23 8C      [17]   70 	call	_cpct_disableFirmware
                             71 ;src/main.c:9: hisc='0';
   8311 21 F3 95      [10]   72 	ld	hl,#_hisc + 0
   8314 36 30         [10]   73 	ld	(hl), #0x30
                             74 ;src/main.c:11: inicia();
   8316 C3 19 83      [10]   75 	jp  _inicia
                             76 ;src/main.c:13: void inicia(){
                             77 ;	---------------------------------
                             78 ; Function inicia
                             79 ; ---------------------------------
   8319                      80 _inicia::
                             81 ;src/main.c:14: control_interrupciones();
   8319 CD 80 88      [17]   82 	call	_control_interrupciones
                             83 ;src/main.c:15: cpct_setVideoMode(2);
   831C 2E 02         [ 7]   84 	ld	l, #0x02
   831E CD E5 8B      [17]   85 	call	_cpct_setVideoMode
                             86 ;src/main.c:16: borrar_ambas_pantallas();
   8321 CD 32 88      [17]   87 	call	_borrar_ambas_pantallas
                             88 ;src/main.c:17: inicia_objetos();
   8324 CD B7 83      [17]   89 	call	_inicia_objetos
                             90 ;src/main.c:18: menu_juego();
   8327 CD A3 87      [17]   91 	call	_menu_juego
                             92 ;src/main.c:19: a_jugar();}
   832A C3 2D 83      [10]   93 	jp  _a_jugar
                             94 ;src/main.c:20: void a_jugar(){  
                             95 ;	---------------------------------
                             96 ; Function a_jugar
                             97 ; ---------------------------------
   832D                      98 _a_jugar::
                             99 ;src/main.c:21: borrar_ambas_pantallas();
   832D CD 32 88      [17]  100 	call	_borrar_ambas_pantallas
                            101 ;src/main.c:22: iniciar_valores();
   8330 CD 6A 83      [17]  102 	call	_iniciar_valores
                            103 ;src/main.c:23: inicia_objetos();
   8333 CD B7 83      [17]  104 	call	_inicia_objetos
                            105 ;src/main.c:24: pinta_marcador();
   8336 CD 73 86      [17]  106 	call	_pinta_marcador
                            107 ;src/main.c:25: pinta_puntos();
   8339 CD B3 86      [17]  108 	call	_pinta_puntos
                            109 ;src/main.c:26: mientras_juego();
   833C C3 3F 83      [10]  110 	jp  _mientras_juego
                            111 ;src/main.c:30: void mientras_juego(){
                            112 ;	---------------------------------
                            113 ; Function mientras_juego
                            114 ; ---------------------------------
   833F                     115 _mientras_juego::
                            116 ;src/main.c:31: while(1){
   833F                     117 00102$:
                            118 ;src/main.c:32: borra();
   833F CD FE 83      [17]  119 	call	_borra
                            120 ;src/main.c:33: teclado();
   8342 CD 60 87      [17]  121 	call	_teclado
                            122 ;src/main.c:34: fisica();
   8345 CD 1A 85      [17]  123 	call	_fisica
                            124 ;src/main.c:35: cambiar_sprites();
   8348 CD 56 83      [17]  125 	call	_cambiar_sprites
                            126 ;src/main.c:36: fisica_objetos();
   834B CD 9C 85      [17]  127 	call	_fisica_objetos
                            128 ;src/main.c:37: pintar_sprites();
   834E CD 08 87      [17]  129 	call	_pintar_sprites
                            130 ;src/main.c:38: cpct_waitVSYNC();
   8351 CD DD 8B      [17]  131 	call	_cpct_waitVSYNC
   8354 18 E9         [12]  132 	jr	00102$
                            133 ;src/main.c:41: void cambiar_sprites(){
                            134 ;	---------------------------------
                            135 ; Function cambiar_sprites
                            136 ; ---------------------------------
   8356                     137 _cambiar_sprites::
                            138 ;src/main.c:42: if (vaso_lleno==vacio)
   8356 3A F2 95      [13]  139 	ld	a,(#_vaso_lleno + 0)
   8359 B7            [ 4]  140 	or	a, a
   835A 20 07         [12]  141 	jr	NZ,00102$
                            142 ;src/main.c:43: {array[0].sprite =   derecha_2;}
   835C 21 44 82      [10]  143 	ld	hl, #_derecha_2
   835F 22 7B 95      [16]  144 	ld	((_array + 0x0007)), hl
   8362 C9            [10]  145 	ret
   8363                     146 00102$:
                            147 ;src/main.c:44: else array[0].sprite =  derecha_2_lleno;}
   8363 21 A4 81      [10]  148 	ld	hl, #_derecha_2_lleno
   8366 22 7B 95      [16]  149 	ld	((_array + 0x0007)), hl
   8369 C9            [10]  150 	ret
                            151 	.area _CODE
                            152 	.area _INITIALIZER
                            153 	.area _CABS (ABS)

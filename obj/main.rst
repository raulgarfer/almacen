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
   956D                      38 _vmem_ahora::
   956D                      39 	.ds 2
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
   830E CD 33 8C      [17]   70 	call	_cpct_disableFirmware
                             71 ;src/main.c:9: hisc='0';
   8311 21 03 96      [10]   72 	ld	hl,#_hisc + 0
   8314 36 30         [10]   73 	ld	(hl), #0x30
                             74 ;src/main.c:10: mover_pila();
   8316 CD 2F 88      [17]   75 	call	_mover_pila
                             76 ;src/main.c:11: inicia();
   8319 C3 1C 83      [10]   77 	jp  _inicia
                             78 ;src/main.c:13: void inicia(){
                             79 ;	---------------------------------
                             80 ; Function inicia
                             81 ; ---------------------------------
   831C                      82 _inicia::
                             83 ;src/main.c:15: control_interrupciones();
   831C CD 90 88      [17]   84 	call	_control_interrupciones
                             85 ;src/main.c:16: cpct_setVideoMode(2);
   831F 2E 02         [ 7]   86 	ld	l, #0x02
   8321 CD F5 8B      [17]   87 	call	_cpct_setVideoMode
                             88 ;src/main.c:17: borrar_ambas_pantallas();
   8324 CD 35 88      [17]   89 	call	_borrar_ambas_pantallas
                             90 ;src/main.c:18: inicia_objetos();
   8327 CD BA 83      [17]   91 	call	_inicia_objetos
                             92 ;src/main.c:19: menu_juego();
   832A CD A6 87      [17]   93 	call	_menu_juego
                             94 ;src/main.c:20: a_jugar();}
   832D C3 30 83      [10]   95 	jp  _a_jugar
                             96 ;src/main.c:21: void a_jugar(){  
                             97 ;	---------------------------------
                             98 ; Function a_jugar
                             99 ; ---------------------------------
   8330                     100 _a_jugar::
                            101 ;src/main.c:23: borrar_ambas_pantallas();
   8330 CD 35 88      [17]  102 	call	_borrar_ambas_pantallas
                            103 ;src/main.c:24: iniciar_valores();
   8333 CD 6D 83      [17]  104 	call	_iniciar_valores
                            105 ;src/main.c:25: inicia_objetos();
   8336 CD BA 83      [17]  106 	call	_inicia_objetos
                            107 ;src/main.c:26: pinta_marcador();
   8339 CD 76 86      [17]  108 	call	_pinta_marcador
                            109 ;src/main.c:27: pinta_puntos();
   833C CD B6 86      [17]  110 	call	_pinta_puntos
                            111 ;src/main.c:28: mientras_juego();
   833F C3 42 83      [10]  112 	jp  _mientras_juego
                            113 ;src/main.c:32: void mientras_juego(){
                            114 ;	---------------------------------
                            115 ; Function mientras_juego
                            116 ; ---------------------------------
   8342                     117 _mientras_juego::
                            118 ;src/main.c:33: while(1){
   8342                     119 00102$:
                            120 ;src/main.c:34: borra();
   8342 CD 01 84      [17]  121 	call	_borra
                            122 ;src/main.c:35: teclado();
   8345 CD 63 87      [17]  123 	call	_teclado
                            124 ;src/main.c:36: fisica();
   8348 CD 1D 85      [17]  125 	call	_fisica
                            126 ;src/main.c:37: cambiar_sprites();
   834B CD 59 83      [17]  127 	call	_cambiar_sprites
                            128 ;src/main.c:38: fisica_objetos();
   834E CD 9F 85      [17]  129 	call	_fisica_objetos
                            130 ;src/main.c:39: pintar_sprites();
   8351 CD 0B 87      [17]  131 	call	_pintar_sprites
                            132 ;src/main.c:40: cpct_waitVSYNC();
   8354 CD ED 8B      [17]  133 	call	_cpct_waitVSYNC
   8357 18 E9         [12]  134 	jr	00102$
                            135 ;src/main.c:43: void cambiar_sprites(){
                            136 ;	---------------------------------
                            137 ; Function cambiar_sprites
                            138 ; ---------------------------------
   8359                     139 _cambiar_sprites::
                            140 ;src/main.c:44: if (vaso_lleno==vacio)
   8359 3A 02 96      [13]  141 	ld	a,(#_vaso_lleno + 0)
   835C B7            [ 4]  142 	or	a, a
   835D 20 07         [12]  143 	jr	NZ,00102$
                            144 ;src/main.c:45: {array[0].sprite =   derecha_2;}
   835F 21 44 82      [10]  145 	ld	hl, #_derecha_2
   8362 22 8B 95      [16]  146 	ld	((_array + 0x0007)), hl
   8365 C9            [10]  147 	ret
   8366                     148 00102$:
                            149 ;src/main.c:46: else array[0].sprite =  derecha_2_lleno;}
   8366 21 A4 81      [10]  150 	ld	hl, #_derecha_2_lleno
   8369 22 8B 95      [16]  151 	ld	((_array + 0x0007)), hl
   836C C9            [10]  152 	ret
                            153 	.area _CODE
                            154 	.area _INITIALIZER
                            155 	.area _CABS (ABS)

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
   8E1E                      38 _vmem_ahora::
   8E1E                      39 	.ds 2
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
   811A                      68 _main::
                             69 ;src/main.c:8: cpct_disableFirmware();
   811A CD 0D 8D      [17]   70 	call	_cpct_disableFirmware
                             71 ;src/main.c:9: hisc='0';
   811D 21 B4 8E      [10]   72 	ld	hl,#_hisc + 0
   8120 36 30         [10]   73 	ld	(hl), #0x30
                             74 ;src/main.c:11: inicia();
   8122 C3 25 81      [10]   75 	jp  _inicia
                             76 ;src/main.c:13: void inicia(){
                             77 ;	---------------------------------
                             78 ; Function inicia
                             79 ; ---------------------------------
   8125                      80 _inicia::
                             81 ;src/main.c:14: control_interrupciones();
   8125 CD B0 88      [17]   82 	call	_control_interrupciones
                             83 ;src/main.c:15: cpct_setVideoMode(2);
   8128 2E 02         [ 7]   84 	ld	l, #0x02
   812A CD CF 8C      [17]   85 	call	_cpct_setVideoMode
                             86 ;src/main.c:16: borrar_ambas_pantallas();
   812D CD 62 88      [17]   87 	call	_borrar_ambas_pantallas
                             88 ;src/main.c:17: inicia_objetos();
   8130 CD C3 81      [17]   89 	call	_inicia_objetos
                             90 ;src/main.c:18: menu_juego();
   8133 CD B3 85      [17]   91 	call	_menu_juego
                             92 ;src/main.c:19: a_jugar();}
   8136 C3 39 81      [10]   93 	jp  _a_jugar
                             94 ;src/main.c:20: void a_jugar(){  
                             95 ;	---------------------------------
                             96 ; Function a_jugar
                             97 ; ---------------------------------
   8139                      98 _a_jugar::
                             99 ;src/main.c:21: borrar_ambas_pantallas();
   8139 CD 62 88      [17]  100 	call	_borrar_ambas_pantallas
                            101 ;src/main.c:22: iniciar_valores();
   813C CD 76 81      [17]  102 	call	_iniciar_valores
                            103 ;src/main.c:23: inicia_objetos();
   813F CD C3 81      [17]  104 	call	_inicia_objetos
                            105 ;src/main.c:24: pinta_marcador();
   8142 CD 83 84      [17]  106 	call	_pinta_marcador
                            107 ;src/main.c:25: pinta_puntos();
   8145 CD C3 84      [17]  108 	call	_pinta_puntos
                            109 ;src/main.c:26: mientras_juego();
   8148 C3 4B 81      [10]  110 	jp  _mientras_juego
                            111 ;src/main.c:30: void mientras_juego(){
                            112 ;	---------------------------------
                            113 ; Function mientras_juego
                            114 ; ---------------------------------
   814B                     115 _mientras_juego::
                            116 ;src/main.c:31: while(1){
   814B                     117 00102$:
                            118 ;src/main.c:32: borra();
   814B CD 0A 82      [17]  119 	call	_borra
                            120 ;src/main.c:33: teclado();
   814E CD 70 85      [17]  121 	call	_teclado
                            122 ;src/main.c:34: fisica();
   8151 CD 26 83      [17]  123 	call	_fisica
                            124 ;src/main.c:35: cambiar_sprites();
   8154 CD 62 81      [17]  125 	call	_cambiar_sprites
                            126 ;src/main.c:36: fisica_objetos();
   8157 CD AC 83      [17]  127 	call	_fisica_objetos
                            128 ;src/main.c:37: pintar_sprites();
   815A CD 18 85      [17]  129 	call	_pintar_sprites
                            130 ;src/main.c:38: cpct_waitVSYNC();
   815D CD C7 8C      [17]  131 	call	_cpct_waitVSYNC
   8160 18 E9         [12]  132 	jr	00102$
                            133 ;src/main.c:41: void cambiar_sprites(){
                            134 ;	---------------------------------
                            135 ; Function cambiar_sprites
                            136 ; ---------------------------------
   8162                     137 _cambiar_sprites::
                            138 ;src/main.c:42: if (vaso_lleno==vacio)
   8162 3A B3 8E      [13]  139 	ld	a,(#_vaso_lleno + 0)
   8165 B7            [ 4]  140 	or	a, a
   8166 20 07         [12]  141 	jr	NZ,00102$
                            142 ;src/main.c:43: {array[0].sprite =   derecha_2;}
   8168 21 50 80      [10]  143 	ld	hl, #_derecha_2
   816B 22 3C 8E      [16]  144 	ld	((_array + 0x0007)), hl
   816E C9            [10]  145 	ret
   816F                     146 00102$:
                            147 ;src/main.c:44: else array[0].sprite =  derecha_2_lleno;}
   816F 21 B0 7F      [10]  148 	ld	hl, #_derecha_2_lleno
   8172 22 3C 8E      [16]  149 	ld	((_array + 0x0007)), hl
   8175 C9            [10]  150 	ret
                            151 	.area _CODE
                            152 	.area _INITIALIZER
                            153 	.area _CABS (ABS)

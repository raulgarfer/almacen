;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cambiar_sprites
	.globl _inicia
	.globl _main
	.globl _pinta_puntos
	.globl _pinta_marcador
	.globl _menu_juego
	.globl _inicia_objetos
	.globl _pintar_sprites
	.globl _fisica_objetos
	.globl _iniciar_valores
	.globl _fisica
	.globl _teclado
	.globl _borra
	.globl _control_interrupciones
	.globl _cpct_waitVSYNC
	.globl _cpct_setVideoMode
	.globl _cpct_disableFirmware
	.globl _vmem_ahora
	.globl _a_jugar
	.globl _mientras_juego
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_vmem_ahora::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/main.c:7: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:8: cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/main.c:9: hisc='0';
	ld	hl,#_hisc + 0
	ld	(hl), #0x30
;src/main.c:10: mover_pila();
	call	_mover_pila
;src/main.c:11: inicia();
	jp  _inicia
;src/main.c:13: void inicia(){
;	---------------------------------
; Function inicia
; ---------------------------------
_inicia::
;src/main.c:15: control_interrupciones();
	call	_control_interrupciones
;src/main.c:16: cpct_setVideoMode(2);
	ld	l, #0x02
	call	_cpct_setVideoMode
;src/main.c:17: borrar_ambas_pantallas();
	call	_borrar_ambas_pantallas
;src/main.c:18: inicia_objetos();
	call	_inicia_objetos
;src/main.c:19: menu_juego();
	call	_menu_juego
;src/main.c:20: a_jugar();}
	jp  _a_jugar
;src/main.c:21: void a_jugar(){  
;	---------------------------------
; Function a_jugar
; ---------------------------------
_a_jugar::
;src/main.c:23: borrar_ambas_pantallas();
	call	_borrar_ambas_pantallas
;src/main.c:24: iniciar_valores();
	call	_iniciar_valores
;src/main.c:25: inicia_objetos();
	call	_inicia_objetos
;src/main.c:26: pinta_marcador();
	call	_pinta_marcador
;src/main.c:27: pinta_puntos();
	call	_pinta_puntos
;src/main.c:28: mientras_juego();
	jp  _mientras_juego
;src/main.c:32: void mientras_juego(){
;	---------------------------------
; Function mientras_juego
; ---------------------------------
_mientras_juego::
;src/main.c:33: while(1){
00102$:
;src/main.c:34: borra();
	call	_borra
;src/main.c:35: teclado();
	call	_teclado
;src/main.c:36: fisica();
	call	_fisica
;src/main.c:37: cambiar_sprites();
	call	_cambiar_sprites
;src/main.c:38: fisica_objetos();
	call	_fisica_objetos
;src/main.c:39: pintar_sprites();
	call	_pintar_sprites
;src/main.c:40: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
	jr	00102$
;src/main.c:43: void cambiar_sprites(){
;	---------------------------------
; Function cambiar_sprites
; ---------------------------------
_cambiar_sprites::
;src/main.c:44: if (vaso_lleno==vacio)
	ld	a,(#_vaso_lleno + 0)
	or	a, a
	jr	NZ,00102$
;src/main.c:45: {array[0].sprite =   derecha_2;}
	ld	hl, #_derecha_2
	ld	((_array + 0x0007)), hl
	ret
00102$:
;src/main.c:46: else array[0].sprite =  derecha_2_lleno;}
	ld	hl, #_derecha_2_lleno
	ld	((_array + 0x0007)), hl
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

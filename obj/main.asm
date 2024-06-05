;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;src/main.c:9: mover_pila();
	call	_mover_pila
;src/main.c:10: control_interrupciones();
	call	_control_interrupciones
;src/main.c:11: cpct_setVideoMode(2);
	ld	l, #0x02
	call	_cpct_setVideoMode
;src/main.c:12: borrar_ambas_pantallas();
	call	_borrar_ambas_pantallas
;src/main.c:13: inicia_objetos();
	call	_inicia_objetos
;src/main.c:14: menu_juego();
	call	_menu_juego
;src/main.c:15: a_jugar();}
	jp  _a_jugar
;src/main.c:16: void a_jugar(){  
;	---------------------------------
; Function a_jugar
; ---------------------------------
_a_jugar::
;src/main.c:18: borrar_ambas_pantallas();
	call	_borrar_ambas_pantallas
;src/main.c:19: iniciar_valores();
	call	_iniciar_valores
;src/main.c:20: pinta_marcador();
	call	_pinta_marcador
;src/main.c:21: pinta_puntos();
	call	_pinta_puntos
;src/main.c:22: mientras_juego();
	jp  _mientras_juego
;src/main.c:26: void mientras_juego(){
;	---------------------------------
; Function mientras_juego
; ---------------------------------
_mientras_juego::
;src/main.c:27: while(1){
00102$:
;src/main.c:28: borra();
	call	_borra
;src/main.c:29: teclado();
	call	_teclado
;src/main.c:30: fisica();
	call	_fisica
;src/main.c:31: fisica_objetos();
	call	_fisica_objetos
;src/main.c:32: pintar_sprites();
	call	_pintar_sprites
;src/main.c:40: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
	jr	00102$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

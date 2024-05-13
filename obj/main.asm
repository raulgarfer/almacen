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
	.globl _mientras_juego
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;src/main.c:10: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;src/main.c:12: cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/main.c:13: control_interrupciones();
	call	_control_interrupciones
;src/main.c:14: cpct_setVideoMode(2);
	ld	l, #0x02
	call	_cpct_setVideoMode
;src/main.c:15: iniciar_valores();
	call	_iniciar_valores
;src/main.c:16: pinta_marcador();
	call	_pinta_marcador
;src/main.c:17: mientras_juego();
	call	_mientras_juego
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	ret
;src/main.c:20: void mientras_juego(){
;	---------------------------------
; Function mientras_juego
; ---------------------------------
_mientras_juego::
;src/main.c:21: while(1){
00102$:
;src/main.c:22: borra();
	call	_borra
;src/main.c:23: teclado();
	call	_teclado
;src/main.c:24: fisica();
	call	_fisica
;src/main.c:25: fisica_objetos();
	call	_fisica_objetos
;src/main.c:26: pintar_sprites();
	call	_pintar_sprites
;src/main.c:27: pinta_puntos();
	call	_pinta_puntos
;src/main.c:28: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
	jr	00102$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

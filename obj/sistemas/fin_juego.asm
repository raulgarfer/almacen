;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module fin_juego
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pinta_puntos
	.globl _a_jugar
	.globl _cpct_getScreenPtr
	.globl _cpct_drawStringM2
	.globl _cpct_memset_f64
	.globl _muere
	.globl _fin_juego
	.globl _espera_pulsacion_tecla
	.globl _espera_pulsar
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
;src/sistemas/fin_juego.c:4: void muere(u8 i){
;	---------------------------------
; Function muere
; ---------------------------------
_muere::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/sistemas/fin_juego.c:5: vidas--;
	ld	hl, #_vidas+0
	dec	(hl)
;src/sistemas/fin_juego.c:6: array[i].x = array[i].x_inicial;
	ld	bc, #_array+0
	ld	e,4 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	inc	bc
	ld	de, #0x0009
	add	hl, de
	ld	a, (hl)
	ld	(bc), a
;src/sistemas/fin_juego.c:7: pinta_puntos();
	call	_pinta_puntos
;src/sistemas/fin_juego.c:8: if (vidas=='0')
	ld	a,(#_vidas + 0)
	sub	a, #0x30
	jr	NZ,00103$
;src/sistemas/fin_juego.c:9: {fin_juego();}
	call	_fin_juego
00103$:
	pop	ix
	ret
;src/sistemas/fin_juego.c:11: void fin_juego(){
;	---------------------------------
; Function fin_juego
; ---------------------------------
_fin_juego::
;src/sistemas/fin_juego.c:13: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,20);
	ld	hl, (_vmem_ahora)
	ld	bc, #0x140a
	push	bc
	push	hl
	call	_cpct_getScreenPtr
;src/sistemas/fin_juego.c:14: cpct_drawStringM2("Has sido despedido!",pvmem);
	ld	bc, #___str_0+0
	push	hl
	push	bc
	call	_cpct_drawStringM2
;src/sistemas/fin_juego.c:15: pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,40);
	ld	hl, (_vmem_ahora)
	ld	bc, #0x280a
	push	bc
	push	hl
	call	_cpct_getScreenPtr
;src/sistemas/fin_juego.c:16: cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
	ld	bc, #___str_1+0
	push	hl
	push	bc
	call	_cpct_drawStringM2
;src/sistemas/fin_juego.c:17: espera_pulsacion_tecla();
	call	_espera_pulsacion_tecla
;src/sistemas/fin_juego.c:18: espera_pulsar();
	call	_espera_pulsar
	ret
___str_0:
	.ascii "Has sido despedido!"
	.db 0x00
___str_1:
	.ascii "Vuelve a intentarlo."
	.db 0x00
;src/sistemas/fin_juego.c:20: void espera_pulsacion_tecla(){
;	---------------------------------
; Function espera_pulsacion_tecla
; ---------------------------------
_espera_pulsacion_tecla::
;src/sistemas/fin_juego.c:21: espera_pulsacion_alguna_tecla();
	call	_espera_pulsacion_alguna_tecla
;src/sistemas/fin_juego.c:22: cpct_clearScreen_f64 (0);
	ld	hl, #0x4000
	push	hl
	ld	h, #0x00
	push	hl
	ld	h, #0xc0
	push	hl
	call	_cpct_memset_f64
	ret
;src/sistemas/fin_juego.c:24: void espera_pulsar(){
;	---------------------------------
; Function espera_pulsar
; ---------------------------------
_espera_pulsar::
;src/sistemas/fin_juego.c:25: a_jugar();}
	jp  _a_jugar
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

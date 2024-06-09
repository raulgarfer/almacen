;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module pintar
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pinta_con_puntero
	.globl _pintar_sprites
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
;src/sistemas/pintar.c:6: void pintar_sprites(){
;	---------------------------------
; Function pintar_sprites
; ---------------------------------
_pintar_sprites::
;src/sistemas/pintar.c:8: for (i=0;i<3;i++){
	ld	c, #0x00
00102$:
;src/sistemas/pintar.c:9: pinta_objeto  = &array[i];
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	de, #_array
	add	hl, de
	ld	(_pinta_objeto), hl
;src/sistemas/pintar.c:10: pinta_con_puntero();} 
	push	bc
	call	_pinta_con_puntero
	pop	bc
;src/sistemas/pintar.c:8: for (i=0;i<3;i++){
	inc	c
	ld	a, c
	sub	a, #0x03
	jr	C,00102$
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

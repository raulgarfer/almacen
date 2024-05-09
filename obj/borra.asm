;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module borra
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpct_getScreenPtr
	.globl _cpct_drawSolidBox
	.globl _borra
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
;src/borra.c:4: void borra(){
;	---------------------------------
; Function borra
; ---------------------------------
_borra::
;src/borra.c:6: pvmem   =   cpct_getScreenPtr(0xc000,x_jugador,y_jugador);
	ld	a, (_y_jugador)
	push	af
	inc	sp
	ld	a, (_x_jugador)
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/borra.c:7: cpct_drawSolidBox(pvmem,0,DERECHA_W,DERECHA_H);
	ld	bc, #0x1402
	push	bc
	ld	bc, #0x0000
	push	bc
	push	hl
	call	_cpct_drawSolidBox
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

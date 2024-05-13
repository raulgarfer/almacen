;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module pintar
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpct_getScreenPtr
	.globl _cpct_drawSprite
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
;src/sistemas/pintar.c:4: void pintar_sprites(){
;	---------------------------------
; Function pintar_sprites
; ---------------------------------
_pintar_sprites::
;src/sistemas/pintar.c:6: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x_jugador, y_jugador);
	ld	a, (_y_jugador)
	push	af
	inc	sp
	ld	a, (_x_jugador)
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/sistemas/pintar.c:7: cpct_drawSprite(derecha,pvmem,DERECHA_W,DERECHA_H);
	ld	bc, #_derecha+0
	ld	de, #0x1402
	push	de
	push	hl
	push	bc
	call	_cpct_drawSprite
;src/sistemas/pintar.c:8: pvmem=   cpct_getScreenPtr(CPCT_VMEM_START,x_manzana,y_manzana);
	ld	a, (_y_manzana)
	push	af
	inc	sp
	ld	a, (_x_manzana)
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/sistemas/pintar.c:9: cpct_drawSprite(manzana,pvmem,MANZANA_W,MANZANA_H);
	ld	bc, #_manzana+0
	ld	de, #0x1002
	push	de
	push	hl
	push	bc
	call	_cpct_drawSprite
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

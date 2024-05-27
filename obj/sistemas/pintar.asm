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
;src/sistemas/pintar.c:6: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, array[0].x, array[0].y);
	ld	hl, #_array + 2
	ld	d, (hl)
	ld	hl, #_array + 1
	ld	e, (hl)
	push	de
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
;src/sistemas/pintar.c:8: pvmem=   cpct_getScreenPtr(CPCT_VMEM_START,array[1].x,array[1].y);
	ld	hl, #_array + 11
	ld	d, (hl)
	ld	hl, #_array + 10
	ld	e, (hl)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
;src/sistemas/pintar.c:9: cpct_drawSprite(array[1].sprite,pvmem,array[1].ancho,array[1].alto);
	ld	hl, #_array + 15
	ld	d, (hl)
	ld	hl, #_array + 14
	ld	e, (hl)
	ld	hl, (#_array + 16)
	push	hl
	pop	iy
	push	de
	push	bc
	push	iy
	call	_cpct_drawSprite
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

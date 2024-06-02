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
	.globl _borra_objeto
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
;src/sistemas/borra.c:4: void borra(){       //borra todos los sprites
;	---------------------------------
; Function borra
; ---------------------------------
_borra::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
	ld	-2 (ix), #0x00
00102$:
;src/sistemas/borra.c:8: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,array[i].x,array[i].y);
	ld	c,-2 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	bc,#_array
	add	hl,bc
	ld	e,l
	ld	d,h
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, e
	ld	h, d
	inc	hl
	ld	c, (hl)
	ld	iy, (_vmem_ahora)
	push	de
	ld	b, -1 (ix)
	push	bc
	push	iy
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
	pop	de
;src/sistemas/borra.c:9: cpct_drawSolidBox(pvmem,0,array[i].ancho,array[i].alto);}
	push	de
	pop	iy
	ld	a, 6 (iy)
	ex	de,hl
	ld	de, #0x0005
	add	hl, de
	ld	d, (hl)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl, #0x0000
	push	hl
	push	bc
	call	_cpct_drawSolidBox
;src/sistemas/borra.c:7: for (i=0;i<max_entidades;i++){
	inc	-2 (ix)
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	C,00102$
	ld	sp, ix
	pop	ix
	ret
;src/sistemas/borra.c:11: void borra_objeto(u8 x,u8 y,u8 ancho,u8 alto){
;	---------------------------------
; Function borra_objeto
; ---------------------------------
_borra_objeto::
;src/sistemas/borra.c:13: pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,x,y);  
	ld	bc, (_vmem_ahora)
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	bc
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
;src/sistemas/borra.c:14: cpct_drawSolidBox(pvmem,0,ancho,alto);
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #0x0000
	push	hl
	push	bc
	call	_cpct_drawSolidBox
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

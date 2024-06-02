;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module puntuacion
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pinta_marcador
	.globl _suma_puntos
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
;src/sistemas/puntuacion.c:5: void suma_puntos(u8 i){
;	---------------------------------
; Function suma_puntos
; ---------------------------------
_suma_puntos::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/sistemas/puntuacion.c:6: puntos++;
	ld	iy, #_puntos
	inc	0 (iy)
;src/sistemas/puntuacion.c:7: if (puntos=='9'+1)
	ld	a, 0 (iy)
	sub	a, #0x3a
	jr	NZ,00102$
;src/sistemas/puntuacion.c:8: {puntos='0';
	ld	0 (iy), #0x30
;src/sistemas/puntuacion.c:9: puntos_decena++;}
	ld	hl, #_puntos_decena+0
	inc	(hl)
00102$:
;src/sistemas/puntuacion.c:10: array[i].x = array[i].x_inicial;
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
;src/sistemas/puntuacion.c:11: pinta_marcador();
	pop	ix
	jp	_pinta_marcador
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

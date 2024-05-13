;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module fisica_objetos
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _borra_objeto
	.globl _suma_puntos
	.globl _fisica_objetos
	.globl _comprobar_recojida
	.globl _muere
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
;src/sistemas/fisica_objetos.c:4: void fisica_objetos(){
;	---------------------------------
; Function fisica_objetos
; ---------------------------------
_fisica_objetos::
;src/sistemas/fisica_objetos.c:5: borra_objeto(x_manzana,y_manzana,MANZANA_W,MANZANA_H);
	ld	hl, #0x1002
	push	hl
	ld	a, (_y_manzana)
	push	af
	inc	sp
	ld	a, (_x_manzana)
	push	af
	inc	sp
	call	_borra_objeto
	pop	af
	pop	af
;src/sistemas/fisica_objetos.c:6: x_manzana+=vx_manzana;
	ld	iy, #_x_manzana
	ld	a, 0 (iy)
	ld	hl, #_vx_manzana
	add	a, (hl)
	ld	0 (iy), a
;src/sistemas/fisica_objetos.c:7: if (x_manzana==caida_objeto)
	ld	a,(#_x_manzana + 0)
	ld	iy, #_caida_objeto
	sub	a, 0 (iy)
	ret	NZ
;src/sistemas/fisica_objetos.c:8: {comprobar_recojida();}
	jp  _comprobar_recojida
;src/sistemas/fisica_objetos.c:11: void comprobar_recojida(){
;	---------------------------------
; Function comprobar_recojida
; ---------------------------------
_comprobar_recojida::
;src/sistemas/fisica_objetos.c:12: if (y_manzana==y_jugador)
	ld	a,(#_y_manzana + 0)
	ld	iy, #_y_jugador
	sub	a, 0 (iy)
;src/sistemas/fisica_objetos.c:13: {suma_puntos();}
	jp	Z,_suma_puntos
;src/sistemas/fisica_objetos.c:14: else {muere();}}
	jp  _muere
;src/sistemas/fisica_objetos.c:16: void muere(){
;	---------------------------------
; Function muere
; ---------------------------------
_muere::
;src/sistemas/fisica_objetos.c:17: while(1);
00102$:
	jr	00102$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

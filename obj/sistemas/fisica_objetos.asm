;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module fisica_objetos
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pinta_puntos
	.globl _borra_objeto
	.globl _muere
	.globl _suma_puntos
	.globl _obj_caido
	.globl _fisica_objetos
	.globl _comprobar_recojida
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_obj_caido::
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
;src/sistemas/fisica_objetos.c:4: void fisica_objetos(){
;	---------------------------------
; Function fisica_objetos
; ---------------------------------
_fisica_objetos::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
	ld	b, #0x01
00104$:
;src/sistemas/fisica_objetos.c:7: borra_objeto(array[i].x,array[i].y,array[i].ancho,array[i].alto);
	ld	e,b
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	de, #_array
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	de, #0x0006
	add	hl, de
	ld	a, (hl)
	ld	-3 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	de, #0x0005
	add	hl, de
	ld	a, (hl)
	ld	-4 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	inc	de
	ld	a, (de)
	ld	-5 (ix), a
	push	bc
	push	de
	ld	a, -3 (ix)
	push	af
	inc	sp
	ld	b, -4 (ix)
	push	bc
	ld	a, -5 (ix)
	push	af
	inc	sp
	call	_borra_objeto
	pop	af
	pop	af
	pop	de
	pop	bc
;src/sistemas/fisica_objetos.c:8: array[i].x+=array[i].vx;
	ld	a, (de)
	ld	c, a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	a, c
	add	a, l
	ld	(de), a
;src/sistemas/fisica_objetos.c:9: if (array[i].x==10)
	ld	a, (de)
	sub	a, #0x0a
	jr	NZ,00105$
;src/sistemas/fisica_objetos.c:10: {comprobar_recojida(i);}
	push	bc
	push	bc
	inc	sp
	call	_comprobar_recojida
	inc	sp
	pop	bc
00105$:
;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
	inc	b
	ld	a, b
	sub	a, #0x02
	jr	C,00104$
	ld	sp, ix
	pop	ix
	ret
;src/sistemas/fisica_objetos.c:14: void comprobar_recojida(u8 i){     
;	---------------------------------
; Function comprobar_recojida
; ---------------------------------
_comprobar_recojida::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/sistemas/fisica_objetos.c:15: if (array[i].y==array[0].y)
	ld	de, #_array+0
	ld	c,4 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, de
	push	hl
	pop	iy
	push	iy
	pop	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	a, (#_array + 2)
	sub	a, c
	jr	NZ,00102$
;src/sistemas/fisica_objetos.c:16: {suma_puntos(i);
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_suma_puntos
	inc	sp
;src/sistemas/fisica_objetos.c:17: pinta_puntos();
	call	_pinta_puntos
;src/sistemas/fisica_objetos.c:18: vaso_lleno    =   lleno;}
	ld	hl,#_vaso_lleno + 0
	ld	(hl), #0x01
	jr	00104$
00102$:
;src/sistemas/fisica_objetos.c:19: else {obj_caido=&array[i];
	ld	(_obj_caido), iy
;src/sistemas/fisica_objetos.c:20: muere(i);}
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_muere
	inc	sp
00104$:
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

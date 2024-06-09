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
	.globl _muere
	.globl _pi
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
_pi::
	.ds 1
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
	ld	-5 (ix), #0x01
00104$:
;src/sistemas/fisica_objetos.c:7: borra_objeto(array[i].x,array[i].y,array[i].ancho,array[i].alto);
	ld	c,-5 (ix)
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
	ld	bc, #0x0006
	add	hl, bc
	ld	a, (hl)
	ld	-3 (ix), a
	ld	l, e
	ld	h, d
	ld	bc, #0x0005
	add	hl, bc
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	c, e
	ld	b, d
	inc	bc
	ld	a, (bc)
	ld	-2 (ix), a
	push	bc
	push	de
	ld	h, -3 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	h, -4 (ix)
	ld	l, -2 (ix)
	push	hl
	call	_borra_objeto
	pop	af
	pop	af
	pop	de
	pop	bc
;src/sistemas/fisica_objetos.c:8: array[i].x+=array[i].vx;
	ld	a, (bc)
	ld	-2 (ix), a
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	ld	l, a
	ld	a, -2 (ix)
	add	a, l
	ld	(bc), a
;src/sistemas/fisica_objetos.c:9: if (array[i].x==10)
	ld	a, (bc)
	sub	a, #0x0a
	jr	NZ,00105$
;src/sistemas/fisica_objetos.c:10: { array[i].vx=0;
	xor	a, a
	ld	(de), a
;src/sistemas/fisica_objetos.c:11: array[i].x    =   70;
	ld	a, #0x46
	ld	(bc), a
;src/sistemas/fisica_objetos.c:12: comprobar_recojida(i);}
	ld	a, -5 (ix)
	push	af
	inc	sp
	call	_comprobar_recojida
	inc	sp
00105$:
;src/sistemas/fisica_objetos.c:6: for (i=1;i<max_entidades;i++){
	inc	-5 (ix)
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	C,00104$
	ld	sp, ix
	pop	ix
	ret
;src/sistemas/fisica_objetos.c:18: void comprobar_recojida(u8 i){     
;	---------------------------------
; Function comprobar_recojida
; ---------------------------------
_comprobar_recojida::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/sistemas/fisica_objetos.c:19: if (array[i].y==array[0].y)
	ld	c,4 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	bc,#_array
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	hl
	inc	hl
	ld	e, (hl)
	ld	a, (#_array + 2)
	sub	a, e
	jr	NZ,00102$
;src/sistemas/fisica_objetos.c:20: { vaso_lleno    =   lleno;
	ld	hl,#_vaso_lleno + 0
	ld	(hl), #0x01
	jr	00104$
00102$:
;src/sistemas/fisica_objetos.c:22: else {obj_caido=&array[i];
	ld	(_obj_caido), bc
;src/sistemas/fisica_objetos.c:23: pi=i;
	ld	b, 4 (ix)
	ld	hl,#_pi + 0
	ld	(hl), b
;src/sistemas/fisica_objetos.c:24: array[i].vx =   -1;
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
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0xff
;src/sistemas/fisica_objetos.c:25: muere(i);}
	push	bc
	inc	sp
	call	_muere
	inc	sp
00104$:
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

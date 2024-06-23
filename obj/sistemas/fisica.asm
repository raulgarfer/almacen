;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module fisica
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vacia_vaso
	.globl _pinta_puntos
	.globl _suma_puntos
	.globl _borra
	.globl _fisica
	.globl _baja
	.globl _sube
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
;src/sistemas/fisica.c:4: void fisica(){
;	---------------------------------
; Function fisica
; ---------------------------------
_fisica::
;src/sistemas/fisica.c:5: if (array[0].vy==5)
	ld	a, (#(_array + 0x0004) + 0)
	cp	a, #0x05
	jr	NZ,00104$
;src/sistemas/fisica.c:6: {borra();
	call	_borra
;src/sistemas/fisica.c:7: baja();}
	jp  _baja
00104$:
;src/sistemas/fisica.c:8: else if(array[0].vy==-5)
	sub	a, #0xfb
	ret	NZ
;src/sistemas/fisica.c:9: {borra();
	call	_borra
;src/sistemas/fisica.c:10: sube();}
	jp  _sube
;src/sistemas/fisica.c:12: void baja(){
;	---------------------------------
; Function baja
; ---------------------------------
_baja::
;src/sistemas/fisica.c:13: array[0].vy=0;
	ld	hl, #(_array + 0x0004)
	ld	(hl), #0x00
;src/sistemas/fisica.c:14: if (array[0].y   ==  y_frame_1)
	ld	hl, #_array + 2
	ld	a, (hl)
	cp	a, #0x0a
	jr	NZ,00107$
;src/sistemas/fisica.c:15: { array[0].y  =   y_frame_2;
	ld	(hl), #0x32
	ret
00107$:
;src/sistemas/fisica.c:18: if (array[0].y   ==  y_frame_2)
	cp	a, #0x32
	jr	NZ,00104$
;src/sistemas/fisica.c:19: {array[0].y  =   y_frame_3;
	ld	(hl), #0x64
	ret
00104$:
;src/sistemas/fisica.c:22: if (array[0].y   ==  y_frame_3)
	sub	a, #0x64
	ret	NZ
;src/sistemas/fisica.c:23: {array[0].y  =   y_frame_4;
	ld	(hl), #0x96
;src/sistemas/fisica.c:24: vacia_vaso();}
	jp  _vacia_vaso
;src/sistemas/fisica.c:26: void sube(){
;	---------------------------------
; Function sube
; ---------------------------------
_sube::
;src/sistemas/fisica.c:27: array[0].vy=0;
	ld	hl, #(_array + 0x0004)
	ld	(hl), #0x00
;src/sistemas/fisica.c:28: if (array[0].y   ==  y_frame_4)
	ld	hl, #_array + 2
	ld	a, (hl)
	cp	a, #0x96
	jr	NZ,00107$
;src/sistemas/fisica.c:29: {array[0].y  =   y_frame_3;
	ld	(hl), #0x64
	ret
00107$:
;src/sistemas/fisica.c:32: if (array[0].y   ==  y_frame_3)
	cp	a, #0x64
	jr	NZ,00104$
;src/sistemas/fisica.c:33: {array[0].y  =   y_frame_2;
	ld	(hl), #0x32
	ret
00104$:
;src/sistemas/fisica.c:36: if (array[0].y   ==  y_frame_2)
	sub	a, #0x32
	ret	NZ
;src/sistemas/fisica.c:37: {array[0].y  =   y_frame_1;
	ld	(hl), #0x0a
	ret
;src/sistemas/fisica.c:42: void vacia_vaso(){
;	---------------------------------
; Function vacia_vaso
; ---------------------------------
_vacia_vaso::
;src/sistemas/fisica.c:43: if (vaso_lleno==lleno)
	ld	a,(#_vaso_lleno + 0)
	dec	a
	ret	NZ
;src/sistemas/fisica.c:44: {puntos++;
	ld	hl, #_puntos+0
	inc	(hl)
;src/sistemas/fisica.c:45: vaso_lleno  =  vacio;
	ld	hl,#_vaso_lleno + 0
	ld	(hl), #0x00
;src/sistemas/fisica.c:46: suma_puntos(pi);
	ld	a, (_pi)
	push	af
	inc	sp
	call	_suma_puntos
	inc	sp
;src/sistemas/fisica.c:47: pinta_puntos();
	call	_pinta_puntos
;src/sistemas/fisica.c:48: array[pi].vx=-1;
	ld	bc, #_array+0
	ld	de, (_pi)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0xff
;src/sistemas/fisica.c:49: array[0].x  =   x_start_jugador;
	inc	bc
	ld	a, #0x0a
	ld	(bc), a
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

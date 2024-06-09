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
	ld	bc, #_array + 2
	ld	a, (bc)
	ld	e,a
	sub	a, #0x0a
	jr	NZ,00107$
;src/sistemas/fisica.c:15: { array[0].y  =   y_frame_2;
	ld	a, #0x32
	ld	(bc), a
	ret
00107$:
;src/sistemas/fisica.c:20: array[0].sprite =  rightpng;}
;src/sistemas/fisica.c:18: if (array[0].y   ==  y_frame_2)
	ld	a, e
	sub	a, #0x32
	jr	NZ,00104$
;src/sistemas/fisica.c:19: {array[0].y  =   y_frame_3;
	ld	a, #0x64
	ld	(bc), a
;src/sistemas/fisica.c:20: array[0].sprite =  rightpng;}
	ld	hl, #_rightpng
	ld	((_array + 0x0007)), hl
	ret
00104$:
;src/sistemas/fisica.c:22: if (array[0].y   ==  y_frame_3)
	ld	a, e
	sub	a, #0x64
	ret	NZ
;src/sistemas/fisica.c:23: {array[0].y  =   y_frame_4;
	ld	a, #0x96
	ld	(bc), a
;src/sistemas/fisica.c:24: array[0].sprite =   derecha_2;
	ld	hl, #_derecha_2
	ld	((_array + 0x0007)), hl
;src/sistemas/fisica.c:25: vacia_vaso();}
	jp  _vacia_vaso
;src/sistemas/fisica.c:27: void sube(){
;	---------------------------------
; Function sube
; ---------------------------------
_sube::
;src/sistemas/fisica.c:28: array[0].vy=0;
	ld	hl, #(_array + 0x0004)
	ld	(hl), #0x00
;src/sistemas/fisica.c:29: if (array[0].y   ==  y_frame_4)
	ld	bc, #_array + 2
	ld	a, (bc)
;src/sistemas/fisica.c:31: array[0].sprite =  rightpng;}
;src/sistemas/fisica.c:29: if (array[0].y   ==  y_frame_4)
	ld	e,a
	sub	a, #0x96
	jr	NZ,00107$
;src/sistemas/fisica.c:30: {array[0].y  =   y_frame_3;
	ld	a, #0x64
	ld	(bc), a
;src/sistemas/fisica.c:31: array[0].sprite =  rightpng;}
	ld	hl, #_rightpng
	ld	((_array + 0x0007)), hl
	ret
00107$:
;src/sistemas/fisica.c:33: if (array[0].y   ==  y_frame_3)
	ld	a, e
	sub	a, #0x64
	jr	NZ,00104$
;src/sistemas/fisica.c:34: {array[0].y  =   y_frame_2;
	ld	a, #0x32
	ld	(bc), a
;src/sistemas/fisica.c:35: array[0].sprite =   derecha_2;}
	ld	hl, #_derecha_2
	ld	((_array + 0x0007)), hl
	ret
00104$:
;src/sistemas/fisica.c:37: if (array[0].y   ==  y_frame_2)
	ld	a, e
	sub	a, #0x32
	ret	NZ
;src/sistemas/fisica.c:38: {array[0].y  =   y_frame_1;
	ld	a, #0x0a
	ld	(bc), a
;src/sistemas/fisica.c:39: array[0].sprite =  rightpng;}
	ld	hl, #_rightpng
	ld	((_array + 0x0007)), hl
	ret
;src/sistemas/fisica.c:41: void vacia_vaso(){
;	---------------------------------
; Function vacia_vaso
; ---------------------------------
_vacia_vaso::
;src/sistemas/fisica.c:42: if (vaso_lleno==lleno)
	ld	a,(#_vaso_lleno + 0)
	dec	a
	ret	NZ
;src/sistemas/fisica.c:43: {puntos++;
	ld	hl, #_puntos+0
	inc	(hl)
;src/sistemas/fisica.c:44: array[0].sprite =  rightpng; 
	ld	hl, #_rightpng
	ld	((_array + 0x0007)), hl
;src/sistemas/fisica.c:45: vaso_lleno  =  vacio;}
	ld	hl,#_vaso_lleno + 0
	ld	(hl), #0x00
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

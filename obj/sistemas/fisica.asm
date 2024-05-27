;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module fisica
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;src/sistemas/fisica.c:7: void fisica(){
;	---------------------------------
; Function fisica
; ---------------------------------
_fisica::
;src/sistemas/fisica.c:8: if (array[0].vy==1)
	ld	a, (#(_array + 0x0004) + 0)
	cp	a, #0x01
;src/sistemas/fisica.c:9: baja();
	jp	Z,_baja
;src/sistemas/fisica.c:10: else if(array[0].vy==-1)
	inc	a
	ret	NZ
;src/sistemas/fisica.c:11: sube();
	jp  _sube
;src/sistemas/fisica.c:13: void baja(){
;	---------------------------------
; Function baja
; ---------------------------------
_baja::
;src/sistemas/fisica.c:14: if (array[0].y   ==  y_frame_1)
	ld	hl, #_array+2
	ld	a, (hl)
	cp	a, #0x14
	jr	NZ,00107$
;src/sistemas/fisica.c:15: {array[0].y  =   y_frame_2;}
	ld	(hl), #0x46
	ret
00107$:
;src/sistemas/fisica.c:17: if (array[0].y   ==  y_frame_2)
	cp	a, #0x46
	jr	NZ,00104$
;src/sistemas/fisica.c:18: {array[0].y  =   y_frame_3;}
	ld	(hl), #0x78
	ret
00104$:
;src/sistemas/fisica.c:20: if (array[0].y   ==  y_frame_3)
	sub	a, #0x78
	ret	NZ
;src/sistemas/fisica.c:21: {array[0].y  =   y_frame_4;}}
	ld	(hl), #0xaa
	ret
;src/sistemas/fisica.c:22: void sube(){
;	---------------------------------
; Function sube
; ---------------------------------
_sube::
;src/sistemas/fisica.c:23: if (array[0].y   ==  y_frame_4)
	ld	hl, #_array+2
	ld	a, (hl)
	cp	a, #0xaa
	jr	NZ,00107$
;src/sistemas/fisica.c:24: {array[0].y  =   y_frame_3;}
	ld	(hl), #0x78
	ret
00107$:
;src/sistemas/fisica.c:26: if (array[0].y   ==  y_frame_3)
	cp	a, #0x78
	jr	NZ,00104$
;src/sistemas/fisica.c:27: {array[0].y  =   y_frame_2;}
	ld	(hl), #0x46
	ret
00104$:
;src/sistemas/fisica.c:29: if (array[0].y   ==  y_frame_2)
	sub	a, #0x46
	ret	NZ
;src/sistemas/fisica.c:30: {array[0].y  =   y_frame_1;}
	ld	(hl), #0x14
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

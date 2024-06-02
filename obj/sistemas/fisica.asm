;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module fisica
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;src/sistemas/fisica.c:5: if (array[0].vy==1)
	ld	a, (#(_array + 0x0004) + 0)
	cp	a, #0x01
	jr	NZ,00104$
;src/sistemas/fisica.c:6: {borra();
	call	_borra
;src/sistemas/fisica.c:7: baja();}
	jp  _baja
00104$:
;src/sistemas/fisica.c:8: else if(array[0].vy==-1)
	inc	a
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
;src/sistemas/fisica.c:13: if (array[0].y   ==  y_frame_1)
	ld	hl, #_array+2
	ld	a, (hl)
	cp	a, #0x0a
	jr	NZ,00107$
;src/sistemas/fisica.c:14: { array[0].y  =   y_frame_2;}
	ld	(hl), #0x32
	ret
00107$:
;src/sistemas/fisica.c:16: if (array[0].y   ==  y_frame_2)
	cp	a, #0x32
	jr	NZ,00104$
;src/sistemas/fisica.c:17: {array[0].y  =   y_frame_3;}
	ld	(hl), #0x64
	ret
00104$:
;src/sistemas/fisica.c:19: if (array[0].y   ==  y_frame_3)
	sub	a, #0x64
	ret	NZ
;src/sistemas/fisica.c:20: {array[0].y  =   y_frame_4;}}
	ld	(hl), #0x96
	ret
;src/sistemas/fisica.c:21: void sube(){
;	---------------------------------
; Function sube
; ---------------------------------
_sube::
;src/sistemas/fisica.c:22: if (array[0].y   ==  y_frame_4)
	ld	hl, #_array+2
	ld	a, (hl)
	cp	a, #0x96
	jr	NZ,00107$
;src/sistemas/fisica.c:23: {array[0].y  =   y_frame_3;}
	ld	(hl), #0x64
	ret
00107$:
;src/sistemas/fisica.c:25: if (array[0].y   ==  y_frame_3)
	cp	a, #0x64
	jr	NZ,00104$
;src/sistemas/fisica.c:26: {array[0].y  =   y_frame_2;}
	ld	(hl), #0x32
	ret
00104$:
;src/sistemas/fisica.c:28: if (array[0].y   ==  y_frame_2)
	sub	a, #0x32
	ret	NZ
;src/sistemas/fisica.c:29: {array[0].y  =   y_frame_1;}
	ld	(hl), #0x0a
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

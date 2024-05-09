;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module fisica
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sube
	.globl _baja
	.globl _fisica
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
;src/fisica.c:4: void fisica(){
;	---------------------------------
; Function fisica
; ---------------------------------
_fisica::
;src/fisica.c:5: if (vy_jug==1)
	ld	a,(#_vy_jug + 0)
	dec	a
;src/fisica.c:6: {baja();}
	jp	Z,_baja
;src/fisica.c:7: else if(vy_jug==-1)
	ld	a,(#_vy_jug + 0)
	inc	a
	ret	NZ
;src/fisica.c:8: {sube();}
	jp  _sube
;src/fisica.c:10: void baja(){
;	---------------------------------
; Function baja
; ---------------------------------
_baja::
;src/fisica.c:11: if (y_jugador   ==  y_frame_1)
	ld	a,(#_y_jugador + 0)
	ld	iy, #_y_frame_1
	sub	a, 0 (iy)
	jr	NZ,00107$
;src/fisica.c:12: {y_jugador  =   y_frame_2;}
	ld	a,(#_y_frame_2 + 0)
	ld	(#_y_jugador + 0),a
	ret
00107$:
;src/fisica.c:14: if (y_jugador   ==  y_frame_2)
	ld	a,(#_y_jugador + 0)
	ld	iy, #_y_frame_2
	sub	a, 0 (iy)
	jr	NZ,00104$
;src/fisica.c:15: {y_jugador  =   y_frame_3;}
	ld	a,(#_y_frame_3 + 0)
	ld	(#_y_jugador + 0),a
	ret
00104$:
;src/fisica.c:17: if (y_jugador   ==  y_frame_3)
	ld	a,(#_y_jugador + 0)
	ld	iy, #_y_frame_3
	sub	a, 0 (iy)
	ret	NZ
;src/fisica.c:18: {y_jugador  =   y_frame_4;}}
	ld	a,(#_y_frame_4 + 0)
	ld	(#_y_jugador + 0),a
	ret
;src/fisica.c:19: void sube(){
;	---------------------------------
; Function sube
; ---------------------------------
_sube::
;src/fisica.c:20: if (y_jugador   ==  y_frame_4)
	ld	a,(#_y_jugador + 0)
	ld	iy, #_y_frame_4
	sub	a, 0 (iy)
	jr	NZ,00107$
;src/fisica.c:21: {y_jugador  =   y_frame_3;}
	ld	a,(#_y_frame_3 + 0)
	ld	(#_y_jugador + 0),a
	ret
00107$:
;src/fisica.c:23: if (y_jugador   ==  y_frame_3)
	ld	a,(#_y_jugador + 0)
	ld	iy, #_y_frame_3
	sub	a, 0 (iy)
	jr	NZ,00104$
;src/fisica.c:24: {y_jugador  =   y_frame_2;}
	ld	a,(#_y_frame_2 + 0)
	ld	(#_y_jugador + 0),a
	ret
00104$:
;src/fisica.c:26: if (y_jugador   ==  y_frame_2)
	ld	a,(#_y_jugador + 0)
	ld	iy, #_y_frame_2
	sub	a, 0 (iy)
	ret	NZ
;src/fisica.c:27: {y_jugador  =   y_frame_1;}
	ld	a,(#_y_frame_1 + 0)
	ld	(#_y_jugador + 0),a
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

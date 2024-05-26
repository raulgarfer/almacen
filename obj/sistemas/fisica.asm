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
;src/sistemas/fisica.c:8: if (vy_jug==1)
	ld	a,(#_vy_jug + 0)
	dec	a
;src/sistemas/fisica.c:9: {baja();}
	jp	Z,_baja
;src/sistemas/fisica.c:10: else if(vy_jug==-1)
	ld	a,(#_vy_jug + 0)
	inc	a
	ret	NZ
;src/sistemas/fisica.c:11: {sube();}
	jp  _sube
;src/sistemas/fisica.c:13: void baja(){
;	---------------------------------
; Function baja
; ---------------------------------
_baja::
;src/sistemas/fisica.c:14: if (y_jugador   ==  y_frame_1)
	ld	iy, #_y_jugador
	ld	a, 0 (iy)
	sub	a, #0x14
	jr	NZ,00107$
;src/sistemas/fisica.c:15: {y_jugador  =   y_frame_2;}
	ld	0 (iy), #0x46
	ret
00107$:
;src/sistemas/fisica.c:17: if (y_jugador   ==  y_frame_2)
	ld	iy, #_y_jugador
	ld	a, 0 (iy)
	sub	a, #0x46
	jr	NZ,00104$
;src/sistemas/fisica.c:18: {y_jugador  =   y_frame_3;}
	ld	0 (iy), #0x78
	ret
00104$:
;src/sistemas/fisica.c:20: if (y_jugador   ==  y_frame_3)
	ld	iy, #_y_jugador
	ld	a, 0 (iy)
	sub	a, #0x78
	ret	NZ
;src/sistemas/fisica.c:21: {y_jugador  =   y_frame_4;}}
	ld	0 (iy), #0xaa
	ret
;src/sistemas/fisica.c:22: void sube(){
;	---------------------------------
; Function sube
; ---------------------------------
_sube::
;src/sistemas/fisica.c:23: if (y_jugador   ==  y_frame_4)
	ld	iy, #_y_jugador
	ld	a, 0 (iy)
	sub	a, #0xaa
	jr	NZ,00107$
;src/sistemas/fisica.c:24: {y_jugador  =   y_frame_3;}
	ld	0 (iy), #0x78
	ret
00107$:
;src/sistemas/fisica.c:26: if (y_jugador   ==  y_frame_3)
	ld	iy, #_y_jugador
	ld	a, 0 (iy)
	sub	a, #0x78
	jr	NZ,00104$
;src/sistemas/fisica.c:27: {y_jugador  =   y_frame_2;}
	ld	0 (iy), #0x46
	ret
00104$:
;src/sistemas/fisica.c:29: if (y_jugador   ==  y_frame_2)
	ld	iy, #_y_jugador
	ld	a, 0 (iy)
	sub	a, #0x46
	ret	NZ
;src/sistemas/fisica.c:30: {y_jugador  =   y_frame_1;}
	ld	0 (iy), #0x14
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

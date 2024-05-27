;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module puntuacion
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;src/sistemas/puntuacion.c:5: void suma_puntos(){
;	---------------------------------
; Function suma_puntos
; ---------------------------------
_suma_puntos::
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
;src/sistemas/puntuacion.c:10: array[1].x = 60;
	ld	hl, #(_array + 0x000a)
	ld	(hl), #0x3c
;src/sistemas/puntuacion.c:11: pinta_marcador();
	jp  _pinta_marcador
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

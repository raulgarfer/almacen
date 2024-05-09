;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module marcador
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pinta_marcador
	.globl _cpct_drawStringM2
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
;src/marcador.c:2: void pinta_marcador(){
;	---------------------------------
; Function pinta_marcador
; ---------------------------------
_pinta_marcador::
;src/marcador.c:4: cpct_drawStringM2("Puntos 0",0xc780);
	ld	hl, #0xc780
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_cpct_drawStringM2
	ret
___str_0:
	.ascii "Puntos 0"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

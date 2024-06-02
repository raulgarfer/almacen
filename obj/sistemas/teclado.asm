;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module teclado
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard
	.globl _teclado
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
;src/sistemas/teclado.c:4: void teclado(){
;	---------------------------------
; Function teclado
; ---------------------------------
_teclado::
;src/sistemas/teclado.c:5: array[0].vy=0;
	ld	hl, #(_array + 0x0004)
	ld	(hl), #0x00
;src/sistemas/teclado.c:6: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/sistemas/teclado.c:7: if(cpct_isKeyPressed(Key_Q)
	ld	hl, #0x0808
	call	_cpct_isKeyPressed
;src/sistemas/teclado.c:8: && array[0].y>=y_frame_1)
;src/sistemas/teclado.c:7: if(cpct_isKeyPressed(Key_Q)
	ld	a, l
	or	a, a
	jr	Z,00102$
;src/sistemas/teclado.c:8: && array[0].y>=y_frame_1)
	ld	a, (#(_array + 0x0002) + 0)
	sub	a, #0x0a
	jr	C,00102$
;src/sistemas/teclado.c:9: {array[0].vy=-1;}
	ld	hl, #(_array + 0x0004)
	ld	(hl), #0xff
00102$:
;src/sistemas/teclado.c:10: if(cpct_isKeyPressed(Key_A)
	ld	hl, #0x2008
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	ret	Z
;src/sistemas/teclado.c:11: && array[0].y<=y_frame_4)
	ld	hl, #(_array + 0x0002) + 0
	ld	c, (hl)
	ld	a, #0x96
	sub	a, c
	ret	C
;src/sistemas/teclado.c:12: {array[0].vy=1;}
	ld	hl, #(_array + 0x0004)
	ld	(hl), #0x01
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

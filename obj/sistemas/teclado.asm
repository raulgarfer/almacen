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
;src/sistemas/teclado.c:5: vy_jug=0;
	ld	hl,#_vy_jug + 0
	ld	(hl), #0x00
;src/sistemas/teclado.c:6: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/sistemas/teclado.c:7: if(cpct_isKeyPressed(Key_Q)
	ld	hl, #0x0808
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00102$
;src/sistemas/teclado.c:8: && y_jugador>=y_frame_1)
	ld	hl, #_y_frame_1
	ld	a,(#_y_jugador + 0)
	sub	a, (hl)
	jr	C,00102$
;src/sistemas/teclado.c:9: {vy_jug=-1;}
	ld	hl,#_vy_jug + 0
	ld	(hl), #0xff
00102$:
;src/sistemas/teclado.c:10: if(cpct_isKeyPressed(Key_A)
	ld	hl, #0x2008
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	ret	Z
;src/sistemas/teclado.c:11: && y_jugador<=y_frame_4)
	ld	a, (#_y_frame_4)
	ld	iy, #_y_jugador
	sub	a, 0 (iy)
	ret	C
;src/sistemas/teclado.c:12: {vy_jug=1;}
	ld	hl,#_vy_jug + 0
	ld	(hl), #0x01
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

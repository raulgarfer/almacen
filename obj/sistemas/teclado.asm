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
;src/sistemas/teclado.c:5: comprueba_que_arriba_no_este_pulsada();
	call	_comprueba_que_arriba_no_este_pulsada
;src/sistemas/teclado.c:6: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/sistemas/teclado.c:7: if(cpct_isKeyPressed(Key_Q) 
	ld	hl, #0x0808
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00102$
;src/sistemas/teclado.c:8: && array[0].y>=y_frame_1)
	ld	a, (#_array + 2)
	sub	a, #0x0a
	jr	C,00102$
;src/sistemas/teclado.c:9: {array[0].vy+=-1;}
	ld	bc, #_array + 4
	ld	a, (bc)
	add	a, #0xff
	ld	(bc), a
00102$:
;src/sistemas/teclado.c:10: if(cpct_isKeyPressed(Key_A)
	ld	hl, #0x2008
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00105$
;src/sistemas/teclado.c:11: && array[0].y<=y_frame_4)
	ld	hl, #_array + 2
	ld	c, (hl)
	ld	a, #0x96
	sub	a, c
	jr	C,00105$
;src/sistemas/teclado.c:12: {array[0].vy+=1;}   
	ld	bc, #_array + 4
	ld	a, (bc)
	inc	a
	ld	(bc), a
00105$:
;src/sistemas/teclado.c:13: if (cpct_isKeyPressed(Key_Esc))
	ld	hl, #0x0408
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	ret	Z
;src/sistemas/teclado.c:14: {main();}   
	jp  _main
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

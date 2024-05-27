;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module fisica_objetos
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _espera_pulsar
	.globl _fin_juego
	.globl _borra_objeto
	.globl _suma_puntos
	.globl _cpct_getScreenPtr
	.globl _cpct_drawStringM2
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_scanKeyboard
	.globl _fisica_objetos
	.globl _comprobar_recojida
	.globl _muere
	.globl _espera_pulsacion_tecla
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
;src/sistemas/fisica_objetos.c:4: void fisica_objetos(){
;	---------------------------------
; Function fisica_objetos
; ---------------------------------
_fisica_objetos::
;src/sistemas/fisica_objetos.c:5: borra_objeto(array[1].x,array[1].y,array[1].ancho,array[1].alto);
	ld	hl, #_array + 15
	ld	c, (hl)
	ld	hl, #_array + 14
	ld	b, (hl)
	ld	hl, #_array + 11
	ld	e, (hl)
	ld	hl, #(_array + 0x000a) + 0
	ld	d, (hl)
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_borra_objeto
	pop	af
	pop	af
;src/sistemas/fisica_objetos.c:6: array[1].x+=array[1].vx;
	ld	hl, #(_array + 0x000a) + 0
	ld	c, (hl)
	ld	hl, #_array + 12
	ld	e, (hl)
	ld	a, c
	add	a, e
	ld	(#(_array + 0x000a)),a
;src/sistemas/fisica_objetos.c:7: if (array[1].x==caida_objeto)
	ld	hl, #(_array + 0x000a) + 0
	ld	c, (hl)
	ld	a,(#_caida_objeto + 0)
	sub	a, c
	ret	NZ
;src/sistemas/fisica_objetos.c:8: {comprobar_recojida();}
	jp  _comprobar_recojida
;src/sistemas/fisica_objetos.c:11: void comprobar_recojida(){
;	---------------------------------
; Function comprobar_recojida
; ---------------------------------
_comprobar_recojida::
;src/sistemas/fisica_objetos.c:12: if (array[1].y==array[0].y)
	ld	hl, #_array + 11
	ld	c, (hl)
	ld	hl, #_array + 2
	ld	b, (hl)
	ld	a, c
	sub	a, b
;src/sistemas/fisica_objetos.c:13: {suma_puntos();}
	jp	Z,_suma_puntos
;src/sistemas/fisica_objetos.c:14: else {muere();}}
	jp  _muere
;src/sistemas/fisica_objetos.c:16: void muere(){
;	---------------------------------
; Function muere
; ---------------------------------
_muere::
;src/sistemas/fisica_objetos.c:17: vidas--;
	ld	hl, #_vidas+0
	dec	(hl)
;src/sistemas/fisica_objetos.c:18: array[1].x = x_start_objeto;
	ld	hl, #(_array + 0x000a)
	ld	(hl), #0x3c
;src/sistemas/fisica_objetos.c:19: pinta_marcador();
	call	_pinta_marcador
;src/sistemas/fisica_objetos.c:20: if (vidas=='0')
	ld	a,(#_vidas + 0)
	sub	a, #0x30
	ret	NZ
;src/sistemas/fisica_objetos.c:21: {fin_juego();}
	jp  _fin_juego
;src/sistemas/fisica_objetos.c:23: void fin_juego(){
;	---------------------------------
; Function fin_juego
; ---------------------------------
_fin_juego::
;src/sistemas/fisica_objetos.c:26: pvmem=cpct_getScreenPtr(0xc000,10,20);
	ld	hl, #0x140a
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/sistemas/fisica_objetos.c:27: cpct_drawStringM2("Has sido despedido!",pvmem);
	ld	bc, #___str_0+0
	push	hl
	push	bc
	call	_cpct_drawStringM2
;src/sistemas/fisica_objetos.c:28: pvmem=cpct_getScreenPtr(0xc000,10,40);
	ld	hl, #0x280a
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/sistemas/fisica_objetos.c:29: cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
	ld	bc, #___str_1+0
	push	hl
	push	bc
	call	_cpct_drawStringM2
;src/sistemas/fisica_objetos.c:30: espera_pulsacion_tecla();
	call	_espera_pulsacion_tecla
;src/sistemas/fisica_objetos.c:31: espera_pulsar();
	call	_espera_pulsar
	ret
___str_0:
	.ascii "Has sido despedido!"
	.db 0x00
___str_1:
	.ascii "Vuelve a intentarlo."
	.db 0x00
;src/sistemas/fisica_objetos.c:33: void espera_pulsacion_tecla(){
;	---------------------------------
; Function espera_pulsacion_tecla
; ---------------------------------
_espera_pulsacion_tecla::
;src/sistemas/fisica_objetos.c:35: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/sistemas/fisica_objetos.c:36: pulsado=cpct_isAnyKeyPressed();
	call	_cpct_isAnyKeyPressed
;src/sistemas/fisica_objetos.c:37: if (pulsado!=0)
	ld	a, l
	or	a, a
;src/sistemas/fisica_objetos.c:38: {espera_pulsar();}
	jp	NZ,_espera_pulsar
;src/sistemas/fisica_objetos.c:39: else espera_pulsacion_tecla();
	jr	_espera_pulsacion_tecla
;src/sistemas/fisica_objetos.c:41: void espera_pulsar(){
;	---------------------------------
; Function espera_pulsar
; ---------------------------------
_espera_pulsar::
;src/sistemas/fisica_objetos.c:42: a_jugar();}
	jp  _a_jugar
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module marcador
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pinta_puntos
	.globl _pinta_marcador
	.globl _cpct_setPALColour
	.globl _cpct_drawStringM2
	.globl _cpct_drawCharM2
	.globl _puntos
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_puntos::
	.ds 1
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
;src/sistemas/marcador.c:5: void pinta_marcador(){
;	---------------------------------
; Function pinta_marcador
; ---------------------------------
_pinta_marcador::
;src/sistemas/marcador.c:6: cpct_setPALColour (0, 1);
	ld	hl, #0x0100
	push	hl
	call	_cpct_setPALColour
;src/sistemas/marcador.c:7: cpct_setPALColour (1, 2);
	ld	hl, #0x0201
	push	hl
	call	_cpct_setPALColour
;src/sistemas/marcador.c:8: cpct_drawStringM2("Puntos",marcador_y); 
	ld	hl, #0xc780
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_cpct_drawStringM2
;src/sistemas/marcador.c:9: cpct_drawStringM2("Vidas",marcador_y+10);
	ld	hl, #0xc78a
	push	hl
	ld	hl, #___str_1
	push	hl
	call	_cpct_drawStringM2
	ret
___str_0:
	.ascii "Puntos"
	.db 0x00
___str_1:
	.ascii "Vidas"
	.db 0x00
;src/sistemas/marcador.c:12: void pinta_puntos(){
;	---------------------------------
; Function pinta_puntos
; ---------------------------------
_pinta_puntos::
;src/sistemas/marcador.c:13: cpct_setPALColour (0, 1);
	ld	hl, #0x0100
	push	hl
	call	_cpct_setPALColour
;src/sistemas/marcador.c:14: cpct_setPALColour (1, 2);
	ld	hl, #0x0201
	push	hl
	call	_cpct_setPALColour
;src/sistemas/marcador.c:15: cpct_drawCharM2(marcador_y+7,puntos_decena);
	ld	hl,#_puntos_decena + 0
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #0xc787
	push	hl
	call	_cpct_drawCharM2
;src/sistemas/marcador.c:16: cpct_drawCharM2(marcador_y+8,puntos);
	ld	hl,#_puntos + 0
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #0xc788
	push	hl
	call	_cpct_drawCharM2
;src/sistemas/marcador.c:17: cpct_drawCharM2(marcador_y+16,vidas);
	ld	hl,#_vidas + 0
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #0xc790
	push	hl
	call	_cpct_drawCharM2
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

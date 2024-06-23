;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module menu
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _espera_pulsacion_tecla
	.globl _cpct_getScreenPtr
	.globl _cpct_setVideoMode
	.globl _cpct_drawStringM0
	.globl _cpct_memset_f64
	.globl _retromaniac
	.globl _menu_juego
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
;src/manager/menu.c:6: void menu_juego(){
;	---------------------------------
; Function menu_juego
; ---------------------------------
_menu_juego::
;src/manager/menu.c:8: cpct_setVideoMode(0);
	ld	l, #0x00
	call	_cpct_setVideoMode
;src/manager/menu.c:9: cpct_clearScreen_f64 (0);
	ld	hl, #0x4000
	push	hl
	ld	h, #0x00
	push	hl
	ld	h, #0xc0
	push	hl
	call	_cpct_memset_f64
;src/manager/menu.c:10: cpct_clearScreen_f64(0);
	ld	hl, #0x4000
	push	hl
	ld	h, #0x00
	push	hl
	ld	h, #0xc0
	push	hl
	call	_cpct_memset_f64
;src/manager/menu.c:11: pvmem   =  cpct_getScreenPtr((u8*)0xc000,10,20);
	ld	hl, #0x140a
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/manager/menu.c:12: cpct_drawStringM0("Bienvenido al almacen",pvmem);
	ld	bc, #___str_0+0
	push	hl
	push	bc
	call	_cpct_drawStringM0
;src/manager/menu.c:13: pvmem   =  cpct_getScreenPtr(0xc000,10,40);
	ld	hl, #0x280a
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/manager/menu.c:14: cpct_drawStringM0("pulsa una tecla",pvmem);
	ld	bc, #___str_1+0
	push	hl
	push	bc
	call	_cpct_drawStringM0
;src/manager/menu.c:15: pvmem   =  cpct_getScreenPtr(0xc000,10,50);
	ld	hl, #0x320a
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/manager/menu.c:17: espera_pulsacion_tecla();
	call	_espera_pulsacion_tecla
;src/manager/menu.c:18: cpct_setVideoMode(2);
	ld	l, #0x02
	call	_cpct_setVideoMode
	ret
_retromaniac:
	.db #0x01	; 1
	.db #0x14	; 20
	.db #0x3c	; 60
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x50	; 80	'P'
	.db #0xc8	; 200
	.dw _granada
	.db #0x00	; 0
___str_0:
	.ascii "Bienvenido al almacen"
	.db 0x00
___str_1:
	.ascii "pulsa una tecla"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

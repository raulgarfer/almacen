;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module definiciones
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _iniciar_valores
	.globl _y_start_manzana
	.globl _x_start_manzana
	.globl _y_start_jugador
	.globl _x_start_jugador
	.globl _y_frame_4
	.globl _y_frame_3
	.globl _y_frame_2
	.globl _y_frame_1
	.globl _vx_manzana
	.globl _spr_manzana
	.globl _y_manzana
	.globl _x_manzana
	.globl _vx_pera
	.globl _spr_pera
	.globl _y_pera
	.globl _x_pera
	.globl _vy_jug
	.globl _spr_jugador
	.globl _y_jugador
	.globl _x_jugador
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_x_jugador::
	.ds 1
_y_jugador::
	.ds 1
_spr_jugador::
	.ds 2
_vy_jug::
	.ds 1
_x_pera::
	.ds 1
_y_pera::
	.ds 1
_spr_pera::
	.ds 2
_vx_pera::
	.ds 1
_x_manzana::
	.ds 1
_y_manzana::
	.ds 1
_spr_manzana::
	.ds 2
_vx_manzana::
	.ds 1
_y_frame_1::
	.ds 1
_y_frame_2::
	.ds 1
_y_frame_3::
	.ds 1
_y_frame_4::
	.ds 1
_x_start_jugador::
	.ds 1
_y_start_jugador::
	.ds 1
_x_start_manzana::
	.ds 1
_y_start_manzana::
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
;src/definiciones.c:20: void iniciar_valores(){
;	---------------------------------
; Function iniciar_valores
; ---------------------------------
_iniciar_valores::
;src/definiciones.c:21: y_frame_1   =   20;
	ld	hl,#_y_frame_1 + 0
	ld	(hl), #0x14
;src/definiciones.c:22: y_frame_2   =   70;
	ld	hl,#_y_frame_2 + 0
	ld	(hl), #0x46
;src/definiciones.c:23: y_frame_3   =   120;
	ld	hl,#_y_frame_3 + 0
	ld	(hl), #0x78
;src/definiciones.c:24: y_frame_4   =   170;
	ld	hl,#_y_frame_4 + 0
	ld	(hl), #0xaa
;src/definiciones.c:25: x_start_jugador =   10;
	ld	hl,#_x_start_jugador + 0
	ld	(hl), #0x0a
;src/definiciones.c:26: y_start_jugador =   y_frame_1;
	ld	hl,#_y_start_jugador + 0
	ld	(hl), #0x14
;src/definiciones.c:28: x_jugador=x_start_jugador;
	ld	hl,#_x_jugador + 0
	ld	(hl), #0x0a
;src/definiciones.c:29: y_jugador=20;
	ld	hl,#_y_jugador + 0
	ld	(hl), #0x14
;src/definiciones.c:30: vy_jug  =   0;
	ld	hl,#_vy_jug + 0
	ld	(hl), #0x00
;src/definiciones.c:31: x_manzana=30;
	ld	hl,#_x_manzana + 0
	ld	(hl), #0x1e
;src/definiciones.c:32: y_manzana=y_frame_1;
	ld	hl,#_y_manzana + 0
	ld	(hl), #0x14
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

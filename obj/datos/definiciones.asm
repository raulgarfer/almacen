;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module definiciones
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpct_memcpy
	.globl _vaso_lleno
	.globl _pobjeto2
	.globl _pobjeto1
	.globl _pjugador
	.globl _item1
	.globl _player
	.globl _array
	.globl _vidas
	.globl _puntos_centena
	.globl _puntos_decena
	.globl _y_start_manzana
	.globl _x_start_manzana
	.globl _caida_objeto
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
	.globl _pera_init
	.globl _manzana_init
	.globl _player_init
	.globl _iniciar_valores
	.globl _inicia_objetos
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
_caida_objeto::
	.ds 1
_x_start_manzana::
	.ds 1
_y_start_manzana::
	.ds 1
_puntos_decena::
	.ds 1
_puntos_centena::
	.ds 1
_vidas::
	.ds 1
_array::
	.ds 100
_player::
	.ds 10
_item1::
	.ds 10
_pjugador::
	.ds 2
_pobjeto1::
	.ds 2
_pobjeto2::
	.ds 2
_vaso_lleno::
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
;src/datos/definiciones.c:27: void iniciar_valores(){
;	---------------------------------
; Function iniciar_valores
; ---------------------------------
_iniciar_valores::
;src/datos/definiciones.c:28: x_manzana       =   x_start_objeto;
	ld	hl,#_x_manzana + 0
	ld	(hl), #0x3c
;src/datos/definiciones.c:29: y_manzana       =   y_frame_1;
	ld	hl,#_y_manzana + 0
	ld	(hl), #0x0a
;src/datos/definiciones.c:30: puntos          =   '0';
	ld	hl,#_puntos + 0
	ld	(hl), #0x30
;src/datos/definiciones.c:31: puntos_decena   =   '0';
	ld	hl,#_puntos_decena + 0
	ld	(hl), #0x30
;src/datos/definiciones.c:32: puntos_centena  =   '0';
	ld	hl,#_puntos_centena + 0
	ld	(hl), #0x30
;src/datos/definiciones.c:33: vidas           =   '3';
	ld	hl,#_vidas + 0
	ld	(hl), #0x33
;src/datos/definiciones.c:34: vx_manzana      =   -1;
	ld	hl,#_vx_manzana + 0
	ld	(hl), #0xff
;src/datos/definiciones.c:35: caida_objeto    =   x_jugador + RIGHTPNG_W + 1;//posicion donde conprueba si jugador coge objeto
	ld	hl, #_caida_objeto
	ld	a,(#_x_jugador + 0)
	add	a, #0x05
	ld	(hl), a
;src/datos/definiciones.c:36: pjugador        =   &array[0];
	ld	bc, #_array+0
	ld	(_pjugador), bc
;src/datos/definiciones.c:37: pobjeto1        =   &array[1];
	ld	hl, #0x000a
	add	hl, bc
	ld	(_pobjeto1), hl
;src/datos/definiciones.c:38: pobjeto2        =   &array[2];
	ld	hl, #0x0014
	add	hl, bc
	ld	(_pobjeto2), hl
;src/datos/definiciones.c:39: vmem_ahora      =   0xC000; 
	ld	hl, #0xc000
	ld	(_vmem_ahora), hl
;src/datos/definiciones.c:40: vaso_lleno      =   vacio;
	ld	hl,#_vaso_lleno + 0
	ld	(hl), #0x00
	ret
;src/datos/definiciones.c:49: void inicia_objetos(){
;	---------------------------------
; Function inicia_objetos
; ---------------------------------
_inicia_objetos::
;src/datos/definiciones.c:50: cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
	ld	hl, #0x000a
	push	hl
	ld	hl, #_player_init
	push	hl
	ld	hl, #_array
	push	hl
	call	_cpct_memcpy
;src/datos/definiciones.c:51: cpct_memcpy (&array[1], &manzana_init, sizeof(array[0]));
	ld	hl, #0x000a
	push	hl
	ld	hl, #_manzana_init
	push	hl
	ld	hl, #(_array + 0x000a)
	push	hl
	call	_cpct_memcpy
;src/datos/definiciones.c:52: cpct_memcpy (&array[2], &pera_init, sizeof(array[0]));
	ld	hl, #0x000a
	push	hl
	ld	hl, #_pera_init
	push	hl
	ld	hl, #(_array + 0x0014)
	push	hl
	call	_cpct_memcpy
	ret
_player_init:
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x04	; 4
	.db #0x28	; 40
	.dw _rightpng
	.db #0x00	; 0
_manzana_init:
	.db #0x01	; 1
	.db #0x50	; 80	'P'
	.db #0x0a	; 10
	.db #0xff	; -1
	.db #0x00	;  0
	.db #0x02	; 2
	.db #0x10	; 16
	.dw _manzana
	.db #0x50	; 80	'P'
_pera_init:
	.db #0x01	; 1
	.db #0x3c	; 60
	.db #0x32	; 50	'2'
	.db #0xff	; -1
	.db #0x00	;  0
	.db #0x02	; 2
	.db #0x10	; 16
	.dw _pera
	.db #0x3c	; 60
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)

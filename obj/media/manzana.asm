;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module manzana
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _manzana
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
	.area _CODE
_manzana:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0xc0	; 192
	.db #0x03	; 3
	.db #0xf7	; 247
	.db #0xf8	; 248
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x37	; 55	'7'
	.db #0x03	; 3
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x61	; 97	'a'
	.db #0xc7	; 199
	.db #0xf8	; 248
	.db #0x61	; 97	'a'
	.db #0xc7	; 199
	.db #0xf8	; 248
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0xe3	; 227
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x04	; 4
	.area _INITIALIZER
	.area _CABS (ABS)

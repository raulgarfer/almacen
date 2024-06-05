.module rupturas.s
.include "cpctelera.h.s"
.globl cpct_waitVSYNC_asm
.globl cpct_setPALColour_asm
.macro siguiente_interrrupcion direccion
.globl cpct_setVideoMode_asm
.globl _pinta_marcador
    ld hl,#direccion
    ld (0x39),hl
.endm
.macro numero_interrupcion numero 
    ld a,#numero
    ld (IR),a
.endm

IR::
.db 0
_control_interrupciones::
    im 1
    call cpct_waitVSYNC_asm
    halt
    halt
    call cpct_waitVSYNC_asm
    di
    ld a,#0xc3
    ld (0x38),a
    ld hl,#int_1
    ld (0x39),hl
    ei 
ret
int_1::
    cpctm_push af,bc,hl
        numero_interrupcion 1
        siguiente_interrrupcion int_2
     cpctm_pop hl,bc,af
    ei
reti 
int_2::
   cpctm_push af,bc,hl
        numero_interrupcion 2
        siguiente_interrrupcion int_3
    cpctm_pop hl,bc,af
    ei
reti
int_3::
   cpctm_push af,bc,hl
        numero_interrupcion 3
        siguiente_interrrupcion int_4
           ld l,#1                             ;;pen
    ld h,#4                             ;;ink
    call cpct_setPALColour_asm
    
      cpctm_pop hl,bc,af
    ei
reti
int_4::
  cpctm_push af,bc,hl
        numero_interrupcion 4
        siguiente_interrrupcion int_5
     cpctm_pop hl,bc,af
    
    ei
reti
int_5::
  cpctm_push af,bc,hl
        numero_interrupcion 5
        siguiente_interrrupcion int_6
     cpctm_pop hl,bc,af
    ei
reti
int_6::
  cpctm_push af,bc,hl
        numero_interrupcion 6
        siguiente_interrrupcion int_1
    ld l,#1                             ;;pen
    ld h,#3                             ;;ink
    call cpct_setPALColour_asm
    
    cpctm_pop hl,bc,af
    ei
reti
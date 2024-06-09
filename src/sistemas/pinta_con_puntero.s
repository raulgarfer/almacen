.include "cpctelera.h.s"
.include "datos/declaraciones.inc"
_pinta_objeto::   .dw 0xdead
.globl _vmem_ahora  
.globl cpct_getScreenPtr_asm
.globl cpct_drawSprite_asm

_pinta_con_puntero::
    ld ix,(_pinta_objeto)
 loop_array:
    ld de,(_vmem_ahora)
    ld c,1(ix)
    ld b,2(ix)
       call cpct_getScreenPtr_asm
    ex de,hl

    ld h,sprite+1(ix)
    ld l,sprite(ix)
    ld c,ancho(ix)
    ld b,alto(ix)
        call cpct_drawSprite_asm
        

ret
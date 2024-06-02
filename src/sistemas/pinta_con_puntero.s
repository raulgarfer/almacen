.include "cpctelera.h.s"
;;//void borra_con_puntero(objeto* i){
;;//     u8* pvmem;
;;//    pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,i->x,i->y);
;;//    cpct_drawSolidBox(pvmem,0,i->ancho,i->alto);
;;//}
_pinta_objeto::   .dw 0xdead
.globl _vmem_ahora  
.globl cpct_getScreenPtr_asm
.globl cpct_drawSprite_asm

_pinta_con_puntero::
    ld ix,(_pinta_objeto)
    ld de,(_vmem_ahora)
    ld c,1(ix)
    ld b,2(ix)
       call cpct_getScreenPtr_asm
    ex de,hl

    ld h,8(ix)
    ld l,7(ix)
    ld c,5(ix)
    ld b,6(ix)
        call cpct_drawSprite_asm
ret
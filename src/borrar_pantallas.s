.include "cpctelera.h.s"
_mover_pila::
   pop hl
   ld sp,#0x8000-2
   push hl
ret

_borrar_ambas_pantallas::
    xor a
    ld hl,#0xc000
    ld d,h
    ld e,l
    inc de
    ld (hl),a
    ld bc,#0x4000-1
    ldir
     xor a
   
    ld hl,#0x8000
    ld d,h
    ld e,l
    inc de
    ld (hl),a
    ld bc,#0x4000-1
    ldir
ret

.module fisica_objetos.s
.include "cpctelera.h.s"
.include "datos/declaraciones.inc"
;;//void fisica_objetos(){
;;//    u8 i;
;;//    for (i=1;i<max_entidades;i++){
;;//    borra_objeto(array[i].x,array[i].y,array[i].ancho,array[i].alto);
;;//    array[i].x+=array[i].vx;
;;//    if (array[i].x==10)
;;//        {comprobar_recojida(i);}

_fisica_objetos_con_array::
    ld ix,#_array
 

ret

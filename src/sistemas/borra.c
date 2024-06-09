#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void borra(){       //borra todos los sprites
    u8* pvmem;
    u8 i;
    for (i=0;i<max_entidades;i++){
    pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,array[i].x,array[i].y);
    cpct_drawSolidBox(pvmem,0,array[i].ancho,array[i].alto);}
}
void borra_objeto(u8 x,u8 y,u8 ancho,u8 alto){
    u8* pvmem;
    pvmem   =   cpct_getScreenPtr((u8*)vmem_ahora,x,y);  
    cpct_drawSolidBox(pvmem,0,ancho,alto);
}

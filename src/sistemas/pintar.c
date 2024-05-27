  #include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void pintar_sprites(){
    u8* pvmem;
  pvmem = cpct_getScreenPtr(CPCT_VMEM_START, array[0].x, array[0].y);
   cpct_drawSprite(derecha,pvmem,DERECHA_W,DERECHA_H);
   pvmem=   cpct_getScreenPtr(CPCT_VMEM_START,array[1].x,array[1].y);
   cpct_drawSprite(array[1].sprite,pvmem,array[1].ancho,array[1].alto);
}
  #include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void pintar_sprites(){
    u8* pvmem;
  pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x_jugador, y_jugador);
   cpct_drawSprite(derecha,pvmem,DERECHA_W,DERECHA_H);
   pvmem=   cpct_getScreenPtr(CPCT_VMEM_START,x_manzana,y_manzana);
   cpct_drawSprite(manzana,pvmem,MANZANA_W,MANZANA_H);
}
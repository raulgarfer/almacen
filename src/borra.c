#include <cpctelera.h>
#include "sprites.h"
#include "delcaraciones.h"
void borra(){
    u8* pvmem;
    pvmem   =   cpct_getScreenPtr(0xc000,x_jugador,y_jugador);
    cpct_drawSolidBox(pvmem,0,DERECHA_W,DERECHA_H);
}
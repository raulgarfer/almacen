#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void borra(){
    u8* pvmem;
    pvmem   =   cpct_getScreenPtr(0xc000,x_jugador,y_jugador);
    cpct_drawSolidBox(pvmem,0,DERECHA_W,DERECHA_H);
}
void borra_objeto(u8 x,u8 y,u8 ancho,u8 alto){
    u8* pvmem;
    pvmem   =   cpct_getScreenPtr(0xc000,x,y);  
    cpct_drawSolidBox(pvmem,0,ancho,alto);
}
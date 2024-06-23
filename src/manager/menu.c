#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
//const objeto player_init  ={1,x_start_jugador,y_frame_1,0,0,RIGHTPNG_W,RIGHTPNG_H,rightpng};
const objeto retromaniac={1,20,60,0,0,GRANADA_W,GRANADA_H,granada};
void menu_juego(){
       u8* pvmem;
        cpct_setVideoMode(0);
     cpct_clearScreen_f64 (0);
    cpct_clearScreen_f64(0);
    pvmem   =  cpct_getScreenPtr((u8*)0xc000,10,20);
    cpct_drawStringM0("Bienvenido al almacen",pvmem);
        pvmem   =  cpct_getScreenPtr(0xc000,10,40);
    cpct_drawStringM0("pulsa una tecla",pvmem);
      pvmem   =  cpct_getScreenPtr(0xc000,10,50);
    //cpct_drawSprite (retromaniac.sprite, pvmem, retromaniac.ancho,retromaniac.alto);
    espera_pulsacion_tecla();
          cpct_setVideoMode(2);
       
    
}
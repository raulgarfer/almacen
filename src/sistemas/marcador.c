#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
extern i8 hisc;
void pinta_marcador(){
    cpct_setPALColour (0, 1);
    cpct_setPALColour (1, 2);
    cpct_drawStringM2("Puntos",(u8*)marcador_y); 
    cpct_drawStringM2("Vidas",(u8*)marcador_y+10);
    cpct_drawStringM2("HI",(u8*)marcador_y+20);
}
u8 puntos;
void pinta_puntos(){
    cpct_setPALColour (0, 1);
    cpct_setPALColour (1, 2);
        cpct_drawCharM2((u8*)marcador_y+7,puntos_decena);
        cpct_drawCharM2((u8*)marcador_y+8,puntos);
    cpct_setPALColour (1, 3);
         cpct_drawCharM2((u8*)marcador_y+16,vidas);
         cpct_drawCharM2((u8*)marcador_y+32,hisc);
}
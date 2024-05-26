#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"

void pinta_marcador(){
    cpct_setPALColour (0, 1);
    cpct_setPALColour (1, 2);
    cpct_drawStringM2("Puntos",marcador_y); 
    cpct_drawStringM2("Vidas",marcador_y+10);
}
u8 puntos;
void pinta_puntos(){
    cpct_setPALColour (0, 1);
    cpct_setPALColour (1, 2);
        cpct_drawCharM2(marcador_y+7,puntos_decena);
        cpct_drawCharM2(marcador_y+8,puntos);
         cpct_drawCharM2(marcador_y+16,vidas);

}
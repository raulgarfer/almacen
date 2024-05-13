#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void pinta_marcador(){
    cpct_setPALColour (0, 1);

    cpct_setPALColour (1, 2);

    cpct_drawStringM2("Puntos",0xc780); 
}
u8 puntos;
void pinta_puntos(){
    cpct_setPALColour (0, 1);
    cpct_setPALColour (1, 2);
        cpct_drawCharM2(0xc78a,puntos_decena);
        cpct_drawCharM2(0xc78a+1,puntos);

}
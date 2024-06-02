#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"

void suma_puntos(u8 i){
    puntos++;
    if (puntos=='9'+1)
        {puntos='0';
        puntos_decena++;}
    array[i].x = array[i].x_inicial;
    pinta_marcador();
   
}
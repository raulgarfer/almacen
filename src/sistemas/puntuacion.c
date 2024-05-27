#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"

void suma_puntos(){
    puntos++;
    if (puntos=='9'+1)
        {puntos='0';
        puntos_decena++;}
    array[1].x = 60;
    pinta_marcador();
   
}
#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"

void suma_puntos(){
    puntos++;
    if (puntos=='9'+1)
        {puntos='0';
        puntos_decena++;}
    x_manzana = x_start_objeto;
    pinta_marcador();
   
}
#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void fisica_objetos(){
    borra_objeto(x_manzana,y_manzana,MANZANA_W,MANZANA_H);
    x_manzana+=vx_manzana;
    if (x_manzana==caida_objeto)
        {comprobar_recojida();}
        }

void comprobar_recojida(){
    if (y_manzana==y_jugador)
        {suma_puntos();}
    else {muere();}}

void muere(){
    while(1);
}

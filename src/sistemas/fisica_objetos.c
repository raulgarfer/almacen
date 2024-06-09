#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void fisica_objetos(){
    u8 i;
    for (i=1;i<max_entidades;i++){
    borra_objeto(array[i].x,array[i].y,array[i].ancho,array[i].alto);
    array[i].x+=array[i].vx;
    if (array[i].x==10)
        {comprobar_recojida(i);}
        }
}
objeto* obj_caido ;
void comprobar_recojida(u8 i){     
    if (array[i].y==array[0].y)
        {suma_puntos(i);
          pinta_puntos();
          vaso_lleno    =   lleno;}
    else {obj_caido=&array[i];
        muere(i);}
}


#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void fisica(){
    if (array[0].vy==1)
            {borra();
                baja();}
    else if(array[0].vy==-1)
            {borra();
                sube();}
}   
void baja(){
    if (array[0].y   ==  y_frame_1)
        { array[0].y  =   y_frame_2;
        array[0].sprite =   derecha_2;}
     else 
    if (array[0].y   ==  y_frame_2)
        {array[0].y  =   y_frame_3;
         array[0].sprite =  rightpng;}
    else
    if (array[0].y   ==  y_frame_3)
        {array[0].y  =   y_frame_4;
        array[0].sprite =   derecha_2;
        vacia_vaso();}
}
void sube(){
     if (array[0].y   ==  y_frame_4)
        {array[0].y  =   y_frame_3;
         array[0].sprite =  rightpng;}
     else 
    if (array[0].y   ==  y_frame_3)
        {array[0].y  =   y_frame_2;
        array[0].sprite =   derecha_2;}
     else
    if (array[0].y   ==  y_frame_2)
        {array[0].y  =   y_frame_1;
        array[0].sprite =  rightpng;}
}
void vacia_vaso(){
    if (vaso_lleno==lleno)
        {puntos++;
        array[0].sprite =  rightpng; }
}
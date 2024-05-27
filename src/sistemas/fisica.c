#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void baja();
void sube();

void fisica(){
    if (array[0].vy==1)
            baja();
    else if(array[0].vy==-1)
            sube();
}   
void baja(){
    if (array[0].y   ==  y_frame_1)
        {array[0].y  =   y_frame_2;}
     else 
    if (array[0].y   ==  y_frame_2)
        {array[0].y  =   y_frame_3;}
     else
    if (array[0].y   ==  y_frame_3)
        {array[0].y  =   y_frame_4;}}
void sube(){
     if (array[0].y   ==  y_frame_4)
        {array[0].y  =   y_frame_3;}
     else 
    if (array[0].y   ==  y_frame_3)
        {array[0].y  =   y_frame_2;}
     else
    if (array[0].y   ==  y_frame_2)
        {array[0].y  =   y_frame_1;}
}
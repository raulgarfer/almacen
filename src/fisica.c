#include <cpctelera.h>
#include "sprites.h"
#include "delcaraciones.h"
void fisica(){
    if (vy_jug==1)
            {baja();}
        else if(vy_jug==-1)
            {sube();}
}   
void baja(){
    if (y_jugador   ==  y_frame_1)
        {y_jugador  =   y_frame_2;}
     else 
    if (y_jugador   ==  y_frame_2)
        {y_jugador  =   y_frame_3;}
     else
    if (y_jugador   ==  y_frame_3)
        {y_jugador  =   y_frame_4;}}
void sube(){
     if (y_jugador   ==  y_frame_4)
        {y_jugador  =   y_frame_3;}
     else 
    if (y_jugador   ==  y_frame_3)
        {y_jugador  =   y_frame_2;}
     else
    if (y_jugador   ==  y_frame_2)
        {y_jugador  =   y_frame_1;}
}
#include <cpctelera.h>
#include "sprites.h"
u8 x_jugador,y_jugador;
u8* spr_jugador;
i8 vy_jug;

u8 x_pera,y_pera;
u8* spr_pera;
u8 vx_pera;

u8 x_manzana,y_manzana;
u8* spr_manzana;
i8 vx_manzana;

u8 y_frame_1,y_frame_2,y_frame_3,y_frame_4; //las 4 posiciones posibles y del jugador

u8 x_start_jugador,y_start_jugador;
 u8 x_start_manzana,y_start_manzana;

void iniciar_valores(){
    y_frame_1   =   20;
    y_frame_2   =   70;
    y_frame_3   =   120;
    y_frame_4   =   170;
    x_start_jugador =   10;
    y_start_jugador =   y_frame_1;

    x_jugador=x_start_jugador;
    y_jugador=20;
    vy_jug  =   0;
    x_manzana=30;
    y_manzana=y_frame_1;
}

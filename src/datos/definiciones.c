#include <cpctelera.h>
#include "sprites.h"
u8 x_jugador,y_jugador;
u8* spr_jugador;
i8 vy_jug;

u8 x_pera,y_pera;
u8* spr_pera;
u8 vx_pera;
u8 x_start_objeto;

u8 x_manzana,y_manzana;
u8* spr_manzana;
i8 vx_manzana;
u8 caida_objeto;

u8 y_frame_1,y_frame_2,y_frame_3,y_frame_4; //las 4 posiciones posibles y del jugador

u8 x_start_jugador,y_start_jugador;
 u8 x_start_manzana,y_start_manzana;
 u8 puntos_decena;
extern u8 puntos;
void iniciar_valores(){
    y_frame_1       =   20;         //hay que ir cambiando a medida
    y_frame_2       =   70;         //que se actualice el juego
    y_frame_3       =   120;
    y_frame_4       =   170;
    x_start_jugador =   10;
    y_start_jugador =   y_frame_1;
    x_start_objeto  =   60;

    x_jugador       =   x_start_jugador;
    y_jugador       =   y_frame_1;
    vy_jug          =   0;
    x_manzana       =   x_start_objeto;
    y_manzana       =   y_frame_1;
    puntos          =   '0';
    puntos_decena   =   '0';
    vx_manzana      =   -1;
    caida_objeto    =   x_jugador + DERECHA_W + 1;//posicion donde conprueba si jugador coge objeto
}

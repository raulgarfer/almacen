#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
u8 x_jugador,y_jugador;
u8* spr_jugador;
i8 vy_jug;

u8 x_pera,y_pera;
u8* spr_pera;
u8 vx_pera;

u8 x_manzana,y_manzana;
u8* spr_manzana;
i8 vx_manzana;
u8 caida_objeto;
u8 x_start_manzana,y_start_manzana;
u8 puntos_decena;
u8 puntos_centena;
u8 vidas;
//extern  struct entidad;
//extern struct entidad init_jugador;

void iniciar_valores(){
    //struct entidad inicio_jugador;
    x_jugador       =   x_start_jugador;
    y_jugador       =   y_frame_1;
    vy_jug          =   0;
    x_manzana       =   x_start_objeto;
    y_manzana       =   y_frame_1;
    puntos          =   '0';
    puntos_decena   =   '0';
    puntos_centena  =   '0';
    vidas           =   '3';
    vx_manzana      =   -1;
    caida_objeto    =   x_jugador + DERECHA_W + 1;//posicion donde conprueba si jugador coge objeto
    //entidad inicial={};
} 

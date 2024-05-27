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

void iniciar_valores(){
    //array[0].x       =   x_start_jugador;
    //array[0].y       =   y_frame_1;
    //array[0].vy          =   0;
    x_manzana       =   x_start_objeto;
    y_manzana       =   y_frame_1;
    puntos          =   '0';
    puntos_decena   =   '0';
    puntos_centena  =   '0';
    vidas           =   '3';
    vx_manzana      =   -1;
    caida_objeto    =   x_jugador + DERECHA_W + 1;//posicion donde conprueba si jugador coge objeto
    
} 

objeto player;
objeto item1;

objeto array[10];
//   u8 estado;
//    u8 x,y;
//    i8 vx,vy;
//    u8 ancho,alto;
//    u8* sprite;
const objeto player_init  ={1,x_start_jugador,y_frame_1,0,0,DERECHA_W,DERECHA_H,derecha};
const objeto manzana_init ={1,x_start_objeto,y_frame_1,-1,0,MANZANA_W,MANZANA_H,manzana};

void inicia_objetos(){
   cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
   cpct_memcpy (&array[1], &manzana_init, sizeof(array[0]));
}

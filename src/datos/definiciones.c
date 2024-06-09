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
objeto array[10];
objeto player;
objeto item1;
objeto* pjugador;
objeto* pobjeto1;
objeto* pobjeto2;
u8 vaso_lleno;
void iniciar_valores(){
    x_manzana       =   x_start_objeto;
    y_manzana       =   y_frame_1;
    puntos          =   '0';
    puntos_decena   =   '0';
    puntos_centena  =   '0';
    vidas           =   '3';
    vx_manzana      =   -1;
    caida_objeto    =   x_jugador + RIGHTPNG_W + 1;//posicion donde conprueba si jugador coge objeto
    pjugador        =   &array[0];
    pobjeto1        =   &array[1];
    pobjeto2        =   &array[2];
    vmem_ahora      =   0xC000; 
    vaso_lleno      =   vacio;
} 

const objeto player_init  ={1,x_start_jugador,y_frame_1,0,0,RIGHTPNG_W,RIGHTPNG_H,rightpng};
const objeto manzana_init ={1,x_init_obj2,y_frame_1,-1,0,MANZANA_W,MANZANA_H,manzana,x_start_objeto};
const objeto pera_init ={1,x_init_obj1,y_frame_2,-1,0,PERA_W,PERA_H,pera,x_start_objeto};



void inicia_objetos(){
   cpct_memcpy (&array[0], &player_init, sizeof(array[0]));
   cpct_memcpy (&array[2], &manzana_init, sizeof(array[0]));
   cpct_memcpy (&array[1], &pera_init, sizeof(array[0]));

}

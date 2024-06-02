#pragma once
#include <cpctelera.h>
#include "sprites.h"
#include "funciones.h"
#include "variables.h"

#define max_entidades       2
#define marcador_y  0xc780
#define y_frame_1           10         //hay que ir cambiando a medida
#define y_frame_2           50         //que se actualice el juego
#define y_frame_3           100
#define y_frame_4           150
#define x_start_jugador     10
#define y_start_jugador     20
#define x_start_objeto      60
#define x_init_obj1         60
#define x_init_obj2         80
typedef struct Sobjeto{
    u8 estado;
    u8 x,y;
    i8 vx,vy;
    u8 ancho,alto;
    u8* sprite;
    u8 x_inicial;
}objeto;

extern objeto player;
extern objeto item1;
extern objeto array[];
#pragma once
#include <cpctelera.h>
#include "sprites.h"

extern struct entidad;
extern u8 x_jugador,y_jugador;
extern u8* spr_jugador;
extern i8 vx_jug,vy_jug;

extern u8 x_pera,y_pera;
extern u8* spr_pera;
extern u8 vx_pera;
extern u8 caida_objeto;
extern u8 puntos;
extern u8 puntos_decena;
extern u8 x_start_objeto;

extern u8 x_manzana,y_manzana;
extern u8* spr_manzana;
extern i8 vx_manzana;
extern u8 y_frame_1,y_frame_2,y_frame_3,y_frame_4;

void control_interrupciones();
void borra();
void teclado();
void fisica();
void iniciar_valores();
void mientras_juego();
void pintar_spites();
void suma_puntos();
void muere();
void comprobar_recojida();
void fisica_objetos();
void pintar_sprites();
void borra_objeto(u8 ,u8 ,u8 ,u8 );


  #include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
extern objeto* pinta_objeto;
void pinta_con_puntero();
void pintar_sprites(){
  u8 i;
  for (i=0;i<max_entidades;i++){
  pinta_objeto  = &array[i];
  pinta_con_puntero();} 
   }
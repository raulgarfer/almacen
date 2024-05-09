#include <cpctelera.h>
#include "sprites.h"
#include "delcaraciones.h"

typedef struct Sentidad{
   u8 x,y;
   u8 vx,vy;
   u8* sprite;
}entidad;
void main(void) {
   u8* pvmem;  // Pointer to video memory
   entidad jugador;
   cpct_disableFirmware();
   control_interrupciones();
   cpct_setVideoMode(2);
   iniciar_valores();
   //pinta_marcador();
   mientras_juego();
 
}
void mientras_juego(){
  while(1){
      borra();
      teclado();
      fisica();
      pintar_sprites();
      pinta_marcador();
      cpct_waitVSYNC();
      }
   }


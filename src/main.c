#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"


void main(void) {
   cpct_disableFirmware();
   control_interrupciones();
   cpct_setVideoMode(2);
   menu_juego();
   a_jugar();}
void a_jugar(){  
     cpct_clearScreen_f64(0); 
   iniciar_valores();
   pinta_marcador();
   mientras_juego();
}

void mientras_juego(){
  while(1){
      borra();
      teclado();
      fisica();
      fisica_objetos();
      pintar_sprites();
      pinta_puntos();
      cpct_waitVSYNC();
      }
   }


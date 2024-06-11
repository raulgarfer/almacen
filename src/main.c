#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
#include "music/Demo.h"
u8* vmem_ahora;//cpct_pageC0 ;
extern u8 hisc;
void main(void) {
   cpct_disableFirmware();
     hisc='0';
   mover_pila();
 inicia();
}
void inicia(){
   //cpct_akp_musicInit (Demo);
   control_interrupciones();
   cpct_setVideoMode(2);
   borrar_ambas_pantallas();
   inicia_objetos();
   menu_juego();
   a_jugar();}
void a_jugar(){  
    // cpct_clearScreen_f64(0); 
       borrar_ambas_pantallas();
    iniciar_valores();
    inicia_objetos();
   pinta_marcador();
    pinta_puntos();
   mientras_juego();

}

void mientras_juego(){
  while(1){
      borra();
      teclado();
      fisica();
      cambiar_sprites();
      fisica_objetos();
      pintar_sprites();
      cpct_waitVSYNC();
      }
   }
void cambiar_sprites(){
      if (vaso_lleno==vacio)
              {array[0].sprite =   derecha_2;}
              else array[0].sprite =  derecha_2_lleno;}


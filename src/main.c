#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"

u8* vmem_ahora;//cpct_pageC0 ;

void main(void) {
   cpct_disableFirmware();
   mover_pila();
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
   pinta_marcador();
    pinta_puntos();
   mientras_juego();

}

void mientras_juego(){
  while(1){
      borra();
      teclado();
      fisica();
      fisica_objetos();
      pintar_sprites();
     // cpct_waitVSYNC();
    //  if (vmem_ahora==0xc000)
    //        {vmem_ahora=0x8000;
    //        cpct_setVideoMemoryPage(cpct_page80);}
    //     else if (vmem_ahora  == 0x8000)
    //        {vmem_ahora=0xc000;
    //        cpct_setVideoMemoryPage(cpct_pageC0 );}
      cpct_waitVSYNC();
      }
   }


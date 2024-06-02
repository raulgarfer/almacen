#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void muere(u8 i){
   vidas--;
    array[i].x = array[i].x_inicial;
    pinta_puntos();
   if (vidas=='0')
    {fin_juego();}
}
void fin_juego(){
    u8* pvmem;
    pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,20);
        cpct_drawStringM2("Has sido despedido!",pvmem);
    pvmem=cpct_getScreenPtr((u8*)vmem_ahora,10,40);
        cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
    espera_pulsacion_tecla();
    espera_pulsar();
}
void espera_pulsacion_tecla(){
    espera_pulsacion_alguna_tecla();
    cpct_clearScreen_f64 (0);
}
void espera_pulsar(){
    a_jugar();}
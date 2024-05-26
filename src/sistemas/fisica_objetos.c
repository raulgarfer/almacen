#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void fisica_objetos(){
    borra_objeto(x_manzana,y_manzana,MANZANA_W,MANZANA_H);
    x_manzana+=vx_manzana;
    if (x_manzana==caida_objeto)
        {comprobar_recojida();}
        }

void comprobar_recojida(){
    if (y_manzana==y_jugador)
        {suma_puntos();}
    else {muere();}}

void muere(){
   vidas--;
    x_manzana = x_start_objeto;
    pinta_marcador();
   if (vidas=='0')
    {fin_juego();}
}
void fin_juego(){
    u8* pvmem;
   // cpct_clearScreen(0);
    pvmem=cpct_getScreenPtr(0xc000,10,20);
        cpct_drawStringM2("Has sido despedido!",pvmem);
    pvmem=cpct_getScreenPtr(0xc000,10,40);
        cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
    espera_pulsacion_tecla();
    espera_pulsar();
}
void espera_pulsacion_tecla(){
    u8 pulsado;
    cpct_scanKeyboard();
    pulsado=cpct_isAnyKeyPressed();
    if (pulsado!=0)
        {espera_pulsar();}
    else espera_pulsacion_tecla();
}
void espera_pulsar(){
    a_jugar();}
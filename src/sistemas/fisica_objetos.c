#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void fisica_objetos(){
    borra_objeto(array[1].x,array[1].y,array[1].ancho,array[1].alto);
    array[1].x+=array[1].vx;
    if (array[1].x==caida_objeto)
        {comprobar_recojida();}
        }

void comprobar_recojida(){
    if (array[1].y==array[0].y)
        {suma_puntos();}
    else {muere();}}

void muere(){
   vidas--;
    array[1].x = x_start_objeto;
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
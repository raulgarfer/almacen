#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void menu_juego(){
       u8* pvmem;
     cpct_clearScreen_f64 (0);
    cpct_clearScreen_f64(0);
    pvmem   =  cpct_getScreenPtr((u8*)0xc000,10,20);
    cpct_drawStringM2("Bienvenido al almacen",pvmem);
        pvmem   =  cpct_getScreenPtr(0xc000,10,40);
    cpct_drawStringM2("pulsa una tecla",pvmem);
    espera_pulsacion_tecla();

}
#include <cpctelera.h>
#include "sprites.h"
#include "delcaraciones.h"
void teclado(){
    vy_jug=0;
    cpct_scanKeyboard();
        if(cpct_isKeyPressed(Key_Q)
            && y_jugador>=y_frame_1)
                {vy_jug=-1;}
        if(cpct_isKeyPressed(Key_A)
            && y_jugador<=y_frame_4)
                {vy_jug=1;}
}
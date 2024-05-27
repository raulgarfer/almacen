#include <cpctelera.h>
#include "sprites.h"
#include "datos/delcaraciones.h"
void teclado(){
    array[0].vy=0;
    cpct_scanKeyboard();
        if(cpct_isKeyPressed(Key_Q)
            && array[0].y>=y_frame_1)
                {array[0].vy=-1;}
        if(cpct_isKeyPressed(Key_A)
            && array[0].y<=y_frame_4)
                {array[0].vy=1;}
}
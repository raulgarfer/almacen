.module rutinas_espera_tecla.s
.area _CODE
.include "cpctelera.h.s"
.globl cpct_scanKeyboard_f_asm
.globl cpct_isAnyKeyPressed_f_asm
.globl cpct_isKeyPressed_asm
;;============================================================================================
;;espera que no haya ninguna tecla pulsada y seguidamente a que se pulse una
;;============================================================================================ 
 _espera_pulsacion_alguna_tecla::
    espera_que_no_se_pulse_tecla:
    call  cpct_scanKeyboard_f_asm
    call cpct_isAnyKeyPressed_f_asm
        jr nz,espera_que_no_se_pulse_tecla
 espera_que_si_se_pulse:
    call  cpct_scanKeyboard_f_asm
    call cpct_isAnyKeyPressed_f_asm
        jr z,espera_que_si_se_pulse
ret 
_q_esta_pulsada::
    .db 0
_a_esta_pulsada::
    .db 0
_comprueba_que_arriba_no_este_pulsada::
     call  cpct_scanKeyboard_f_asm
     ld hl,#Key_Q
     call cpct_isKeyPressed_asm
        jr z,q_no_pulsada
            ld hl,#_q_esta_pulsada
            ld (hl),#1
            jr _comprueba_que_abajo_no_este_pulsada
    q_no_pulsada:
            ld hl,#_q_esta_pulsada
            ld (hl),#0
_comprueba_que_abajo_no_este_pulsada::
    ld hl,#Key_A
    call cpct_isKeyPressed_asm
        jr z,a_no_pulsada
            ld hl,#_a_esta_pulsada
            ld (hl),#1
            jr fin_teclado
        a_no_pulsada:
            ld hl,#_a_esta_pulsada
            ld (hl),#0
fin_teclado::
ret


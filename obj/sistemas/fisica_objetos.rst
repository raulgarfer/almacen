                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module fisica_objetos
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _espera_pulsar
                             12 	.globl _fin_juego
                             13 	.globl _borra_objeto
                             14 	.globl _suma_puntos
                             15 	.globl _cpct_getScreenPtr
                             16 	.globl _cpct_drawStringM2
                             17 	.globl _cpct_isAnyKeyPressed
                             18 	.globl _cpct_scanKeyboard
                             19 	.globl _fisica_objetos
                             20 	.globl _comprobar_recojida
                             21 	.globl _muere
                             22 	.globl _espera_pulsacion_tecla
                             23 ;--------------------------------------------------------
                             24 ; special function registers
                             25 ;--------------------------------------------------------
                             26 ;--------------------------------------------------------
                             27 ; ram data
                             28 ;--------------------------------------------------------
                             29 	.area _DATA
                             30 ;--------------------------------------------------------
                             31 ; ram data
                             32 ;--------------------------------------------------------
                             33 	.area _INITIALIZED
                             34 ;--------------------------------------------------------
                             35 ; absolute external ram data
                             36 ;--------------------------------------------------------
                             37 	.area _DABS (ABS)
                             38 ;--------------------------------------------------------
                             39 ; global & static initialisations
                             40 ;--------------------------------------------------------
                             41 	.area _HOME
                             42 	.area _GSINIT
                             43 	.area _GSFINAL
                             44 	.area _GSINIT
                             45 ;--------------------------------------------------------
                             46 ; Home
                             47 ;--------------------------------------------------------
                             48 	.area _HOME
                             49 	.area _HOME
                             50 ;--------------------------------------------------------
                             51 ; code
                             52 ;--------------------------------------------------------
                             53 	.area _CODE
                             54 ;src/sistemas/fisica_objetos.c:4: void fisica_objetos(){
                             55 ;	---------------------------------
                             56 ; Function fisica_objetos
                             57 ; ---------------------------------
   4212                      58 _fisica_objetos::
                             59 ;src/sistemas/fisica_objetos.c:5: borra_objeto(x_manzana,y_manzana,MANZANA_W,MANZANA_H);
   4212 21 02 10      [10]   60 	ld	hl, #0x1002
   4215 E5            [11]   61 	push	hl
   4216 3A C9 47      [13]   62 	ld	a, (_y_manzana)
   4219 F5            [11]   63 	push	af
   421A 33            [ 6]   64 	inc	sp
   421B 3A C8 47      [13]   65 	ld	a, (_x_manzana)
   421E F5            [11]   66 	push	af
   421F 33            [ 6]   67 	inc	sp
   4220 CD 77 41      [17]   68 	call	_borra_objeto
   4223 F1            [10]   69 	pop	af
   4224 F1            [10]   70 	pop	af
                             71 ;src/sistemas/fisica_objetos.c:6: x_manzana+=vx_manzana;
   4225 FD 21 C8 47   [14]   72 	ld	iy, #_x_manzana
   4229 FD 7E 00      [19]   73 	ld	a, 0 (iy)
   422C 21 CC 47      [10]   74 	ld	hl, #_vx_manzana
   422F 86            [ 7]   75 	add	a, (hl)
   4230 FD 77 00      [19]   76 	ld	0 (iy), a
                             77 ;src/sistemas/fisica_objetos.c:7: if (x_manzana==caida_objeto)
   4233 3A C8 47      [13]   78 	ld	a,(#_x_manzana + 0)
   4236 FD 21 CD 47   [14]   79 	ld	iy, #_caida_objeto
   423A FD 96 00      [19]   80 	sub	a, 0 (iy)
   423D C0            [11]   81 	ret	NZ
                             82 ;src/sistemas/fisica_objetos.c:8: {comprobar_recojida();}
   423E C3 41 42      [10]   83 	jp  _comprobar_recojida
                             84 ;src/sistemas/fisica_objetos.c:11: void comprobar_recojida(){
                             85 ;	---------------------------------
                             86 ; Function comprobar_recojida
                             87 ; ---------------------------------
   4241                      88 _comprobar_recojida::
                             89 ;src/sistemas/fisica_objetos.c:12: if (y_manzana==y_jugador)
   4241 3A C9 47      [13]   90 	ld	a,(#_y_manzana + 0)
   4244 FD 21 BF 47   [14]   91 	ld	iy, #_y_jugador
   4248 FD 96 00      [19]   92 	sub	a, 0 (iy)
                             93 ;src/sistemas/fisica_objetos.c:13: {suma_puntos();}
   424B CA 72 43      [10]   94 	jp	Z,_suma_puntos
                             95 ;src/sistemas/fisica_objetos.c:14: else {muere();}}
   424E C3 51 42      [10]   96 	jp  _muere
                             97 ;src/sistemas/fisica_objetos.c:16: void muere(){
                             98 ;	---------------------------------
                             99 ; Function muere
                            100 ; ---------------------------------
   4251                     101 _muere::
                            102 ;src/sistemas/fisica_objetos.c:17: vidas--;
   4251 21 D2 47      [10]  103 	ld	hl, #_vidas+0
   4254 35            [11]  104 	dec	(hl)
                            105 ;src/sistemas/fisica_objetos.c:18: x_manzana = x_start_objeto;
   4255 21 C8 47      [10]  106 	ld	hl,#_x_manzana + 0
   4258 36 3C         [10]  107 	ld	(hl), #0x3c
                            108 ;src/sistemas/fisica_objetos.c:19: pinta_marcador();
   425A CD CC 42      [17]  109 	call	_pinta_marcador
                            110 ;src/sistemas/fisica_objetos.c:20: if (vidas=='0')
   425D 3A D2 47      [13]  111 	ld	a,(#_vidas + 0)
   4260 D6 30         [ 7]  112 	sub	a, #0x30
   4262 C0            [11]  113 	ret	NZ
                            114 ;src/sistemas/fisica_objetos.c:21: {fin_juego();}
   4263 C3 66 42      [10]  115 	jp  _fin_juego
                            116 ;src/sistemas/fisica_objetos.c:23: void fin_juego(){
                            117 ;	---------------------------------
                            118 ; Function fin_juego
                            119 ; ---------------------------------
   4266                     120 _fin_juego::
                            121 ;src/sistemas/fisica_objetos.c:26: pvmem=cpct_getScreenPtr(0xc000,10,20);
   4266 21 0A 14      [10]  122 	ld	hl, #0x140a
   4269 E5            [11]  123 	push	hl
   426A 21 00 C0      [10]  124 	ld	hl, #0xc000
   426D E5            [11]  125 	push	hl
   426E CD A8 47      [17]  126 	call	_cpct_getScreenPtr
                            127 ;src/sistemas/fisica_objetos.c:27: cpct_drawStringM2("Has sido despedido!",pvmem);
   4271 01 93 42      [10]  128 	ld	bc, #___str_0+0
   4274 E5            [11]  129 	push	hl
   4275 C5            [11]  130 	push	bc
   4276 CD 25 45      [17]  131 	call	_cpct_drawStringM2
                            132 ;src/sistemas/fisica_objetos.c:28: pvmem=cpct_getScreenPtr(0xc000,10,40);
   4279 21 0A 28      [10]  133 	ld	hl, #0x280a
   427C E5            [11]  134 	push	hl
   427D 21 00 C0      [10]  135 	ld	hl, #0xc000
   4280 E5            [11]  136 	push	hl
   4281 CD A8 47      [17]  137 	call	_cpct_getScreenPtr
                            138 ;src/sistemas/fisica_objetos.c:29: cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
   4284 01 A7 42      [10]  139 	ld	bc, #___str_1+0
   4287 E5            [11]  140 	push	hl
   4288 C5            [11]  141 	push	bc
   4289 CD 25 45      [17]  142 	call	_cpct_drawStringM2
                            143 ;src/sistemas/fisica_objetos.c:30: espera_pulsacion_tecla();
   428C CD BC 42      [17]  144 	call	_espera_pulsacion_tecla
                            145 ;src/sistemas/fisica_objetos.c:31: espera_pulsar();
   428F CD C9 42      [17]  146 	call	_espera_pulsar
   4292 C9            [10]  147 	ret
   4293                     148 ___str_0:
   4293 48 61 73 20 73 69   149 	.ascii "Has sido despedido!"
        64 6F 20 64 65 73
        70 65 64 69 64 6F
        21
   42A6 00                  150 	.db 0x00
   42A7                     151 ___str_1:
   42A7 56 75 65 6C 76 65   152 	.ascii "Vuelve a intentarlo."
        20 61 20 69 6E 74
        65 6E 74 61 72 6C
        6F 2E
   42BB 00                  153 	.db 0x00
                            154 ;src/sistemas/fisica_objetos.c:33: void espera_pulsacion_tecla(){
                            155 ;	---------------------------------
                            156 ; Function espera_pulsacion_tecla
                            157 ; ---------------------------------
   42BC                     158 _espera_pulsacion_tecla::
                            159 ;src/sistemas/fisica_objetos.c:35: cpct_scanKeyboard();
   42BC CD 77 47      [17]  160 	call	_cpct_scanKeyboard
                            161 ;src/sistemas/fisica_objetos.c:36: pulsado=cpct_isAnyKeyPressed();
   42BF CD 8F 46      [17]  162 	call	_cpct_isAnyKeyPressed
                            163 ;src/sistemas/fisica_objetos.c:37: if (pulsado!=0)
   42C2 7D            [ 4]  164 	ld	a, l
   42C3 B7            [ 4]  165 	or	a, a
                            166 ;src/sistemas/fisica_objetos.c:38: {espera_pulsar();}
   42C4 C2 C9 42      [10]  167 	jp	NZ,_espera_pulsar
                            168 ;src/sistemas/fisica_objetos.c:39: else espera_pulsacion_tecla();
   42C7 18 F3         [12]  169 	jr	_espera_pulsacion_tecla
                            170 ;src/sistemas/fisica_objetos.c:41: void espera_pulsar(){
                            171 ;	---------------------------------
                            172 ; Function espera_pulsar
                            173 ; ---------------------------------
   42C9                     174 _espera_pulsar::
                            175 ;src/sistemas/fisica_objetos.c:42: a_jugar();}
   42C9 C3 F3 40      [10]  176 	jp  _a_jugar
                            177 	.area _CODE
                            178 	.area _INITIALIZER
                            179 	.area _CABS (ABS)

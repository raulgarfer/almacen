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
   4219                      58 _fisica_objetos::
                             59 ;src/sistemas/fisica_objetos.c:5: borra_objeto(array[1].x,array[1].y,array[1].ancho,array[1].alto);
   4219 21 13 48      [10]   60 	ld	hl, #_array + 15
   421C 4E            [ 7]   61 	ld	c, (hl)
   421D 21 12 48      [10]   62 	ld	hl, #_array + 14
   4220 46            [ 7]   63 	ld	b, (hl)
   4221 21 0F 48      [10]   64 	ld	hl, #_array + 11
   4224 5E            [ 7]   65 	ld	e, (hl)
   4225 21 0E 48      [10]   66 	ld	hl, #(_array + 0x000a) + 0
   4228 56            [ 7]   67 	ld	d, (hl)
   4229 79            [ 4]   68 	ld	a, c
   422A F5            [11]   69 	push	af
   422B 33            [ 6]   70 	inc	sp
   422C C5            [11]   71 	push	bc
   422D 33            [ 6]   72 	inc	sp
   422E 7B            [ 4]   73 	ld	a, e
   422F F5            [11]   74 	push	af
   4230 33            [ 6]   75 	inc	sp
   4231 D5            [11]   76 	push	de
   4232 33            [ 6]   77 	inc	sp
   4233 CD AE 41      [17]   78 	call	_borra_objeto
   4236 F1            [10]   79 	pop	af
   4237 F1            [10]   80 	pop	af
                             81 ;src/sistemas/fisica_objetos.c:6: array[1].x+=array[1].vx;
   4238 21 0E 48      [10]   82 	ld	hl, #(_array + 0x000a) + 0
   423B 4E            [ 7]   83 	ld	c, (hl)
   423C 21 10 48      [10]   84 	ld	hl, #_array + 12
   423F 5E            [ 7]   85 	ld	e, (hl)
   4240 79            [ 4]   86 	ld	a, c
   4241 83            [ 4]   87 	add	a, e
   4242 32 0E 48      [13]   88 	ld	(#(_array + 0x000a)),a
                             89 ;src/sistemas/fisica_objetos.c:7: if (array[1].x==caida_objeto)
   4245 21 0E 48      [10]   90 	ld	hl, #(_array + 0x000a) + 0
   4248 4E            [ 7]   91 	ld	c, (hl)
   4249 3A EC 47      [13]   92 	ld	a,(#_caida_objeto + 0)
   424C 91            [ 4]   93 	sub	a, c
   424D C0            [11]   94 	ret	NZ
                             95 ;src/sistemas/fisica_objetos.c:8: {comprobar_recojida();}
   424E C3 51 42      [10]   96 	jp  _comprobar_recojida
                             97 ;src/sistemas/fisica_objetos.c:11: void comprobar_recojida(){
                             98 ;	---------------------------------
                             99 ; Function comprobar_recojida
                            100 ; ---------------------------------
   4251                     101 _comprobar_recojida::
                            102 ;src/sistemas/fisica_objetos.c:12: if (array[1].y==array[0].y)
   4251 21 0F 48      [10]  103 	ld	hl, #_array + 11
   4254 4E            [ 7]  104 	ld	c, (hl)
   4255 21 06 48      [10]  105 	ld	hl, #_array + 2
   4258 46            [ 7]  106 	ld	b, (hl)
   4259 79            [ 4]  107 	ld	a, c
   425A 90            [ 4]  108 	sub	a, b
                            109 ;src/sistemas/fisica_objetos.c:13: {suma_puntos();}
   425B CA 8B 43      [10]  110 	jp	Z,_suma_puntos
                            111 ;src/sistemas/fisica_objetos.c:14: else {muere();}}
   425E C3 61 42      [10]  112 	jp  _muere
                            113 ;src/sistemas/fisica_objetos.c:16: void muere(){
                            114 ;	---------------------------------
                            115 ; Function muere
                            116 ; ---------------------------------
   4261                     117 _muere::
                            118 ;src/sistemas/fisica_objetos.c:17: vidas--;
   4261 21 F1 47      [10]  119 	ld	hl, #_vidas+0
   4264 35            [11]  120 	dec	(hl)
                            121 ;src/sistemas/fisica_objetos.c:18: array[1].x = x_start_objeto;
   4265 21 0E 48      [10]  122 	ld	hl, #(_array + 0x000a)
   4268 36 3C         [10]  123 	ld	(hl), #0x3c
                            124 ;src/sistemas/fisica_objetos.c:19: pinta_marcador();
   426A CD DC 42      [17]  125 	call	_pinta_marcador
                            126 ;src/sistemas/fisica_objetos.c:20: if (vidas=='0')
   426D 3A F1 47      [13]  127 	ld	a,(#_vidas + 0)
   4270 D6 30         [ 7]  128 	sub	a, #0x30
   4272 C0            [11]  129 	ret	NZ
                            130 ;src/sistemas/fisica_objetos.c:21: {fin_juego();}
   4273 C3 76 42      [10]  131 	jp  _fin_juego
                            132 ;src/sistemas/fisica_objetos.c:23: void fin_juego(){
                            133 ;	---------------------------------
                            134 ; Function fin_juego
                            135 ; ---------------------------------
   4276                     136 _fin_juego::
                            137 ;src/sistemas/fisica_objetos.c:26: pvmem=cpct_getScreenPtr(0xc000,10,20);
   4276 21 0A 14      [10]  138 	ld	hl, #0x140a
   4279 E5            [11]  139 	push	hl
   427A 21 00 C0      [10]  140 	ld	hl, #0xc000
   427D E5            [11]  141 	push	hl
   427E CD C7 47      [17]  142 	call	_cpct_getScreenPtr
                            143 ;src/sistemas/fisica_objetos.c:27: cpct_drawStringM2("Has sido despedido!",pvmem);
   4281 01 A3 42      [10]  144 	ld	bc, #___str_0+0
   4284 E5            [11]  145 	push	hl
   4285 C5            [11]  146 	push	bc
   4286 CD 3C 45      [17]  147 	call	_cpct_drawStringM2
                            148 ;src/sistemas/fisica_objetos.c:28: pvmem=cpct_getScreenPtr(0xc000,10,40);
   4289 21 0A 28      [10]  149 	ld	hl, #0x280a
   428C E5            [11]  150 	push	hl
   428D 21 00 C0      [10]  151 	ld	hl, #0xc000
   4290 E5            [11]  152 	push	hl
   4291 CD C7 47      [17]  153 	call	_cpct_getScreenPtr
                            154 ;src/sistemas/fisica_objetos.c:29: cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
   4294 01 B7 42      [10]  155 	ld	bc, #___str_1+0
   4297 E5            [11]  156 	push	hl
   4298 C5            [11]  157 	push	bc
   4299 CD 3C 45      [17]  158 	call	_cpct_drawStringM2
                            159 ;src/sistemas/fisica_objetos.c:30: espera_pulsacion_tecla();
   429C CD CC 42      [17]  160 	call	_espera_pulsacion_tecla
                            161 ;src/sistemas/fisica_objetos.c:31: espera_pulsar();
   429F CD D9 42      [17]  162 	call	_espera_pulsar
   42A2 C9            [10]  163 	ret
   42A3                     164 ___str_0:
   42A3 48 61 73 20 73 69   165 	.ascii "Has sido despedido!"
        64 6F 20 64 65 73
        70 65 64 69 64 6F
        21
   42B6 00                  166 	.db 0x00
   42B7                     167 ___str_1:
   42B7 56 75 65 6C 76 65   168 	.ascii "Vuelve a intentarlo."
        20 61 20 69 6E 74
        65 6E 74 61 72 6C
        6F 2E
   42CB 00                  169 	.db 0x00
                            170 ;src/sistemas/fisica_objetos.c:33: void espera_pulsacion_tecla(){
                            171 ;	---------------------------------
                            172 ; Function espera_pulsacion_tecla
                            173 ; ---------------------------------
   42CC                     174 _espera_pulsacion_tecla::
                            175 ;src/sistemas/fisica_objetos.c:35: cpct_scanKeyboard();
   42CC CD 96 47      [17]  176 	call	_cpct_scanKeyboard
                            177 ;src/sistemas/fisica_objetos.c:36: pulsado=cpct_isAnyKeyPressed();
   42CF CD A6 46      [17]  178 	call	_cpct_isAnyKeyPressed
                            179 ;src/sistemas/fisica_objetos.c:37: if (pulsado!=0)
   42D2 7D            [ 4]  180 	ld	a, l
   42D3 B7            [ 4]  181 	or	a, a
                            182 ;src/sistemas/fisica_objetos.c:38: {espera_pulsar();}
   42D4 C2 D9 42      [10]  183 	jp	NZ,_espera_pulsar
                            184 ;src/sistemas/fisica_objetos.c:39: else espera_pulsacion_tecla();
   42D7 18 F3         [12]  185 	jr	_espera_pulsacion_tecla
                            186 ;src/sistemas/fisica_objetos.c:41: void espera_pulsar(){
                            187 ;	---------------------------------
                            188 ; Function espera_pulsar
                            189 ; ---------------------------------
   42D9                     190 _espera_pulsar::
                            191 ;src/sistemas/fisica_objetos.c:42: a_jugar();}
   42D9 C3 F6 40      [10]  192 	jp  _a_jugar
                            193 	.area _CODE
                            194 	.area _INITIALIZER
                            195 	.area _CABS (ABS)

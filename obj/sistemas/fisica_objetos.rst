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
   420A                      58 _fisica_objetos::
                             59 ;src/sistemas/fisica_objetos.c:5: borra_objeto(array[1].x,array[1].y,array[1].ancho,array[1].alto);
   420A 21 01 48      [10]   60 	ld	hl, #_array + 15
   420D 4E            [ 7]   61 	ld	c, (hl)
   420E 21 00 48      [10]   62 	ld	hl, #_array + 14
   4211 46            [ 7]   63 	ld	b, (hl)
   4212 21 FD 47      [10]   64 	ld	hl, #_array + 11
   4215 5E            [ 7]   65 	ld	e, (hl)
   4216 21 FC 47      [10]   66 	ld	hl, #(_array + 0x000a) + 0
   4219 56            [ 7]   67 	ld	d, (hl)
   421A 79            [ 4]   68 	ld	a, c
   421B F5            [11]   69 	push	af
   421C 33            [ 6]   70 	inc	sp
   421D C5            [11]   71 	push	bc
   421E 33            [ 6]   72 	inc	sp
   421F 7B            [ 4]   73 	ld	a, e
   4220 F5            [11]   74 	push	af
   4221 33            [ 6]   75 	inc	sp
   4222 D5            [11]   76 	push	de
   4223 33            [ 6]   77 	inc	sp
   4224 CD 9F 41      [17]   78 	call	_borra_objeto
   4227 F1            [10]   79 	pop	af
   4228 F1            [10]   80 	pop	af
                             81 ;src/sistemas/fisica_objetos.c:6: array[1].x+=array[1].vx;
   4229 21 FC 47      [10]   82 	ld	hl, #(_array + 0x000a) + 0
   422C 4E            [ 7]   83 	ld	c, (hl)
   422D 21 FE 47      [10]   84 	ld	hl, #_array + 12
   4230 5E            [ 7]   85 	ld	e, (hl)
   4231 79            [ 4]   86 	ld	a, c
   4232 83            [ 4]   87 	add	a, e
   4233 32 FC 47      [13]   88 	ld	(#(_array + 0x000a)),a
                             89 ;src/sistemas/fisica_objetos.c:7: if (array[1].x==10)
   4236 3A FC 47      [13]   90 	ld	a, (#(_array + 0x000a) + 0)
   4239 D6 0A         [ 7]   91 	sub	a, #0x0a
   423B C0            [11]   92 	ret	NZ
                             93 ;src/sistemas/fisica_objetos.c:8: {comprobar_recojida();}
   423C C3 3F 42      [10]   94 	jp  _comprobar_recojida
                             95 ;src/sistemas/fisica_objetos.c:11: void comprobar_recojida(){
                             96 ;	---------------------------------
                             97 ; Function comprobar_recojida
                             98 ; ---------------------------------
   423F                      99 _comprobar_recojida::
                            100 ;src/sistemas/fisica_objetos.c:12: if (array[1].y==array[0].y)
   423F 21 FD 47      [10]  101 	ld	hl, #_array + 11
   4242 4E            [ 7]  102 	ld	c, (hl)
   4243 21 F4 47      [10]  103 	ld	hl, #_array + 2
   4246 46            [ 7]  104 	ld	b, (hl)
   4247 79            [ 4]  105 	ld	a, c
   4248 90            [ 4]  106 	sub	a, b
                            107 ;src/sistemas/fisica_objetos.c:13: {suma_puntos();}
   4249 CA 79 43      [10]  108 	jp	Z,_suma_puntos
                            109 ;src/sistemas/fisica_objetos.c:14: else {muere();}}
   424C C3 4F 42      [10]  110 	jp  _muere
                            111 ;src/sistemas/fisica_objetos.c:16: void muere(){
                            112 ;	---------------------------------
                            113 ; Function muere
                            114 ; ---------------------------------
   424F                     115 _muere::
                            116 ;src/sistemas/fisica_objetos.c:17: vidas--;
   424F 21 DF 47      [10]  117 	ld	hl, #_vidas+0
   4252 35            [11]  118 	dec	(hl)
                            119 ;src/sistemas/fisica_objetos.c:18: array[1].x = 60;
   4253 21 FC 47      [10]  120 	ld	hl, #(_array + 0x000a)
   4256 36 3C         [10]  121 	ld	(hl), #0x3c
                            122 ;src/sistemas/fisica_objetos.c:19: pinta_marcador();
   4258 CD CA 42      [17]  123 	call	_pinta_marcador
                            124 ;src/sistemas/fisica_objetos.c:20: if (vidas=='0')
   425B 3A DF 47      [13]  125 	ld	a,(#_vidas + 0)
   425E D6 30         [ 7]  126 	sub	a, #0x30
   4260 C0            [11]  127 	ret	NZ
                            128 ;src/sistemas/fisica_objetos.c:21: {fin_juego();}
   4261 C3 64 42      [10]  129 	jp  _fin_juego
                            130 ;src/sistemas/fisica_objetos.c:23: void fin_juego(){
                            131 ;	---------------------------------
                            132 ; Function fin_juego
                            133 ; ---------------------------------
   4264                     134 _fin_juego::
                            135 ;src/sistemas/fisica_objetos.c:26: pvmem=cpct_getScreenPtr(0xc000,10,20);
   4264 21 0A 14      [10]  136 	ld	hl, #0x140a
   4267 E5            [11]  137 	push	hl
   4268 21 00 C0      [10]  138 	ld	hl, #0xc000
   426B E5            [11]  139 	push	hl
   426C CD B5 47      [17]  140 	call	_cpct_getScreenPtr
                            141 ;src/sistemas/fisica_objetos.c:27: cpct_drawStringM2("Has sido despedido!",pvmem);
   426F 01 91 42      [10]  142 	ld	bc, #___str_0+0
   4272 E5            [11]  143 	push	hl
   4273 C5            [11]  144 	push	bc
   4274 CD 2A 45      [17]  145 	call	_cpct_drawStringM2
                            146 ;src/sistemas/fisica_objetos.c:28: pvmem=cpct_getScreenPtr(0xc000,10,40);
   4277 21 0A 28      [10]  147 	ld	hl, #0x280a
   427A E5            [11]  148 	push	hl
   427B 21 00 C0      [10]  149 	ld	hl, #0xc000
   427E E5            [11]  150 	push	hl
   427F CD B5 47      [17]  151 	call	_cpct_getScreenPtr
                            152 ;src/sistemas/fisica_objetos.c:29: cpct_drawStringM2("Vuelve a intentarlo.",pvmem);
   4282 01 A5 42      [10]  153 	ld	bc, #___str_1+0
   4285 E5            [11]  154 	push	hl
   4286 C5            [11]  155 	push	bc
   4287 CD 2A 45      [17]  156 	call	_cpct_drawStringM2
                            157 ;src/sistemas/fisica_objetos.c:30: espera_pulsacion_tecla();
   428A CD BA 42      [17]  158 	call	_espera_pulsacion_tecla
                            159 ;src/sistemas/fisica_objetos.c:31: espera_pulsar();
   428D CD C7 42      [17]  160 	call	_espera_pulsar
   4290 C9            [10]  161 	ret
   4291                     162 ___str_0:
   4291 48 61 73 20 73 69   163 	.ascii "Has sido despedido!"
        64 6F 20 64 65 73
        70 65 64 69 64 6F
        21
   42A4 00                  164 	.db 0x00
   42A5                     165 ___str_1:
   42A5 56 75 65 6C 76 65   166 	.ascii "Vuelve a intentarlo."
        20 61 20 69 6E 74
        65 6E 74 61 72 6C
        6F 2E
   42B9 00                  167 	.db 0x00
                            168 ;src/sistemas/fisica_objetos.c:33: void espera_pulsacion_tecla(){
                            169 ;	---------------------------------
                            170 ; Function espera_pulsacion_tecla
                            171 ; ---------------------------------
   42BA                     172 _espera_pulsacion_tecla::
                            173 ;src/sistemas/fisica_objetos.c:35: cpct_scanKeyboard();
   42BA CD 84 47      [17]  174 	call	_cpct_scanKeyboard
                            175 ;src/sistemas/fisica_objetos.c:36: pulsado=cpct_isAnyKeyPressed();
   42BD CD 94 46      [17]  176 	call	_cpct_isAnyKeyPressed
                            177 ;src/sistemas/fisica_objetos.c:37: if (pulsado!=0)
   42C0 7D            [ 4]  178 	ld	a, l
   42C1 B7            [ 4]  179 	or	a, a
                            180 ;src/sistemas/fisica_objetos.c:38: {espera_pulsar();}
   42C2 C2 C7 42      [10]  181 	jp	NZ,_espera_pulsar
                            182 ;src/sistemas/fisica_objetos.c:39: else espera_pulsacion_tecla();
   42C5 18 F3         [12]  183 	jr	_espera_pulsacion_tecla
                            184 ;src/sistemas/fisica_objetos.c:41: void espera_pulsar(){
                            185 ;	---------------------------------
                            186 ; Function espera_pulsar
                            187 ; ---------------------------------
   42C7                     188 _espera_pulsar::
                            189 ;src/sistemas/fisica_objetos.c:42: a_jugar();}
   42C7 C3 F6 40      [10]  190 	jp  _a_jugar
                            191 	.area _CODE
                            192 	.area _INITIALIZER
                            193 	.area _CABS (ABS)

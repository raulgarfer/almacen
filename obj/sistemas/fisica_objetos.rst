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
                             11 	.globl _borra_objeto
                             12 	.globl _suma_puntos
                             13 	.globl _fisica_objetos
                             14 	.globl _comprobar_recojida
                             15 	.globl _muere
                             16 ;--------------------------------------------------------
                             17 ; special function registers
                             18 ;--------------------------------------------------------
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _DATA
                             23 ;--------------------------------------------------------
                             24 ; ram data
                             25 ;--------------------------------------------------------
                             26 	.area _INITIALIZED
                             27 ;--------------------------------------------------------
                             28 ; absolute external ram data
                             29 ;--------------------------------------------------------
                             30 	.area _DABS (ABS)
                             31 ;--------------------------------------------------------
                             32 ; global & static initialisations
                             33 ;--------------------------------------------------------
                             34 	.area _HOME
                             35 	.area _GSINIT
                             36 	.area _GSFINAL
                             37 	.area _GSINIT
                             38 ;--------------------------------------------------------
                             39 ; Home
                             40 ;--------------------------------------------------------
                             41 	.area _HOME
                             42 	.area _HOME
                             43 ;--------------------------------------------------------
                             44 ; code
                             45 ;--------------------------------------------------------
                             46 	.area _CODE
                             47 ;src/sistemas/fisica_objetos.c:4: void fisica_objetos(){
                             48 ;	---------------------------------
                             49 ; Function fisica_objetos
                             50 ; ---------------------------------
   4234                      51 _fisica_objetos::
                             52 ;src/sistemas/fisica_objetos.c:5: borra_objeto(x_manzana,y_manzana,MANZANA_W,MANZANA_H);
   4234 21 02 10      [10]   53 	ld	hl, #0x1002
   4237 E5            [11]   54 	push	hl
   4238 3A A3 46      [13]   55 	ld	a, (_y_manzana)
   423B F5            [11]   56 	push	af
   423C 33            [ 6]   57 	inc	sp
   423D 3A A2 46      [13]   58 	ld	a, (_x_manzana)
   4240 F5            [11]   59 	push	af
   4241 33            [ 6]   60 	inc	sp
   4242 CD 87 41      [17]   61 	call	_borra_objeto
   4245 F1            [10]   62 	pop	af
   4246 F1            [10]   63 	pop	af
                             64 ;src/sistemas/fisica_objetos.c:6: x_manzana+=vx_manzana;
   4247 FD 21 A2 46   [14]   65 	ld	iy, #_x_manzana
   424B FD 7E 00      [19]   66 	ld	a, 0 (iy)
   424E 21 A6 46      [10]   67 	ld	hl, #_vx_manzana
   4251 86            [ 7]   68 	add	a, (hl)
   4252 FD 77 00      [19]   69 	ld	0 (iy), a
                             70 ;src/sistemas/fisica_objetos.c:7: if (x_manzana==caida_objeto)
   4255 3A A2 46      [13]   71 	ld	a,(#_x_manzana + 0)
   4258 FD 21 A7 46   [14]   72 	ld	iy, #_caida_objeto
   425C FD 96 00      [19]   73 	sub	a, 0 (iy)
   425F C0            [11]   74 	ret	NZ
                             75 ;src/sistemas/fisica_objetos.c:8: {comprobar_recojida();}
   4260 C3 63 42      [10]   76 	jp  _comprobar_recojida
                             77 ;src/sistemas/fisica_objetos.c:11: void comprobar_recojida(){
                             78 ;	---------------------------------
                             79 ; Function comprobar_recojida
                             80 ; ---------------------------------
   4263                      81 _comprobar_recojida::
                             82 ;src/sistemas/fisica_objetos.c:12: if (y_manzana==y_jugador)
   4263 3A A3 46      [13]   83 	ld	a,(#_y_manzana + 0)
   4266 FD 21 98 46   [14]   84 	ld	iy, #_y_jugador
   426A FD 96 00      [19]   85 	sub	a, 0 (iy)
                             86 ;src/sistemas/fisica_objetos.c:13: {suma_puntos();}
   426D CA FC 42      [10]   87 	jp	Z,_suma_puntos
                             88 ;src/sistemas/fisica_objetos.c:14: else {muere();}}
   4270 C3 73 42      [10]   89 	jp  _muere
                             90 ;src/sistemas/fisica_objetos.c:16: void muere(){
                             91 ;	---------------------------------
                             92 ; Function muere
                             93 ; ---------------------------------
   4273                      94 _muere::
                             95 ;src/sistemas/fisica_objetos.c:17: while(1);
   4273                      96 00102$:
   4273 18 FE         [12]   97 	jr	00102$
                             98 	.area _CODE
                             99 	.area _INITIALIZER
                            100 	.area _CABS (ABS)

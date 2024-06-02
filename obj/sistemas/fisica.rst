                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module fisica
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _borra
                             12 	.globl _fisica
                             13 	.globl _baja
                             14 	.globl _sube
                             15 ;--------------------------------------------------------
                             16 ; special function registers
                             17 ;--------------------------------------------------------
                             18 ;--------------------------------------------------------
                             19 ; ram data
                             20 ;--------------------------------------------------------
                             21 	.area _DATA
                             22 ;--------------------------------------------------------
                             23 ; ram data
                             24 ;--------------------------------------------------------
                             25 	.area _INITIALIZED
                             26 ;--------------------------------------------------------
                             27 ; absolute external ram data
                             28 ;--------------------------------------------------------
                             29 	.area _DABS (ABS)
                             30 ;--------------------------------------------------------
                             31 ; global & static initialisations
                             32 ;--------------------------------------------------------
                             33 	.area _HOME
                             34 	.area _GSINIT
                             35 	.area _GSFINAL
                             36 	.area _GSINIT
                             37 ;--------------------------------------------------------
                             38 ; Home
                             39 ;--------------------------------------------------------
                             40 	.area _HOME
                             41 	.area _HOME
                             42 ;--------------------------------------------------------
                             43 ; code
                             44 ;--------------------------------------------------------
                             45 	.area _CODE
                             46 ;src/sistemas/fisica.c:4: void fisica(){
                             47 ;	---------------------------------
                             48 ; Function fisica
                             49 ; ---------------------------------
   4571                      50 _fisica::
                             51 ;src/sistemas/fisica.c:5: if (array[0].vy==1)
   4571 3A B5 4C      [13]   52 	ld	a, (#(_array + 0x0004) + 0)
   4574 FE 01         [ 7]   53 	cp	a, #0x01
   4576 20 06         [12]   54 	jr	NZ,00104$
                             55 ;src/sistemas/fisica.c:6: {borra();
   4578 CD 44 44      [17]   56 	call	_borra
                             57 ;src/sistemas/fisica.c:7: baja();}
   457B C3 86 45      [10]   58 	jp  _baja
   457E                      59 00104$:
                             60 ;src/sistemas/fisica.c:8: else if(array[0].vy==-1)
   457E 3C            [ 4]   61 	inc	a
   457F C0            [11]   62 	ret	NZ
                             63 ;src/sistemas/fisica.c:9: {borra();
   4580 CD 44 44      [17]   64 	call	_borra
                             65 ;src/sistemas/fisica.c:10: sube();}
   4583 C3 9E 45      [10]   66 	jp  _sube
                             67 ;src/sistemas/fisica.c:12: void baja(){
                             68 ;	---------------------------------
                             69 ; Function baja
                             70 ; ---------------------------------
   4586                      71 _baja::
                             72 ;src/sistemas/fisica.c:13: if (array[0].y   ==  y_frame_1)
   4586 21 B3 4C      [10]   73 	ld	hl, #_array+2
   4589 7E            [ 7]   74 	ld	a, (hl)
   458A FE 0A         [ 7]   75 	cp	a, #0x0a
   458C 20 03         [12]   76 	jr	NZ,00107$
                             77 ;src/sistemas/fisica.c:14: { array[0].y  =   y_frame_2;}
   458E 36 32         [10]   78 	ld	(hl), #0x32
   4590 C9            [10]   79 	ret
   4591                      80 00107$:
                             81 ;src/sistemas/fisica.c:16: if (array[0].y   ==  y_frame_2)
   4591 FE 32         [ 7]   82 	cp	a, #0x32
   4593 20 03         [12]   83 	jr	NZ,00104$
                             84 ;src/sistemas/fisica.c:17: {array[0].y  =   y_frame_3;}
   4595 36 64         [10]   85 	ld	(hl), #0x64
   4597 C9            [10]   86 	ret
   4598                      87 00104$:
                             88 ;src/sistemas/fisica.c:19: if (array[0].y   ==  y_frame_3)
   4598 D6 64         [ 7]   89 	sub	a, #0x64
   459A C0            [11]   90 	ret	NZ
                             91 ;src/sistemas/fisica.c:20: {array[0].y  =   y_frame_4;}}
   459B 36 96         [10]   92 	ld	(hl), #0x96
   459D C9            [10]   93 	ret
                             94 ;src/sistemas/fisica.c:21: void sube(){
                             95 ;	---------------------------------
                             96 ; Function sube
                             97 ; ---------------------------------
   459E                      98 _sube::
                             99 ;src/sistemas/fisica.c:22: if (array[0].y   ==  y_frame_4)
   459E 21 B3 4C      [10]  100 	ld	hl, #_array+2
   45A1 7E            [ 7]  101 	ld	a, (hl)
   45A2 FE 96         [ 7]  102 	cp	a, #0x96
   45A4 20 03         [12]  103 	jr	NZ,00107$
                            104 ;src/sistemas/fisica.c:23: {array[0].y  =   y_frame_3;}
   45A6 36 64         [10]  105 	ld	(hl), #0x64
   45A8 C9            [10]  106 	ret
   45A9                     107 00107$:
                            108 ;src/sistemas/fisica.c:25: if (array[0].y   ==  y_frame_3)
   45A9 FE 64         [ 7]  109 	cp	a, #0x64
   45AB 20 03         [12]  110 	jr	NZ,00104$
                            111 ;src/sistemas/fisica.c:26: {array[0].y  =   y_frame_2;}
   45AD 36 32         [10]  112 	ld	(hl), #0x32
   45AF C9            [10]  113 	ret
   45B0                     114 00104$:
                            115 ;src/sistemas/fisica.c:28: if (array[0].y   ==  y_frame_2)
   45B0 D6 32         [ 7]  116 	sub	a, #0x32
   45B2 C0            [11]  117 	ret	NZ
                            118 ;src/sistemas/fisica.c:29: {array[0].y  =   y_frame_1;}
   45B3 36 0A         [10]  119 	ld	(hl), #0x0a
   45B5 C9            [10]  120 	ret
                            121 	.area _CODE
                            122 	.area _INITIALIZER
                            123 	.area _CABS (ABS)

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
                             11 	.globl _fisica
                             12 	.globl _baja
                             13 	.globl _sube
                             14 ;--------------------------------------------------------
                             15 ; special function registers
                             16 ;--------------------------------------------------------
                             17 ;--------------------------------------------------------
                             18 ; ram data
                             19 ;--------------------------------------------------------
                             20 	.area _DATA
                             21 ;--------------------------------------------------------
                             22 ; ram data
                             23 ;--------------------------------------------------------
                             24 	.area _INITIALIZED
                             25 ;--------------------------------------------------------
                             26 ; absolute external ram data
                             27 ;--------------------------------------------------------
                             28 	.area _DABS (ABS)
                             29 ;--------------------------------------------------------
                             30 ; global & static initialisations
                             31 ;--------------------------------------------------------
                             32 	.area _HOME
                             33 	.area _GSINIT
                             34 	.area _GSFINAL
                             35 	.area _GSINIT
                             36 ;--------------------------------------------------------
                             37 ; Home
                             38 ;--------------------------------------------------------
                             39 	.area _HOME
                             40 	.area _HOME
                             41 ;--------------------------------------------------------
                             42 ; code
                             43 ;--------------------------------------------------------
                             44 	.area _CODE
                             45 ;src/sistemas/fisica.c:7: void fisica(){
                             46 ;	---------------------------------
                             47 ; Function fisica
                             48 ; ---------------------------------
   41CD                      49 _fisica::
                             50 ;src/sistemas/fisica.c:8: if (array[0].vy==1)
   41CD 3A F6 47      [13]   51 	ld	a, (#(_array + 0x0004) + 0)
   41D0 FE 01         [ 7]   52 	cp	a, #0x01
                             53 ;src/sistemas/fisica.c:9: baja();
   41D2 CA DA 41      [10]   54 	jp	Z,_baja
                             55 ;src/sistemas/fisica.c:10: else if(array[0].vy==-1)
   41D5 3C            [ 4]   56 	inc	a
   41D6 C0            [11]   57 	ret	NZ
                             58 ;src/sistemas/fisica.c:11: sube();
   41D7 C3 F2 41      [10]   59 	jp  _sube
                             60 ;src/sistemas/fisica.c:13: void baja(){
                             61 ;	---------------------------------
                             62 ; Function baja
                             63 ; ---------------------------------
   41DA                      64 _baja::
                             65 ;src/sistemas/fisica.c:14: if (array[0].y   ==  y_frame_1)
   41DA 21 F4 47      [10]   66 	ld	hl, #_array+2
   41DD 7E            [ 7]   67 	ld	a, (hl)
   41DE FE 14         [ 7]   68 	cp	a, #0x14
   41E0 20 03         [12]   69 	jr	NZ,00107$
                             70 ;src/sistemas/fisica.c:15: {array[0].y  =   y_frame_2;}
   41E2 36 46         [10]   71 	ld	(hl), #0x46
   41E4 C9            [10]   72 	ret
   41E5                      73 00107$:
                             74 ;src/sistemas/fisica.c:17: if (array[0].y   ==  y_frame_2)
   41E5 FE 46         [ 7]   75 	cp	a, #0x46
   41E7 20 03         [12]   76 	jr	NZ,00104$
                             77 ;src/sistemas/fisica.c:18: {array[0].y  =   y_frame_3;}
   41E9 36 78         [10]   78 	ld	(hl), #0x78
   41EB C9            [10]   79 	ret
   41EC                      80 00104$:
                             81 ;src/sistemas/fisica.c:20: if (array[0].y   ==  y_frame_3)
   41EC D6 78         [ 7]   82 	sub	a, #0x78
   41EE C0            [11]   83 	ret	NZ
                             84 ;src/sistemas/fisica.c:21: {array[0].y  =   y_frame_4;}}
   41EF 36 AA         [10]   85 	ld	(hl), #0xaa
   41F1 C9            [10]   86 	ret
                             87 ;src/sistemas/fisica.c:22: void sube(){
                             88 ;	---------------------------------
                             89 ; Function sube
                             90 ; ---------------------------------
   41F2                      91 _sube::
                             92 ;src/sistemas/fisica.c:23: if (array[0].y   ==  y_frame_4)
   41F2 21 F4 47      [10]   93 	ld	hl, #_array+2
   41F5 7E            [ 7]   94 	ld	a, (hl)
   41F6 FE AA         [ 7]   95 	cp	a, #0xaa
   41F8 20 03         [12]   96 	jr	NZ,00107$
                             97 ;src/sistemas/fisica.c:24: {array[0].y  =   y_frame_3;}
   41FA 36 78         [10]   98 	ld	(hl), #0x78
   41FC C9            [10]   99 	ret
   41FD                     100 00107$:
                            101 ;src/sistemas/fisica.c:26: if (array[0].y   ==  y_frame_3)
   41FD FE 78         [ 7]  102 	cp	a, #0x78
   41FF 20 03         [12]  103 	jr	NZ,00104$
                            104 ;src/sistemas/fisica.c:27: {array[0].y  =   y_frame_2;}
   4201 36 46         [10]  105 	ld	(hl), #0x46
   4203 C9            [10]  106 	ret
   4204                     107 00104$:
                            108 ;src/sistemas/fisica.c:29: if (array[0].y   ==  y_frame_2)
   4204 D6 46         [ 7]  109 	sub	a, #0x46
   4206 C0            [11]  110 	ret	NZ
                            111 ;src/sistemas/fisica.c:30: {array[0].y  =   y_frame_1;}
   4207 36 14         [10]  112 	ld	(hl), #0x14
   4209 C9            [10]  113 	ret
                            114 	.area _CODE
                            115 	.area _INITIALIZER
                            116 	.area _CABS (ABS)

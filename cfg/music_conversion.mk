# Default values
$(eval $(call AKS2DATA, SET_FOLDER   , src/music ))
#$(eval $(call AKS2DATA, SET_OUTPUTS  , h s  )) { bin, h, hs, s }
#$(eval $(call AKS2DATA, SET_SFXONLY  , no   )) { yes, no       }
#$(eval $(call AKS2DATA, SET_EXTRAPAR ,      )) 
# Conversion
#$(eval $(call AKS2DATA, CONVERT      , music.aks , array , mem_address ))
$(eval $(call AKS2DATA, CONVERT      , src/music/Demo.aks , Demo , 0x6000 ))



##
## OLD MACROS (For compatibility)
##

## AUTOMATED MUSIC CONVERSION EXAMPLE (Uncomment EVAL line to use)

## Convert music/song.aks to src/music/song.s and src/music/song.h
##		This file contains a music created with Arkos Tracker. This macro 
## will convert the music into a data array called g_mysong that will be
## placed at the 0x42A0 memory address in an absolue way.
##

#$(eval $(call AKS2C,music/song.aks,g_mysong,src/music/,0x42A0))

############################################################################
##              DETAILED INSTRUCTIONS AND PARAMETERS                      ##
##------------------------------------------------------------------------##
##                                                                        ##
## Macro used for conversion is AKS2C, which has up to 5 parameters:      ##
##  (1): AKS file to be converted to data array                           ##
##  (2): C identifier for the generated data array (will have underscore  ##
##       in front in ASM)                                                 ##
##  (3): Output folder for .s and .h files generated (Default same folder)##
##  (4): Memory address where music data will be loaded                   ##
##  (5): Aditional options (you can use this to pass aditional modifiers  ##
##       to cpct_aks2c)                                                   ##
##                                                                        ##
## Macro is used in this way (one line for each image to be converted):   ##
##  $(eval $(call AKS2C,(1),(2),(3),(4),(5))                              ##
##                                                                        ##
## Important:                                                             ##
##  * Do NOT separate macro parameters with spaces, blanks or other chars.##
##    ANY character you put into a macro parameter will be passed to the  ##
##    macro. Therefore ...,src/music,... will represent "src/music"       ##
##    folder, whereas ...,  src/music,... means "  src/sprites" folder.   ##
##  * You can omit parameters by leaving them empty.                      ##
##  * Parameter  (5) (Aditional options) is  optional and  generally not  ##
##    required.                                                           ##
############################################################################

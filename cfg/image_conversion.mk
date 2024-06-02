## 16 colours palette
PALETTE=26 0
## Default values
$(eval $(call IMG2SP, SET_MODE        , 2                 ))  
#$(eval $(call IMG2SP, SET_MASK        , none               ))  { interlaced, none }
$(eval $(call IMG2SP, SET_FOLDER      , src/media               ))
#$(eval $(call IMG2SP, SET_EXTRAPAR    ,                    ))
#$(eval $(call IMG2SP, SET_IMG_FORMAT  , sprites            ))	{ sprites, zgtiles, screen }
#$(eval $(call IMG2SP, SET_OUTPUT      , c                  ))  { bin, c }
$(eval $(call IMG2SP, SET_PALETTE_FW  , $(PALETTE)         ))
$(eval $(call IMG2SP, CONVERT_PALETTE , $(PALETTE), BW ))
#$(eval $(call IMG2SP, CONVERT         , img.png , w, h, array, palette, tileset))
$(eval $(call IMG2SP, SET_IMG_FORMAT  , sprites            ))
$(eval $(call IMG2SP, CONVERT         , src/sprites/derecha.png, 0, 0, derecha ))
$(eval $(call IMG2SP, CONVERT         , src/sprites/derecha_lleno.png, 0, 0, derecha_lleno))
$(eval $(call IMG2SP, CONVERT         , src/sprites/izquierda_lleno.png, 0, 0, izquierda_lleno ))
$(eval $(call IMG2SP, CONVERT         , src/sprites/izquierda.png, 0, 0, izquierda ))
$(eval $(call IMG2SP, CONVERT         , src/sprites/manzana.png, 0, 0, manzana ))
$(eval $(call IMG2SP, CONVERT         , src/sprites/pera.png, 0, 0, pera ))
$(eval $(call IMG2SP, CONVERT         , src/sprites/rightpng.png, 0, 0, rightpng ))


#$(eval $(call IMG2SP, SET_IMG_FORMAT  , zgtiles            ))
#$(eval $(call IMG2SP, CONVERT         , src/sprites/almacen_tiles.png , 16, 16, tiles ))

#$(eval $(call IMG2SP, CONVERT         , src/sprites/viga.png, 0, 0, viga ))
#$(eval $(call IMG2SP, CONVERT         , src/sprites/fondo.png, 0, 0, fondo ))
#
#$(eval $(call IMG2SP, SET_IMG_FORMAT  , zgtiles            ))	
#$(eval $(call IMG2SP, CONVERT         , src/sprites/10_objetos.png , 8, 8,items ))
#$(eval $(call IMG2SP, SET_PALETTE_FW  , $(MODE2)         ))
#$(eval $(call IMG2SP, CONVERT_PALETTE , $(MODE2), mode2 ))
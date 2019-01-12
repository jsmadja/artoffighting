del *.OBJ
del *.ABS
asm68k -I ../inc PAL_COM.SRC
asm68k -I ../inc ACTION.SRC
asm68k -I ../inc SUB.SRC
asm68k -I ../inc SOUND.SRC
asm68k -I ../inc FIX.SRC
lnk68k -c SYS.CMD -m > SYS.MAP
copy *.abs ..\bin




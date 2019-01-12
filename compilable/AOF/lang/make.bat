del *.OBJ
del *.ABS
asm68k -I ../inc LANG2.SRC
asm68k -I ../inc LANG3.SRC
lnk68k -c LANG.CMD -m > LANG.MAP
copy *.abs ..\bin




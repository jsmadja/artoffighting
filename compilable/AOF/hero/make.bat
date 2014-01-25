del *.obj
del *.abs
asm68k -I ../inc ATTACK.SRC
asm68k -I ../inc DMG_SET.SRC
asm68k -I ../inc GAME_SYM.SRC
asm68k -I ../inc HERO.SRC
asm68k -I ../inc HERO_CML.SRC
asm68k -I ../inc HERO_PM.SRC
asm68k -I ../inc HERO_SET.SRC
asm68k -I ../inc HERO_ST2.SRC
asm68k -I ../inc HERO_TBL.SRC
asm68k -I ../inc MOVE_CHG.SRC
lnk68k -c HERO.CMD -m > HERO.MAP
copy *.abs ..\bin

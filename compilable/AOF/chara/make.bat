del *.obj
del *.abs
asm68k -I ../inc CH_BACK.SRC
asm68k -I ../inc CH_DEMO.SRC
asm68k -I ../inc CH_E1A.SRC
asm68k -I ../inc CH_E1D.SRC
asm68k -I ../inc CH_E1N.SRC
asm68k -I ../inc CH_E2A.SRC
asm68k -I ../inc CH_E2D.SRC
asm68k -I ../inc CH_E2N.SRC
asm68k -I ../inc CH_E3A.SRC
asm68k -I ../inc CH_E3D.SRC
asm68k -I ../inc CH_E3N.SRC
asm68k -I ../inc CH_E4A.SRC
asm68k -I ../inc CH_E4D.SRC
asm68k -I ../inc CH_E4N.SRC
asm68k -I ../inc CH_E5A.SRC
asm68k -I ../inc CH_E5D.SRC
asm68k -I ../inc CH_E5N.SRC
asm68k -I ../inc CH_E6A.SRC
asm68k -I ../inc CH_E6D.SRC
asm68k -I ../inc CH_E6N.SRC
asm68k -I ../inc CH_E7A.SRC
asm68k -I ../inc CH_E7D.SRC
asm68k -I ../inc CH_E7N.SRC
asm68k -I ../inc CH_E8A.SRC
asm68k -I ../inc CH_E8D.SRC
asm68k -I ../inc CH_E8N.SRC
asm68k -I ../inc CH_ETC.SRC
asm68k -I ../inc CH_H1A.SRC
asm68k -I ../inc CH_H1D.SRC
asm68k -I ../inc CH_H1N.SRC
asm68k -I ../inc CH_H2A.SRC
asm68k -I ../inc CH_H2D.SRC
asm68k -I ../inc CH_H2N.SRC
asm68k -I ../inc CH_TBL.SRC
asm68k -I ../inc CH_TEST.SRC
asm68k -I ../inc CH_TIT.SRC
lnk68k -c CHARA.CMD -m > CHARA.MAP
copy *.abs ..\bin

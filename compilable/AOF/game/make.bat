del *.OBJ
del *.ABS
asm68k -I ../inc ACT_SUB.SRC
asm68k -I ../inc BACK.SRC
asm68k -I ../inc BONUS.SRC
asm68k -I ../inc BSEL.SRC
asm68k -I ../inc CARD.SRC
asm68k -I ../inc DEMO_CML.SRC
asm68k -I ../inc DM_TBL.SRC
asm68k -I ../inc DUMMY.SRC
asm68k -I ../inc EASY.SRC
asm68k -I ../inc GAME_DSP.SRC
asm68k -I ../inc GAME_SUB.SRC
asm68k -I ../inc HIT.SRC
asm68k -I ../inc HOW.SRC
asm68k -I ../inc LANG.SRC
asm68k -I ../inc MAIN.SRC
asm68k -I ../inc MESSAGE.SRC
asm68k -I ../inc MOVE.SRC
asm68k -I ../inc PAUSE.SRC
asm68k -I ../inc PHASE.SRC
asm68k -I ../inc RANK.SRC
asm68k -I ../inc SELECT.SRC
asm68k -I ../inc START.SRC
asm68k -I ../inc STORY.SRC
asm68k -I ../inc SYS.SRC
asm68k -I ../inc VECTOR.SRC
asm68k -I ../inc WORK.SRC
lnk68k -c GAME.CMD -m > GAME.MAP
copy *.abs ..\bin




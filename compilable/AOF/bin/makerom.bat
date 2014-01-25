del rom.bin
..\..\rom_add\Release\rom_add rom.bin 0x80000 GAME.OUT 0x0 
..\..\rom_add\Release\rom_add rom.bin 0x80000 SYS.OUT 0xa00 0x11600
..\..\rom_add\Release\rom_add rom.bin 0x80000 SYS_DATA.BIN 0x4f40
..\..\rom_add\Release\rom_add rom.bin 0x80000 HERO.OUT 0x12000 0x7000
..\..\rom_add\Release\rom_add rom.bin 0x80000 HK3.OUT 0x19000 0xD000
..\..\rom_add\Release\rom_add rom.bin 0x80000 CHARA.OUT 0x26000 0x17800
..\..\rom_add\Release\rom_add rom.bin 0x80000 DEMO_DATA.bin 0x3AA90
..\..\rom_add\Release\rom_add rom.bin 0x80000 LANG.OUT 0x3d800
..\..\rom_add\Release\rom_add rom.bin 0x80000 OTHER_DATA.bin 0x42b00
byteswap.exe rom.bin
ren rom.bin 044-p1.p1
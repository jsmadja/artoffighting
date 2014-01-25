#include <stdafx.h>
#include <stdlib.h>
#include <stdio.h>
#include <io.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <malloc.h>
#include <fcntl.h>
#include <string.h>

char *romload(char *path, int pos, int size)
{
	char *rom=(char*)malloc(size);
	int fp = _open(path, O_BINARY);
	if (fp != -1)
	{
		_read(fp, rom, size);
		_close(fp);
	}
	else
	{
		free(rom);
		rom = NULL;
	}
	return rom;
}
void romsave(char *path, char *rom, int size)
{
	int fp = _open(path, _O_RDWR | _O_BINARY | _O_CREAT, _S_IREAD | _S_IWRITE);
	_write(fp, rom, size);
	_close(fp);
}

int GetFileSize(char* path)
{
	FILE* fp = fopen(path, "rb");
	fseek(fp, 0, SEEK_END);
	fpos_t position;
	fgetpos(fp, &position);
	fclose(fp);
	return (int)position;
}
void main(int argc, char* argv[])
{
	unsigned int iRomsize = 0;
	unsigned int iRompartoffset = 0;
	unsigned int iRompartsize = 0;
	sscanf(argv[2],"0x%x", &iRomsize);
	sscanf(argv[4],"0x%x", &iRompartoffset);
	if (argc > 5)
		sscanf(argv[5],"0x%x", &iRompartsize);	

	char* pRom = romload(argv[1], 0, iRomsize);
	if (pRom == NULL)
	{
		pRom = (char*)malloc(iRomsize);
		memset(pRom, 0x55, iRomsize);
	}

	unsigned int iPatchSize = GetFileSize(argv[3]);
	char* pPatch = romload(argv[3], 0, iPatchSize);

	/* Remove a.out offset. */
	if (!memcmp(argv[3]+strlen(argv[3])-4, ".OUT", 4))
	{
		pPatch += 0x20;
		iPatchSize -= 0x20;
	}
	if ((iRompartoffset + iPatchSize) > iRomsize)
	{
		printf("rom not big enough.");
		return;
	}
	if ((iRompartsize != 0)&&(iPatchSize > iRompartsize))
	{
		iPatchSize = iRompartsize;
		printf("Oversize: limiting to 0x%.8x\n", iPatchSize);
	}
	memcpy(pRom + iRompartoffset, pPatch, iPatchSize);
	romsave(argv[1], pRom, iRomsize);
	free(pRom);

	printf("%s 0x%.8x-0x%.8x\n", argv[3], iRompartoffset, iRompartoffset + iPatchSize - 1);
}

/*
GAME.OUT 0x00000000-0x0004ebd5
SYS.OUT 0x00000a00-0x00011fff
HERO.OUT 0x00012000-0x00018fff
HK3.OUT 0x00019000-0x00025fff
CHARA.OUT 0x00026000-0x0003d7ff
LANG.OUT 0x0003d800-0x00054253

*/
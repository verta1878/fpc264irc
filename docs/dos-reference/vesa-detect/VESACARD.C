/*
	VESA card explorer

	Copyright(c) 1992 Alchemy Mindworks Inc.
*/

#include "stdio.h"
#include "dos.h"
#include "alloc.h"

typedef struct {
	char sig[4];
	unsigned int version;
	char far *oemstring;
	char capabilities[4];
	unsigned int *videomode;
	unsigned int memory;
	char reserved[242];
	} VESABLOCK;

typedef struct {
	unsigned int attrib;
	char wina_attrib;
	char winb_attrib;
	unsigned int wingran;
	unsigned int winsize;
	unsigned int win_aseg;
	unsigned int win_bseg;
	int (*winfunc)();
	unsigned int bytesperline;
	unsigned int xres;
	unsigned int yres;
	char xchar;
	char ychar;
	char planecount;
	char bitsperpixel;
	char bankcount;
	char memorymodel;
	char banksize;
	char imagepagecount;
	} VESAMODE;

unsigned int linecount=0;

main()
{
	say("VESA card explorer copyright (c) 1992 Alchemy Mindworks Inc.");
	say("");

	if(!vesa()) say("No VESA BIOS extension found");
}

vesa()
{
	VESAMODE *vm;
	VESABLOCK vb;
	union REGS r;
	struct SREGS sr;
	char b[64],p[256];

	r.x.ax=0x4f00;
	sr.es=FP_SEG(&vb);
	r.x.di=FP_OFF(&vb);
	int86x(0x10,&r,&r,&sr);
	if(r.x.ax != 0x004f) return(0);
	if(memcmp(vb.sig,"VESA",4)) return(0);

	say("Vesa BIOS extension found");
	sprintf(b,"Version %d.%d",vb.version >> 8,vb.version & 0x00ff);
	say(b);
	say(vb.oemstring);
	sprintf(b,"%lu kilobytes of memory on board",(long)vb.memory*64L);
	say(b);

	say("Graphics modes supported:");
	for(;;*vb.videomode++) {
		if(*vb.videomode==0xffff) break;
		sprintf(b,"\t\tMode %04.4X:",*vb.videomode);
		say(b);
		switch(*vb.videomode) {
			case 0x0100: say("\t\t640 by 400, 256 colours"); break;
			case 0x0101: say("\t\t640 by 480, 256 colours"); break;
			case 0x0102: say("\t\t800 by 600, 16 colours"); break;
			case 0x0103: say("\t\t800 by 600, 256 colours"); break;
			case 0x0104: say("\t\t1024 by 768, 16 colours"); break;
			case 0x0105: say("\t\t1024 by 768, 256 colours"); break;
			case 0x0106: say("\t\t1280 by 1024, 16 colours"); break;
			case 0x0107: say("\t\t1280 by 1024, 256 colours"); break;
			case 0x0108: say("\t\t80 by 60 column text"); continue;
			case 0x0109: say("\t\t132 by 25 column text"); continue;
			case 0x010a: say("\t\t132 by 43 column text"); continue;
			case 0x010b: say("\t\t132 by 50 column text"); continue;
			case 0x010c: say("\t\t132 by 60 column text"); continue;
			case 0x010d: say("\t\t320 by 200, 32768 colours"); break;
			case 0x010e: say("\t\t320 by 200, 65536 colours"); break;
			case 0x010f: say("\t\t320 by 200, 16,777,216 colours"); break;
			case 0x0110: say("\t\t640 by 480, 32768 colours"); break;
			case 0x0111: say("\t\t640 by 480, 65536 colours"); break;
			case 0x0112: say("\t\t640 by 380, 16,777,216 colours"); break;
			case 0x0113: say("\t\t800 by 600, 32768 colours"); break;
			case 0x0114: say("\t\t800 by 600, 65536 colours"); break;
			case 0x0115: say("\t\t800 by 600, 16,777,216 colours"); break;
			case 0x0116: say("\t\t1024 by 768, 32768 colours"); break;
			case 0x0117: say("\t\t1024 by 768, 65536 colours"); break;
			case 0x0118: say("\t\t1024 by 768, 16,777,216 colours"); break;
			case 0x0119: say("\t\t1280 by 1024, 32768 colours"); break;
			case 0x011a: say("\t\t1280 by 1024, 65536 colours"); break;
			case 0x011b: say("\t\t1280 by 1024, 16,777,216 colours"); break;
			default:
				sprintf(b,"\t\tMode %XH - unknown",*vb.videomode);
				say(b);
				break;
		}

		r.x.ax=0x4f01;
		r.x.cx=*vb.videomode;
		sr.es=FP_SEG(p);
		r.x.di=FP_OFF(p);
		int86x(0x10,&r,&r,&sr);

		vm=(VESAMODE *)p;

		sprintf(b,"\t\t\tMode attributes: %04.4XH",vm->attrib); say(b);
		sprintf(b,"\t\t\tWindow A attributes: %02.2XH",vm->wina_attrib); say(b);
		sprintf(b,"\t\t\tWindow B attributes: %02.2XH",vm->winb_attrib); say(b);
		sprintf(b,"\t\t\tWindow granularity: %04.4XH",vm->wingran); say(b);
		sprintf(b,"\t\t\tWindow size: %04.4XH",vm->winsize); say(b);
		sprintf(b,"\t\t\tWindow A segment: %04.4XH",vm->win_aseg); say(b);
		sprintf(b,"\t\t\tWindow B segment: %04.4XH",vm->win_bseg); say(b);
		sprintf(b,"\t\t\tWindow function pointer: %p",vm->winfunc); say(b);

		sprintf(b,"\t\t\tBytes per line: %d",vm->bytesperline); say(b);

		sprintf(b,"\t\t\tX resolution: %d",vm->xres); say(b);
		sprintf(b,"\t\t\tY resolution: %d",vm->yres); say(b);
		sprintf(b,"\t\t\tX character size: %d",vm->xchar); say(b);
		sprintf(b,"\t\t\tY character size: %d",vm->ychar); say(b);
		sprintf(b,"\t\t\tMemory planes: %d",vm->planecount); say(b);
		sprintf(b,"\t\t\tBits per pixel: %d",vm->bitsperpixel); say(b);
		sprintf(b,"\t\t\tBanks: %d",vm->bankcount); say(b);
		sprintf(b,"\t\t\tMemory model: %d",vm->memorymodel); say(b);
		sprintf(b,"\t\t\tBank size: %d",vm->banksize); say(b);
		sprintf(b,"\t\t\tImage pages: %d",vm->imagepagecount); say(b);
	}
	say("");

	return(1);
}

say(s)
	char *s;
{
	puts(s);
	if(++linecount >= 24) {
		printf("[ More ]");
		getch();
		printf("\r        \r");
		linecount=0;
	}
}

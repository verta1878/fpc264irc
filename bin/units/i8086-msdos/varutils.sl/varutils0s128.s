BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION data class=data
	ALIGN 2
	GLOBAL TC_$VARUTILS_$$_PSAELEMENTFLAGS
TC_$VARUTILS_$$_PSAELEMENTFLAGS	DD	0,0,0,0,0,0,0,0,256,1024,0,0,2048,512,0,0,0,0,0,0,0,0

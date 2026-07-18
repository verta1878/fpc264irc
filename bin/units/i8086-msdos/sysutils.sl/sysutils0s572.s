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

SECTION rodata class=data
	ALIGN 2
	GLOBAL IID_$SYSUTILS_$$_IREADWRITESYNC
IID_$SYSUTILS_$$_IREADWRITESYNC	DD	2064682066
	DW	7567,19675
	DB	156,223,87,224,113,25,61,63

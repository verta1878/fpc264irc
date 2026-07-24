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

SECTION bss class=bss
	GLOBAL U_$SYSTEM_$$_LFNSUPPORT
U_$SYSTEM_$$_LFNSUPPORT:	RESB	1

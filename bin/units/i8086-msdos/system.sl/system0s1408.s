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
	GLOBAL TC_$SYSTEM_$$_POPCNTDATA
TC_$SYSTEM_$$_POPCNTDATA	DB	0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4

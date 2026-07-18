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
	GLOBAL TC_$SYSUTILS_$$_HEXDIGITS
TC_$SYSUTILS_$$_HEXDIGITS	DB	48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70

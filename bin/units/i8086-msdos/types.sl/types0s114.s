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
	GLOBAL IIDSTR_$TYPES_$$_ICLASSFACTORY
IIDSTR_$TYPES_$$_ICLASSFACTORY	DB	38
		DB	"{00000001-0000-0000-C000-000000000046}"

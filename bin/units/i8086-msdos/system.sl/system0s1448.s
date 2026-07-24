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
	GLOBAL TC_$SYSTEM_$$_FLOAT_FORMAT
TC_$SYSTEM_$$_FLOAT_FORMAT	DW	10,2,17,3,21,4,21,4,19,4,19,2,36,4

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
	GLOBAL IID_$TYPES_$$_ISTREAM
IID_$TYPES_$$_ISTREAM	DD	12
	DW	0,0
	DB	192,0,0,0,0,0,0,70

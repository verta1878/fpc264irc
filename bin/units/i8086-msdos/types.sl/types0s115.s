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
	GLOBAL IID_$TYPES_$$_ISEQUENTIALSTREAM
IID_$TYPES_$$_ISEQUENTIALSTREAM	DD	208878128
	DW	10780,4558
	DB	173,229,0,170,0,68,119,61

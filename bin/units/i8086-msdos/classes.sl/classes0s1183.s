BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .rodata
	ALIGN 2
	DW	65535,1,-1,4
	GLOBAL _$CLASSES$_Ld68
_$CLASSES$_Ld68:
		DB	"item",0

SECTION .rodata
	ALIGN 2
	GLOBAL _$CLASSES$_Ld69
_$CLASSES$_Ld69:
	DD	1602224128

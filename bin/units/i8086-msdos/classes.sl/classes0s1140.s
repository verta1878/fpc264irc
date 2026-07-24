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
	GLOBAL _$CLASSES$_Ld25
_$CLASSES$_Ld25:
	DD	1072613601
	DW	58368,18980
	DB	188,172,31,1,71,100,57,177

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

SECTION .data
	ALIGN 2
	GLOBAL RTTI_$CLASSES_$$_THELPCONTEXT
RTTI_$CLASSES_$$_THELPCONTEXT	DB	1,12
		DB	"THelpContext"
	DB	4
	DD	-2147483647,2147483647

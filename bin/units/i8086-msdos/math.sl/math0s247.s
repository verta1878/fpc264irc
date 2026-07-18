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
	GLOBAL RTTI_$MATH_$$_TVALUESIGN
RTTI_$MATH_$$_TVALUESIGN	DB	1,10
		DB	"TValueSign"
	DB	0
	DD	-1,1

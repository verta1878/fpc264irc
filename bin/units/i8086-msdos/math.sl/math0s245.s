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
	GLOBAL RTTI_$MATH_$$_EINVALIDARGUMENT
RTTI_$MATH_$$_EINVALIDARGUMENT	DB	15,16
		DB	"EInvalidArgument"
	DW	VMT_$MATH_$$_EINVALIDARGUMENT,RTTI_$SYSUTILS_$$_EMATHERROR,0
	DB	4
		DB	"math"
	DW	0
EXTERN	RTTI_$SYSUTILS_$$_EMATHERROR
EXTERN	VMT_$MATH_$$_EINVALIDARGUMENT

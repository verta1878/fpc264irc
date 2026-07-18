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
	GLOBAL RTTI_$CLASSES_$$_EINVALIDOPERATION
RTTI_$CLASSES_$$_EINVALIDOPERATION	DB	15,17
		DB	"EInvalidOperation"
	DW	VMT_$CLASSES_$$_EINVALIDOPERATION,RTTI_$SYSUTILS_$$_EXCEPTION,0
	DB	7
		DB	"Classes"
	DW	0
EXTERN	RTTI_$SYSUTILS_$$_EXCEPTION
EXTERN	VMT_$CLASSES_$$_EINVALIDOPERATION

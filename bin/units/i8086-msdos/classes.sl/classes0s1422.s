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
	GLOBAL INIT_$CLASSES_$$_TPARSER
INIT_$CLASSES_$$_TPARSER	DB	15,7
		DB	"TParser"
	DD	2,2
	DW	RTTI_$SYSTEM_$$_ANSISTRING,17,RTTI_$SYSTEM_$$_WIDESTRING,19
EXTERN	RTTI_$SYSTEM_$$_WIDESTRING
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING

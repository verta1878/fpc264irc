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
	GLOBAL INIT_$CLASSES_$$_TCOMPONENT
INIT_$CLASSES_$$_TCOMPONENT	DB	15,10
		DB	"TComponent"
	DD	2,1
	DW	RTTI_$SYSTEM_$$_ANSISTRING,8
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING

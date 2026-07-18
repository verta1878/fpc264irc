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
	GLOBAL INIT_$CLASSES_$$_TUNRESOLVEDREFERENCE
INIT_$CLASSES_$$_TUNRESOLVEDREFERENCE	DB	15,20
		DB	"TUnresolvedReference"
	DD	2,2
	DW	RTTI_$SYSTEM_$$_ANSISTRING,8,RTTI_$SYSTEM_$$_ANSISTRING,10
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING

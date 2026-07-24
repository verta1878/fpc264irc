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
	GLOBAL RTTI_$CLASSES_$$_TSTRINGITEM
RTTI_$CLASSES_$$_TSTRINGITEM	DB	13,11
		DB	"TStringItem"
	DD	4,2
	DW	RTTI_$SYSTEM_$$_ANSISTRING,0,RTTI_$SYSTEM_$$_TOBJECT,2
EXTERN	RTTI_$SYSTEM_$$_TOBJECT
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING

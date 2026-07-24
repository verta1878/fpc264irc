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
	GLOBAL RTTI_$CLASSES_$$_DEF958
RTTI_$CLASSES_$$_DEF958	DB	13,12
		DB	"TSystemTimes"
	DD	32,4
	DW	RTTI_$SYSTEM_$$_QWORD,0,RTTI_$SYSTEM_$$_QWORD,8,RTTI_$SYSTEM_$$_QWORD
	DW	16,RTTI_$SYSTEM_$$_QWORD,24
EXTERN	RTTI_$SYSTEM_$$_QWORD

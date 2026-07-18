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
	GLOBAL RTTI_$CLASSES_$$_IDESIGNERNOTIFY
RTTI_$CLASSES_$$_IDESIGNERNOTIFY	DB	14,15
		DB	"IDesignerNotify"
	DW	RTTI_$SYSTEM_$$_IUNKNOWN
	DB	9
	DD	-1183717369
	DW	58278,4561
	DB	170,177,0,192,79,177,111,188,7
		DB	"Classes"
	DB	38
		DB	"{B971E807-E3A6-11D1-AAB1-00C04FB16FBC}"
EXTERN	RTTI_$SYSTEM_$$_IUNKNOWN

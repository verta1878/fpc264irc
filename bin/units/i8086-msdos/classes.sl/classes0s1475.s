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
	GLOBAL RTTI_$CLASSES_$$_IINTERFACELIST
RTTI_$CLASSES_$$_IINTERFACELIST	DB	14,14
		DB	"IInterfaceList"
	DW	RTTI_$SYSTEM_$$_IUNKNOWN
	DB	9
	DD	677243530
	DW	47205,4561
	DB	170,167,0,192,79,177,122,114,7
		DB	"Classes"
	DB	38
		DB	"{285DEA8A-B865-11D1-AAA7-00C04FB17A72}"
EXTERN	RTTI_$SYSTEM_$$_IUNKNOWN

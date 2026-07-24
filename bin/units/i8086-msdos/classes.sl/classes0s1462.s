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
	GLOBAL RTTI_$CLASSES_$$_IINTERFACECOMPONENTREFERENCE
RTTI_$CLASSES_$$_IINTERFACECOMPONENTREFERENCE	DB	14,28
		DB	"IInterfaceComponentReference"
	DW	RTTI_$SYSTEM_$$_IUNKNOWN
	DB	9
	DD	1072613601
	DW	58368,18980
	DB	188,172,31,1,71,100,57,177,7
		DB	"Classes"
	DB	38
		DB	"{3FEEC8E1-E400-4A24-BCAC-1F01476439B1}"
EXTERN	RTTI_$SYSTEM_$$_IUNKNOWN

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
	GLOBAL RTTI_$CLASSES_$$_IVCLCOMOBJECT
RTTI_$CLASSES_$$_IVCLCOMOBJECT	DB	14,13
		DB	"IVCLComObject"
	DW	RTTI_$SYSTEM_$$_IUNKNOWN
	DB	9
	DD	-528969056
	DW	62767,4559
	DB	189,47,0,32,175,14,91,129,7
		DB	"Classes"
	DB	38
		DB	"{E07892A0-F52F-11CF-BD2F-0020AF0E5B81}"
EXTERN	RTTI_$SYSTEM_$$_IUNKNOWN

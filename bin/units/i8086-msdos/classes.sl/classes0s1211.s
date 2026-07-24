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
	GLOBAL RTTI_$CLASSES_$$_TSHIFTSTATE
RTTI_$CLASSES_$$_TSHIFTSTATE	DB	5,11
		DB	"TShiftState"
	DB	1
	DW	RTTI_$CLASSES_$$_TSHIFTSTATEENUM
EXTERN	RTTI_$CLASSES_$$_TSHIFTSTATEENUM

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
	GLOBAL RTTI_$CLASSES$_$TFPLIST_$__$$_TDIRECTION
RTTI_$CLASSES$_$TFPLIST_$__$$_TDIRECTION	DB	3,10
		DB	"TDirection"
	DB	5
	DD	0,1
	DW	0
	DB	13
		DB	"FromBeginning"
	DB	7
		DB	"FromEnd"
	DB	7
		DB	"Classes"
	DB	0

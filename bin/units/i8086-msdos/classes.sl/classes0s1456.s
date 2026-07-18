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
	GLOBAL RTTI_$CLASSES_$$_DEF1034
RTTI_$CLASSES_$$_DEF1034	DB	3
		DB	0
	DB	5
	DD	0,3
	DW	0
	DB	13
		DB	"csInheritable"
	DB	16
		DB	"csCheckPropAvail"
	DB	14
		DB	"csSubComponent"
	DB	11
		DB	"csTransient"
	DB	7
		DB	"Classes"
	DB	0

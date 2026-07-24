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
	GLOBAL RTTI_$CLASSES_$$_DEF1032
RTTI_$CLASSES_$$_DEF1032	DB	3
		DB	0
	DB	5
	DD	0,10
	DW	0
	DB	9
		DB	"csLoading"
	DB	9
		DB	"csReading"
	DB	9
		DB	"csWriting"
	DB	12
		DB	"csDestroying"
	DB	11
		DB	"csDesigning"
	DB	10
		DB	"csAncestor"
	DB	10
		DB	"csUpdating"
	DB	8
		DB	"csFixups"
	DB	18
		DB	"csFreeNotification"
	DB	8
		DB	"csInline"
	DB	16
		DB	"csDesignInstance"
	DB	7
		DB	"Classes"
	DB	0

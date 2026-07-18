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
	GLOBAL RTTI_$CLASSES_$$_TTHREADPRIORITY
RTTI_$CLASSES_$$_TTHREADPRIORITY	DB	3,15
		DB	"TThreadPriority"
	DB	5
	DD	0,6
	DW	0
	DB	6
		DB	"tpIdle"
	DB	8
		DB	"tpLowest"
	DB	7
		DB	"tpLower"
	DB	8
		DB	"tpNormal"
	DB	8
		DB	"tpHigher"
	DB	9
		DB	"tpHighest"
	DB	14
		DB	"tpTimeCritical"
	DB	7
		DB	"Classes"
	DB	0

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
	GLOBAL RTTI_$CLASSES_$$_TREADERPROC
RTTI_$CLASSES_$$_TREADERPROC	DB	6,11
		DB	"TReaderProc"
	DB	0,1,8,6
		DB	"Reader"
		DB	7,"TReader"
	DB	2
	DW	RTTI_$CLASSES_$$_TREADER
EXTERN	RTTI_$CLASSES_$$_TREADER

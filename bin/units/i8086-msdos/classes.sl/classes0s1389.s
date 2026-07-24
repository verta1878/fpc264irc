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
	GLOBAL RTTI_$CLASSES_$$_TWRITERPROC
RTTI_$CLASSES_$$_TWRITERPROC	DB	6,11
		DB	"TWriterProc"
	DB	0,1,8,6
		DB	"Writer"
		DB	7,"TWriter"
	DB	2
	DW	RTTI_$CLASSES_$$_TWRITER
EXTERN	RTTI_$CLASSES_$$_TWRITER

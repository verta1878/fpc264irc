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
	GLOBAL RTTI_$CLASSES_$$_TSTREAMPROC
RTTI_$CLASSES_$$_TSTREAMPROC	DB	6,11
		DB	"TStreamProc"
	DB	0,1,8,6
		DB	"Stream"
		DB	7,"TStream"
	DB	2
	DW	RTTI_$CLASSES_$$_TSTREAM
EXTERN	RTTI_$CLASSES_$$_TSTREAM

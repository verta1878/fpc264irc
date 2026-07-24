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
	GLOBAL RTTI_$CLASSES_$$_TREADERERROR
RTTI_$CLASSES_$$_TREADERERROR	DB	6,12
		DB	"TReaderError"
	DB	0,3,8,6
		DB	"Reader"
		DB	7,"TReader"
	DB	2,7
		DB	"Message"
		DB	10,"AnsiString"
	DB	1,7
		DB	"Handled"
		DB	7,"Boolean"
	DB	2
	DW	RTTI_$CLASSES_$$_TREADER,RTTI_$SYSTEM_$$_ANSISTRING,RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$CLASSES_$$_TREADER

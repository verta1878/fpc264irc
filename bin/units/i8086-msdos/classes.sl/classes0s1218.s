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
	GLOBAL RTTI_$CLASSES_$$_THELPEVENT
RTTI_$CLASSES_$$_THELPEVENT	DB	6,10
		DB	"THelpEvent"
	DB	1,3,0,7
		DB	"Command"
		DB	4,"Word"
	DB	0,4
		DB	"Data"
		DB	7,"LongInt"
	DB	1,8
		DB	"CallHelp"
		DB	7,"Boolean"
		DB	7,"Boolean"
	DW	RTTI_$SYSTEM_$$_BOOLEAN
	DB	2
	DW	RTTI_$SYSTEM_$$_WORD,RTTI_$SYSTEM_$$_LONGINT,RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN

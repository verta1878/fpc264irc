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
	GLOBAL RTTI_$CLASSES_$$_TFINDMETHODEVENT
RTTI_$CLASSES_$$_TFINDMETHODEVENT	DB	6,16
		DB	"TFindMethodEvent"
	DB	0,4,8,6
		DB	"Reader"
		DB	7,"TReader"
	DB	2,10
		DB	"MethodName"
		DB	10,"AnsiString"
	DB	1,7
		DB	"Address"
		DB	11,"NearPointer"
	DB	1,5
		DB	"Error"
		DB	7,"Boolean"
	DB	2
	DW	RTTI_$CLASSES_$$_TREADER,RTTI_$SYSTEM_$$_ANSISTRING,RTTI_$SYSTEM_$$_NEARPOINTER
	DW	RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_NEARPOINTER
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$CLASSES_$$_TREADER

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
	GLOBAL RTTI_$CLASSES_$$_TFINDCOMPONENTCLASSEVENT
RTTI_$CLASSES_$$_TFINDCOMPONENTCLASSEVENT	DB	6,24
		DB	"TFindComponentClassEvent"
	DB	0,3,8,6
		DB	"Reader"
		DB	7,"TReader"
	DB	2,9
		DB	"ClassName"
		DB	10,"AnsiString"
	DB	1,14
		DB	"ComponentClass"
		DB	15,"TComponentClass"
	DB	2
	DW	RTTI_$CLASSES_$$_TREADER,RTTI_$SYSTEM_$$_ANSISTRING,RTTI_$CLASSES_$$_TCOMPONENTCLASS
EXTERN	RTTI_$CLASSES_$$_TCOMPONENTCLASS
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$CLASSES_$$_TREADER

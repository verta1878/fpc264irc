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
	GLOBAL RTTI_$CLASSES_$$_TANCESTORNOTFOUNDEVENT
RTTI_$CLASSES_$$_TANCESTORNOTFOUNDEVENT	DB	6,22
		DB	"TAncestorNotFoundEvent"
	DB	0,4,8,6
		DB	"Reader"
		DB	7,"TReader"
	DB	2,13
		DB	"ComponentName"
		DB	10,"AnsiString"
	DB	0,14
		DB	"ComponentClass"
		DB	16,"TPersistentClass"
	DB	9,9
		DB	"Component"
		DB	10,"TComponent"
	DB	2
	DW	RTTI_$CLASSES_$$_TREADER,RTTI_$SYSTEM_$$_ANSISTRING,RTTI_$CLASSES_$$_TPERSISTENTCLASS
	DW	RTTI_$CLASSES_$$_TCOMPONENT
EXTERN	RTTI_$CLASSES_$$_TCOMPONENT
EXTERN	RTTI_$CLASSES_$$_TPERSISTENTCLASS
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$CLASSES_$$_TREADER

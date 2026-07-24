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
	GLOBAL RTTI_$CLASSES_$$_TFINDANCESTOREVENT
RTTI_$CLASSES_$$_TFINDANCESTOREVENT	DB	6,18
		DB	"TFindAncestorEvent"
	DB	0,5,8,6
		DB	"Writer"
		DB	7,"TWriter"
	DB	8,9
		DB	"Component"
		DB	10,"TComponent"
	DB	2,4
		DB	"Name"
		DB	10,"AnsiString"
	DB	9,8
		DB	"Ancestor"
		DB	10,"TComponent"
	DB	9,12
		DB	"RootAncestor"
		DB	10,"TComponent"
	DB	2
	DW	RTTI_$CLASSES_$$_TWRITER,RTTI_$CLASSES_$$_TCOMPONENT,RTTI_$SYSTEM_$$_ANSISTRING
	DW	RTTI_$CLASSES_$$_TCOMPONENT,RTTI_$CLASSES_$$_TCOMPONENT
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$CLASSES_$$_TCOMPONENT
EXTERN	RTTI_$CLASSES_$$_TWRITER

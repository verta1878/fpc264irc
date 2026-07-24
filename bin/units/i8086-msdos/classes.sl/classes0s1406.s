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
	GLOBAL RTTI_$CLASSES_$$_TREADWRITESTRINGPROPERTYEVENT
RTTI_$CLASSES_$$_TREADWRITESTRINGPROPERTYEVENT	DB	6,29
		DB	"TReadWriteStringPropertyEvent"
	DB	0,4,8,6
		DB	"Sender"
		DB	7,"TObject"
	DB	10,8
		DB	"Instance"
		DB	11,"TPersistent"
	DB	0,8
		DB	"PropInfo"
		DB	9,"PPropInfo"
	DB	1,7
		DB	"Content"
		DB	10,"AnsiString"
	DB	2
	DW	RTTI_$SYSTEM_$$_TOBJECT,RTTI_$CLASSES_$$_TPERSISTENT,RTTI_$TYPINFO_$$_PPROPINFO
	DW	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$TYPINFO_$$_PPROPINFO
EXTERN	RTTI_$CLASSES_$$_TPERSISTENT
EXTERN	RTTI_$SYSTEM_$$_TOBJECT

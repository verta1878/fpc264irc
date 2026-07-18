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
	GLOBAL RTTI_$CLASSES_$$_TPROPERTYNOTFOUNDEVENT
RTTI_$CLASSES_$$_TPROPERTYNOTFOUNDEVENT	DB	6,22
		DB	"TPropertyNotFoundEvent"
	DB	0,6,8,6
		DB	"Reader"
		DB	7,"TReader"
	DB	8,8
		DB	"Instance"
		DB	11,"TPersistent"
	DB	1,8
		DB	"PropName"
		DB	10,"AnsiString"
	DB	0,6
		DB	"IsPath"
		DB	7,"Boolean"
	DB	1,7
		DB	"Handled"
		DB	7,"Boolean"
	DB	1,4
		DB	"Skip"
		DB	7,"Boolean"
	DB	2
	DW	RTTI_$CLASSES_$$_TREADER,RTTI_$CLASSES_$$_TPERSISTENT,RTTI_$SYSTEM_$$_ANSISTRING
	DW	RTTI_$SYSTEM_$$_BOOLEAN,RTTI_$SYSTEM_$$_BOOLEAN,RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$CLASSES_$$_TPERSISTENT
EXTERN	RTTI_$CLASSES_$$_TREADER

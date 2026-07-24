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
	GLOBAL RTTI_$CLASSES_$$_TWRITEMETHODPROPERTYEVENT
RTTI_$CLASSES_$$_TWRITEMETHODPROPERTYEVENT	DB	6,25
		DB	"TWriteMethodPropertyEvent"
	DB	0,6,8,6
		DB	"Writer"
		DB	7,"TWriter"
	DB	8,8
		DB	"Instance"
		DB	11,"TPersistent"
	DB	0,8
		DB	"PropInfo"
		DB	9,"PPropInfo"
	DB	2,11
		DB	"MethodValue"
		DB	7,"TMethod"
	DB	2,14
		DB	"DefMethodValue"
		DB	7,"TMethod"
	DB	1,7
		DB	"Handled"
		DB	7,"Boolean"
	DB	2
	DW	RTTI_$CLASSES_$$_TWRITER,RTTI_$CLASSES_$$_TPERSISTENT,RTTI_$TYPINFO_$$_PPROPINFO
	DW	RTTI_$SYSTEM_$$_TMETHOD,RTTI_$SYSTEM_$$_TMETHOD,RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_TMETHOD
EXTERN	RTTI_$TYPINFO_$$_PPROPINFO
EXTERN	RTTI_$CLASSES_$$_TPERSISTENT
EXTERN	RTTI_$CLASSES_$$_TWRITER

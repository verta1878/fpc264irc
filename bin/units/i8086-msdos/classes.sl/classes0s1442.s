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
	GLOBAL RTTI_$CLASSES_$$_TNOTIFYCALLBACK
RTTI_$CLASSES_$$_TNOTIFYCALLBACK	DB	23,15
		DB	"TNotifyCallBack"
	DB	0,2
	DW	0
	DB	2,8
	DW	RTTI_$SYSTEM_$$_TOBJECT
	DB	6
		DB	"Sender"
	DB	0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	5
		DB	"AData"
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_TOBJECT

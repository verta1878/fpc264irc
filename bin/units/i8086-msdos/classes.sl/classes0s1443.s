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
	GLOBAL RTTI_$CLASSES_$$_TTHREADSTATUSNOTIFYCALLBACK
RTTI_$CLASSES_$$_TTHREADSTATUSNOTIFYCALLBACK	DB	23,27
		DB	"TThreadStatusNotifyCallBack"
	DB	0,2
	DW	0
	DB	3,8
	DW	RTTI_$CLASSES_$$_TTHREAD
	DB	6
		DB	"Sender"
	DB	0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	5
		DB	"AData"
	DB	2
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	6
		DB	"status"
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$CLASSES_$$_TTHREAD

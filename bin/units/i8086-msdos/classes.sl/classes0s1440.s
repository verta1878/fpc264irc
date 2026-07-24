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
	GLOBAL RTTI_$CLASSES_$$_TTHREADSTATUSNOTIFYEVENT
RTTI_$CLASSES_$$_TTHREADSTATUSNOTIFYEVENT	DB	6,24
		DB	"TThreadStatusNotifyEvent"
	DB	0,2,8,6
		DB	"Sender"
		DB	7,"TThread"
	DB	2,6
		DB	"status"
		DB	10,"AnsiString"
	DB	2
	DW	RTTI_$CLASSES_$$_TTHREAD,RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$CLASSES_$$_TTHREAD

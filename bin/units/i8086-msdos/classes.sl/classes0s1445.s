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
	GLOBAL RTTI_$CLASSES_$$_TTHREADEXECUTESTATUSCALLBACK
RTTI_$CLASSES_$$_TTHREADEXECUTESTATUSCALLBACK	DB	23,28
		DB	"TThreadExecuteStatusCallBack"
	DB	0,2
	DW	0
	DB	2,0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	5
		DB	"AData"
	DB	0
	DW	RTTI_$CLASSES_$$_TTHREADREPORTSTATUS
	DB	12
		DB	"ReportStatus"
EXTERN	RTTI_$CLASSES_$$_TTHREADREPORTSTATUS
EXTERN	RTTI_$SYSTEM_$$_POINTER

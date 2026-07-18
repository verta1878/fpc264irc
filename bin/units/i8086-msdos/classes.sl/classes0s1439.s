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
	GLOBAL RTTI_$CLASSES_$$_TTHREADREPORTSTATUS
RTTI_$CLASSES_$$_TTHREADREPORTSTATUS	DB	6,19
		DB	"TThreadReportStatus"
	DB	0,1,2,6
		DB	"status"
		DB	10,"AnsiString"
	DB	2
	DW	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING

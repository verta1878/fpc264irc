BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION data class=data
	ALIGN 2
	GLOBAL RTTI_$SYSTEM_$$_TBASICEVENTWAITFORHANDLER
RTTI_$SYSTEM_$$_TBASICEVENTWAITFORHANDLER	DB	23,25
		DB	"TBasicEventWaitForHandler"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_LONGINT
	DB	2,0
	DW	RTTI_$SYSTEM_$$_LONGWORD
	DB	7
		DB	"timeout"
	DB	0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	5
		DB	"state"
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_LONGWORD
EXTERN	RTTI_$SYSTEM_$$_LONGINT

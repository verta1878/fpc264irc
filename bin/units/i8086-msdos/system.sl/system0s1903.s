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
	GLOBAL RTTI_$SYSTEM_$$_TTHREADSETPRIORITYHANDLER
RTTI_$SYSTEM_$$_TTHREADSETPRIORITYHANDLER	DB	23,25
		DB	"TThreadSetPriorityHandler"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_BOOLEAN
	DB	2,0
	DW	RTTI_$SYSTEM_$$_WORD
	DB	12
		DB	"threadHandle"
	DB	0
	DW	RTTI_$SYSTEM_$$_LONGINT
	DB	4
		DB	"Prio"
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN

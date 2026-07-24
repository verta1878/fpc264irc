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
	GLOBAL RTTI_$SYSTEM_$$_TCRITICALSECTIONHANDLERTRYENTER
RTTI_$SYSTEM_$$_TCRITICALSECTIONHANDLERTRYENTER	DB	23,31
		DB	"TCriticalSectionHandlerTryEnter"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_LONGINT
	DB	1,1
	DW	RTTI_$SYSTEM_$$_formal
	DB	2
		DB	"cs"
EXTERN	RTTI_$SYSTEM_$$_formal
EXTERN	RTTI_$SYSTEM_$$_LONGINT

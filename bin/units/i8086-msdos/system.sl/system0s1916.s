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
	GLOBAL RTTI_$SYSTEM_$$_TRTLEVENTHANDLERTIMEOUT
RTTI_$SYSTEM_$$_TRTLEVENTHANDLERTIMEOUT	DB	23,23
		DB	"TRTLEventHandlerTimeout"
	DB	0,2
	DW	0
	DB	2,0
	DW	RTTI_$SYSTEM_$$_PRTLEVENT
	DB	6
		DB	"AEvent"
	DB	0
	DW	RTTI_$SYSTEM_$$_LONGINT
	DB	7
		DB	"timeout"
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_PRTLEVENT

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
	GLOBAL RTTI_$SYSTEM_$$_TWAITFORTHREADTERMINATEHANDLER
RTTI_$SYSTEM_$$_TWAITFORTHREADTERMINATEHANDLER	DB	23,30
		DB	"TWaitForThreadTerminateHandler"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_LONGWORD
	DB	2,0
	DW	RTTI_$SYSTEM_$$_WORD
	DB	12
		DB	"threadHandle"
	DB	0
	DW	RTTI_$SYSTEM_$$_LONGINT
	DB	9
		DB	"TimeoutMs"
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_LONGWORD

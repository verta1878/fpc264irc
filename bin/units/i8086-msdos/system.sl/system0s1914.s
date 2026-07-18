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
	GLOBAL RTTI_$SYSTEM_$$_TBASICEVENTCREATEHANDLER
RTTI_$SYSTEM_$$_TBASICEVENTCREATEHANDLER	DB	23,24
		DB	"TBasicEventCreateHandler"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	4,0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	15
		DB	"EventAttributes"
	DB	0
	DW	RTTI_$SYSTEM_$$_BOOLEAN
	DB	12
		DB	"AManualReset"
	DB	0
	DW	RTTI_$SYSTEM_$$_BOOLEAN
	DB	12
		DB	"InitialState"
	DB	2
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	4
		DB	"Name"
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_POINTER

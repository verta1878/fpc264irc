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
	GLOBAL RTTI_$SYSTEM_$$_TRTLEVENTHANDLER
RTTI_$SYSTEM_$$_TRTLEVENTHANDLER	DB	23,16
		DB	"TRTLEventHandler"
	DB	0,2
	DW	0
	DB	1,0
	DW	RTTI_$SYSTEM_$$_PRTLEVENT
	DB	6
		DB	"AEvent"
EXTERN	RTTI_$SYSTEM_$$_PRTLEVENT

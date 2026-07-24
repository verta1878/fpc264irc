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
	GLOBAL RTTI_$SYSUTILS_$$_TEVENTTYPE
RTTI_$SYSUTILS_$$_TEVENTTYPE	DB	3,10
		DB	"TEventType"
	DB	5
	DD	0,4
	DW	0
	DB	8
		DB	"etCustom"
	DB	6
		DB	"etInfo"
	DB	9
		DB	"etWarning"
	DB	7
		DB	"etError"
	DB	7
		DB	"etDebug"
	DB	8
		DB	"sysutils"
	DB	0

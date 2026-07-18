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
	GLOBAL RTTI_$TYPES_$$_ICLASSFACTORY
RTTI_$TYPES_$$_ICLASSFACTORY	DB	14,13
		DB	"IClassFactory"
	DW	RTTI_$SYSTEM_$$_IUNKNOWN
	DB	9
	DD	1
	DW	0,0
	DB	192,0,0,0,0,0,0,70,5
		DB	"Types"
	DB	38
		DB	"{00000001-0000-0000-C000-000000000046}"
EXTERN	RTTI_$SYSTEM_$$_IUNKNOWN

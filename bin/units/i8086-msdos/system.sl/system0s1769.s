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
	GLOBAL RTTI_$SYSTEM_$$_IDISPATCH
RTTI_$SYSTEM_$$_IDISPATCH	DB	14,9
		DB	"IDispatch"
	DW	RTTI_$SYSTEM_$$_IUNKNOWN
	DB	9
	DD	132096
	DW	0,0
	DB	192,0,0,0,0,0,0,70,6
		DB	"System"
	DB	38
		DB	"{00020400-0000-0000-C000-000000000046}"
EXTERN	RTTI_$SYSTEM_$$_IUNKNOWN

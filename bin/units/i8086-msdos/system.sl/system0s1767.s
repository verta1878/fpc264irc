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
	GLOBAL RTTI_$SYSTEM_$$_IENUMERATOR
RTTI_$SYSTEM_$$_IENUMERATOR	DB	14,11
		DB	"IEnumerator"
	DW	RTTI_$SYSTEM_$$_IUNKNOWN
	DB	9
	DD	0
	DW	0,0
	DB	0,0,0,0,0,0,0,0,6
		DB	"System"
	DB	0

EXTERN	RTTI_$SYSTEM_$$_IUNKNOWN

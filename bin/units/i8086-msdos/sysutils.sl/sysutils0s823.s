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
	GLOBAL INIT_$SYSUTILS_$$_EXCEPTION
INIT_$SYSUTILS_$$_EXCEPTION	DB	15,9
		DB	"Exception"
	DD	2,1
	DW	RTTI_$SYSTEM_$$_ANSISTRING,2
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING

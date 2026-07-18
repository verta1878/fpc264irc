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
	GLOBAL INIT_$CONVUTILS_$$_RESOURCEDATA
INIT_$CONVUTILS_$$_RESOURCEDATA	DB	13,12
		DB	"ResourceData"
	DD	12,1
	DW	RTTI_$SYSTEM_$$_ANSISTRING,0
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING

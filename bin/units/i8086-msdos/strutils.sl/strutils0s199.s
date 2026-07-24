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
	GLOBAL RTTI_$STRUTILS_$$_TCOMPARETEXTPROC
RTTI_$STRUTILS_$$_TCOMPARETEXTPROC	DB	23,16
		DB	"TCompareTextProc"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_BOOLEAN
	DB	2,2
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	5
		DB	"AText"
	DB	2
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	6
		DB	"AOther"
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN

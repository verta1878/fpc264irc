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
	GLOBAL RTTI_$SYSUTILS_$$_EACCESSVIOLATION
RTTI_$SYSUTILS_$$_EACCESSVIOLATION	DB	15,16
		DB	"EAccessViolation"
	DW	VMT_$SYSUTILS_$$_EACCESSVIOLATION,RTTI_$SYSUTILS_$$_EEXTERNAL,0
	DB	8
		DB	"sysutils"
	DW	0
EXTERN	RTTI_$SYSUTILS_$$_EEXTERNAL
EXTERN	VMT_$SYSUTILS_$$_EACCESSVIOLATION

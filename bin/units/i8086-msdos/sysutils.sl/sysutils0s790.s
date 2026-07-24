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
	GLOBAL RTTI_$SYSUTILS_$$_TMBCSBYTETYPE
RTTI_$SYSUTILS_$$_TMBCSBYTETYPE	DB	3,13
		DB	"TMbcsByteType"
	DB	5
	DD	0,2
	DW	0
	DB	12
		DB	"mbSingleByte"
	DB	10
		DB	"mbLeadByte"
	DB	11
		DB	"mbTrailByte"
	DB	8
		DB	"sysutils"
	DB	0

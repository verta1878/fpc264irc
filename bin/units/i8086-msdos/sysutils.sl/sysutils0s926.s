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
	GLOBAL RTTI_$SYSUTILS_$$_TFILENAMECASEMATCH
RTTI_$SYSUTILS_$$_TFILENAMECASEMATCH	DB	3,18
		DB	"TFilenameCaseMatch"
	DB	5
	DD	0,3
	DW	0
	DB	6
		DB	"mkNone"
	DB	12
		DB	"mkExactMatch"
	DB	13
		DB	"mkSingleMatch"
	DB	11
		DB	"mkAmbiguous"
	DB	8
		DB	"sysutils"
	DB	0

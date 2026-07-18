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
	GLOBAL RTTI_$TYPINFO_$$_TCALLCONV
RTTI_$TYPINFO_$$_TCALLCONV	DB	3,9
		DB	"TCallConv"
	DB	1
	DD	0,11
	DW	0
	DB	5
		DB	"ccReg"
	DB	7
		DB	"ccCdecl"
	DB	8
		DB	"ccPascal"
	DB	9
		DB	"ccStdCall"
	DB	10
		DB	"ccSafeCall"
	DB	9
		DB	"ccCppdecl"
	DB	7
		DB	"ccFar16"
	DB	12
		DB	"ccOldFPCCall"
	DB	12
		DB	"ccInternProc"
	DB	9
		DB	"ccSysCall"
	DB	11
		DB	"ccSoftFloat"
	DB	10
		DB	"ccMWPascal"
	DB	7
		DB	"typinfo"
	DB	0

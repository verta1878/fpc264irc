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
	GLOBAL RTTI_$SYSTEM_$$_TSTANDARDCODEPAGEENUM
RTTI_$SYSTEM_$$_TSTANDARDCODEPAGEENUM	DB	3,21
		DB	"TStandardCodePageEnum"
	DB	5
	DD	0,3
	DW	0
	DB	7
		DB	"scpAnsi"
	DB	15
		DB	"scpConsoleInput"
	DB	16
		DB	"scpConsoleOutput"
	DB	23
		DB	"scpFileSystemSingleByte"
	DB	6
		DB	"System"
	DB	0

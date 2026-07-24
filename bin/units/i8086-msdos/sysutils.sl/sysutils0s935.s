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
	GLOBAL RTTI_$SYSUTILS_$$_TFILESEARCHOPTION
RTTI_$SYSUTILS_$$_TFILESEARCHOPTION	DB	3,17
		DB	"TFileSearchOption"
	DB	5
	DD	0,1
	DW	0
	DB	21
		DB	"sfoImplicitCurrentDir"
	DB	14
		DB	"sfoStripQuotes"
	DB	8
		DB	"sysutils"
	DB	0

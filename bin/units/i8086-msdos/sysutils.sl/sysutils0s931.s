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
	GLOBAL INIT_$SYSUTILS_$$_TUNICODESEARCHREC
INIT_$SYSUTILS_$$_TUNICODESEARCHREC	DB	13,17
		DB	"TUnicodeSearchRec"
	DD	24,1
	DW	RTTI_$SYSTEM_$$_UNICODESTRING,16
EXTERN	RTTI_$SYSTEM_$$_UNICODESTRING

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
	GLOBAL RTTI_$SYSUTILS_$$_TFORMATDATETIMEOPTION
RTTI_$SYSUTILS_$$_TFORMATDATETIMEOPTION	DB	3,21
		DB	"TFormatDateTimeOption"
	DB	5
	DD	0,0
	DW	0
	DB	11
		DB	"fdoInterval"
	DB	8
		DB	"sysutils"
	DB	0

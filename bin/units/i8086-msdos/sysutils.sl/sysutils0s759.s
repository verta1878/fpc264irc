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
	GLOBAL RTTI_$SYSUTILS_$$_TFORMATDATETIMEOPTIONS
RTTI_$SYSUTILS_$$_TFORMATDATETIMEOPTIONS	DB	5,22
		DB	"TFormatDateTimeOptions"
	DB	1
	DW	RTTI_$SYSUTILS_$$_TFORMATDATETIMEOPTION
EXTERN	RTTI_$SYSUTILS_$$_TFORMATDATETIMEOPTION

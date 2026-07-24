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
	GLOBAL RTTI_$TYPINFO_$$_EPROPERTYERROR
RTTI_$TYPINFO_$$_EPROPERTYERROR	DB	15,14
		DB	"EPropertyError"
	DW	VMT_$TYPINFO_$$_EPROPERTYERROR,RTTI_$SYSUTILS_$$_EXCEPTION,0
	DB	7
		DB	"typinfo"
	DW	0
EXTERN	RTTI_$SYSUTILS_$$_EXCEPTION
EXTERN	VMT_$TYPINFO_$$_EPROPERTYERROR

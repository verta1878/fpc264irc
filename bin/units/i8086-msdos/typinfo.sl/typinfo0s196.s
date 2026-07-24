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
	GLOBAL RTTI_$TYPINFO_$$_TGETPROPVALUE
RTTI_$TYPINFO_$$_TGETPROPVALUE	DB	23,13
		DB	"TGetPropValue"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_VARIANT
	DB	3,8
	DW	RTTI_$SYSTEM_$$_TOBJECT
	DB	8
		DB	"Instance"
	DB	0
	DW	RTTI_$TYPINFO_$$_PPROPINFO
	DB	8
		DB	"PropInfo"
	DB	0
	DW	RTTI_$SYSTEM_$$_BOOLEAN
	DB	13
		DB	"PreferStrings"
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$TYPINFO_$$_PPROPINFO
EXTERN	RTTI_$SYSTEM_$$_TOBJECT
EXTERN	RTTI_$SYSTEM_$$_VARIANT

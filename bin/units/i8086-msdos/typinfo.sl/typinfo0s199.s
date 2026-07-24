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
	GLOBAL RTTI_$TYPINFO_$$_TSETVARIANTPROP
RTTI_$TYPINFO_$$_TSETVARIANTPROP	DB	23,15
		DB	"TSetVariantProp"
	DB	0,2
	DW	0
	DB	3,8
	DW	RTTI_$SYSTEM_$$_TOBJECT
	DB	8
		DB	"Instance"
	DB	0
	DW	RTTI_$TYPINFO_$$_PPROPINFO
	DB	8
		DB	"PropInfo"
	DB	2
	DW	RTTI_$SYSTEM_$$_VARIANT
	DB	5
		DB	"Value"
EXTERN	RTTI_$SYSTEM_$$_VARIANT
EXTERN	RTTI_$TYPINFO_$$_PPROPINFO
EXTERN	RTTI_$SYSTEM_$$_TOBJECT

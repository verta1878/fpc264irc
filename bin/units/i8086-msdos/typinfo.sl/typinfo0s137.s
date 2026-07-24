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
	GLOBAL RTTI_$TYPINFO_$$_TPARAMFLAG
RTTI_$TYPINFO_$$_TPARAMFLAG	DB	3,10
		DB	"TParamFlag"
	DB	1
	DD	0,5
	DW	0
	DB	5
		DB	"pfVar"
	DB	7
		DB	"pfConst"
	DB	7
		DB	"pfArray"
	DB	9
		DB	"pfAddress"
	DB	11
		DB	"pfReference"
	DB	5
		DB	"pfOut"
	DB	7
		DB	"typinfo"
	DB	0

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
	GLOBAL RTTI_$TYPINFO_$$_TMETHODKIND
RTTI_$TYPINFO_$$_TMETHODKIND	DB	3,11
		DB	"TMethodKind"
	DB	1
	DD	0,8
	DW	0
	DB	11
		DB	"mkProcedure"
	DB	10
		DB	"mkFunction"
	DB	13
		DB	"mkConstructor"
	DB	12
		DB	"mkDestructor"
	DB	16
		DB	"mkClassProcedure"
	DB	15
		DB	"mkClassFunction"
	DB	18
		DB	"mkClassConstructor"
	DB	17
		DB	"mkClassDestructor"
	DB	18
		DB	"mkOperatorOverload"
	DB	7
		DB	"typinfo"
	DB	0

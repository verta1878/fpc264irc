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
	GLOBAL RTTI_$SYSTEM_$$_TCOMPAREOPTION
RTTI_$SYSTEM_$$_TCOMPAREOPTION	DB	3,14
		DB	"TCompareOption"
	DB	5
	DD	0,9
	DW	0
	DB	16
		DB	"coLingIgnoreCase"
	DB	21
		DB	"coLingIgnoreDiacritic"
	DB	12
		DB	"coIgnoreCase"
	DB	16
		DB	"coIgnoreKanaType"
	DB	16
		DB	"coIgnoreNonSpace"
	DB	15
		DB	"coIgnoreSymbols"
	DB	13
		DB	"coIgnoreWidth"
	DB	12
		DB	"coLingCasing"
	DB	16
		DB	"coDigitAsNumbers"
	DB	12
		DB	"coStringSort"
	DB	6
		DB	"System"
	DB	0

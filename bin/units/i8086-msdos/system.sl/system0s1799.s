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
	GLOBAL RTTI_$SYSTEM_$$_TVAROP
RTTI_$SYSTEM_$$_TVAROP	DB	3,6
		DB	"tvarop"
	DB	5
	DD	0,20
	DW	0
	DB	5
		DB	"opadd"
	DB	10
		DB	"opsubtract"
	DB	10
		DB	"opmultiply"
	DB	8
		DB	"opdivide"
	DB	11
		DB	"opintdivide"
	DB	9
		DB	"opmodulus"
	DB	11
		DB	"opshiftleft"
	DB	12
		DB	"opshiftright"
	DB	5
		DB	"opand"
	DB	4
		DB	"opor"
	DB	5
		DB	"opxor"
	DB	9
		DB	"opcompare"
	DB	8
		DB	"opnegate"
	DB	5
		DB	"opnot"
	DB	7
		DB	"opcmpeq"
	DB	7
		DB	"opcmpne"
	DB	7
		DB	"opcmplt"
	DB	7
		DB	"opcmple"
	DB	7
		DB	"opcmpgt"
	DB	7
		DB	"opcmpge"
	DB	7
		DB	"oppower"
	DB	6
		DB	"System"
	DB	0

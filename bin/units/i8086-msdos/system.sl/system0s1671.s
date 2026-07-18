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
	GLOBAL RTTI_$SYSTEM_$$_TFLOATSPECIAL
RTTI_$SYSTEM_$$_TFLOATSPECIAL	DB	3,13
		DB	"TFloatSpecial"
	DB	5
	DD	0,9
	DW	0
	DB	6
		DB	"fsZero"
	DB	7
		DB	"fsNZero"
	DB	10
		DB	"fsDenormal"
	DB	11
		DB	"fsNDenormal"
	DB	10
		DB	"fsPositive"
	DB	10
		DB	"fsNegative"
	DB	5
		DB	"fsInf"
	DB	6
		DB	"fsNInf"
	DB	5
		DB	"fsNaN"
	DB	11
		DB	"fsInvalidOp"
	DB	6
		DB	"System"
	DB	0

BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .data
	ALIGN 2
	GLOBAL RTTI_$CLASSES_$$_TVALUETYPE
RTTI_$CLASSES_$$_TVALUETYPE	DB	3,10
		DB	"TValueType"
	DB	5
	DD	0,22
	DW	0
	DB	6
		DB	"vaNull"
	DB	6
		DB	"vaList"
	DB	6
		DB	"vaInt8"
	DB	7
		DB	"vaInt16"
	DB	7
		DB	"vaInt32"
	DB	10
		DB	"vaExtended"
	DB	8
		DB	"vaString"
	DB	7
		DB	"vaIdent"
	DB	7
		DB	"vaFalse"
	DB	6
		DB	"vaTrue"
	DB	8
		DB	"vaBinary"
	DB	5
		DB	"vaSet"
	DB	9
		DB	"vaLString"
	DB	5
		DB	"vaNil"
	DB	12
		DB	"vaCollection"
	DB	8
		DB	"vaSingle"
	DB	10
		DB	"vaCurrency"
	DB	6
		DB	"vaDate"
	DB	9
		DB	"vaWString"
	DB	7
		DB	"vaInt64"
	DB	12
		DB	"vaUTF8String"
	DB	9
		DB	"vaUString"
	DB	7
		DB	"vaQWord"
	DB	7
		DB	"Classes"
	DB	0

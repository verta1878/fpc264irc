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
	GLOBAL RTTI_$SYSTEM_$$_TRUNTIMEERROR
RTTI_$SYSTEM_$$_TRUNTIMEERROR	DB	3,13
		DB	"TRuntimeError"
	DB	5
	DD	0,26
	DW	0
	DB	6
		DB	"reNone"
	DB	13
		DB	"reOutOfMemory"
	DB	12
		DB	"reInvalidPtr"
	DB	11
		DB	"reDivByZero"
	DB	12
		DB	"reRangeError"
	DB	13
		DB	"reIntOverflow"
	DB	11
		DB	"reInvalidOp"
	DB	12
		DB	"reZeroDivide"
	DB	10
		DB	"reOverflow"
	DB	11
		DB	"reUnderflow"
	DB	13
		DB	"reInvalidCast"
	DB	17
		DB	"reAccessViolation"
	DB	17
		DB	"rePrivInstruction"
	DB	14
		DB	"reControlBreak"
	DB	15
		DB	"reStackOverflow"
	DB	13
		DB	"reVarTypeCast"
	DB	14
		DB	"reVarInvalidOp"
	DB	13
		DB	"reVarDispatch"
	DB	16
		DB	"reVarArrayCreate"
	DB	13
		DB	"reVarNotArray"
	DB	16
		DB	"reVarArrayBounds"
	DB	17
		DB	"reAssertionFailed"
	DB	19
		DB	"reExternalException"
	DB	15
		DB	"reIntfCastError"
	DB	15
		DB	"reSafeCallError"
	DB	6
		DB	"reQuit"
	DB	19
		DB	"reCodesetConversion"
	DB	6
		DB	"System"
	DB	0

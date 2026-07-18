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
	GLOBAL RTTI_$SYSTEM_$$_TFPUEXCEPTION
RTTI_$SYSTEM_$$_TFPUEXCEPTION	DB	3,13
		DB	"TFPUException"
	DB	5
	DD	0,5
	DW	0
	DB	11
		DB	"exInvalidOp"
	DB	14
		DB	"exDenormalized"
	DB	12
		DB	"exZeroDivide"
	DB	10
		DB	"exOverflow"
	DB	11
		DB	"exUnderflow"
	DB	11
		DB	"exPrecision"
	DB	6
		DB	"System"
	DB	0

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
	GLOBAL RTTI_$MATH_$$_TPAYMENTTIME
RTTI_$MATH_$$_TPAYMENTTIME	DB	3,12
		DB	"tpaymenttime"
	DB	5
	DD	0,1
	DW	0
	DB	13
		DB	"ptendofperiod"
	DB	15
		DB	"ptstartofperiod"
	DB	4
		DB	"math"
	DB	0

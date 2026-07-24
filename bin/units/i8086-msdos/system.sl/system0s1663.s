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
	GLOBAL RTTI_$SYSTEM_$$_TFPUPRECISIONMODE
RTTI_$SYSTEM_$$_TFPUPRECISIONMODE	DB	3,17
		DB	"TFPUPrecisionMode"
	DB	5
	DD	0,3
	DW	0
	DB	8
		DB	"pmSingle"
	DB	10
		DB	"pmReserved"
	DB	8
		DB	"pmDouble"
	DB	10
		DB	"pmExtended"
	DB	6
		DB	"System"
	DB	0

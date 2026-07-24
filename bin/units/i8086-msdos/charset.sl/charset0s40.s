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
	GLOBAL RTTI_$CHARSET_$$_TUNICODECHARMAPPINGFLAG
RTTI_$CHARSET_$$_TUNICODECHARMAPPINGFLAG	DB	3,23
		DB	"tunicodecharmappingflag"
	DB	1
	DD	0,3
	DW	0
	DB	10
		DB	"umf_noinfo"
	DB	12
		DB	"umf_leadbyte"
	DB	13
		DB	"umf_undefined"
	DB	10
		DB	"umf_unused"
	DB	7
		DB	"charset"
	DB	0

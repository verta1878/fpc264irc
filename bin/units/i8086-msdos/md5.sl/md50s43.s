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
	GLOBAL RTTI_$MD5_$$_TMDVERSION
RTTI_$MD5_$$_TMDVERSION	DB	3,10
		DB	"TMDVersion"
	DB	5
	DD	0,2
	DW	0
	DB	12
		DB	"MD_VERSION_2"
	DB	12
		DB	"MD_VERSION_4"
	DB	12
		DB	"MD_VERSION_5"
	DB	3
		DB	"md5"
	DB	0

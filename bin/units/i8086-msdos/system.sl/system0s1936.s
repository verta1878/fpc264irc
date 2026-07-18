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
	GLOBAL RTTI_$SYSTEM_$$_DEF1580
RTTI_$SYSTEM_$$_DEF1580	DB	23
		DB	0
	DB	0,2
	DW	RTTI_$SYSTEM_$$_WORD
	DB	2,0
	DW	RTTI_$SYSTEM_$$_WORD
	DB	12
		DB	"ModuleHandle"
	DB	0
	DW	RTTI_$SYSTEM_$$_WORD
	DB	9
		DB	"ResHandle"
EXTERN	RTTI_$SYSTEM_$$_WORD

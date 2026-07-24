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
	GLOBAL RTTI_$SYSTEM_$$_UCS4STRING
RTTI_$SYSTEM_$$_UCS4STRING	DB	21
		DB	10,"UCS4String"
	DW	4,RTTI_$SYSTEM_$$_UCS4CHAR
	DD	3
	DW	0
	DB	6
		DB	"System"
EXTERN	RTTI_$SYSTEM_$$_UCS4CHAR

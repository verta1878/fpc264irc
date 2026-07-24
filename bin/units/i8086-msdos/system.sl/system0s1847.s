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
	GLOBAL RTTI_$SYSTEM_$$_DEF860
RTTI_$SYSTEM_$$_DEF860	DB	23
		DB	0
	DB	0,2
	DW	RTTI_$SYSTEM_$$_BOOLEAN
	DB	3,2
	DW	RTTI_$SYSTEM_$$_VARIANT
	DB	4
		DB	"left"
	DB	2
	DW	RTTI_$SYSTEM_$$_VARIANT
	DB	5
		DB	"right"
	DB	2
	DW	RTTI_$SYSTEM_$$_TVAROP
	DB	6
		DB	"opcode"
EXTERN	RTTI_$SYSTEM_$$_TVAROP
EXTERN	RTTI_$SYSTEM_$$_VARIANT
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN

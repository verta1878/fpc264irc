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
	GLOBAL RTTI_$TYPES_$$_TINT64DYNARRAY
RTTI_$TYPES_$$_TINT64DYNARRAY	DB	21
		DB	14,"TInt64DynArray"
	DW	8,RTTI_$SYSTEM_$$_INT64
	DD	20
	DW	0
	DB	5
		DB	"Types"
EXTERN	RTTI_$SYSTEM_$$_INT64

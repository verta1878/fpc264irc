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
	GLOBAL RTTI_$SYSTEM_$$_DEF462
RTTI_$SYSTEM_$$_DEF462	DB	23
		DB	0
	DB	0,2
	DW	0
	DB	4,0
	DW	RTTI_$SYSTEM_$$_PCHAR
	DB	6
		DB	"source"
	DB	0
	DW	RTTI_$SYSTEM_$$_WORD
	DB	2
		DB	"cp"
	DB	1
	DW	RTTI_$SYSTEM_$$_WIDESTRING
	DB	4
		DB	"dest"
	DB	0
	DW	RTTI_$SYSTEM_$$_SMALLINT
	DB	3
		DB	"len"
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	RTTI_$SYSTEM_$$_WIDESTRING
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_PCHAR

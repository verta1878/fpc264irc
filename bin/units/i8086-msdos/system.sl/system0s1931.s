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
	GLOBAL RTTI_$SYSTEM_$$_DEF1575
RTTI_$SYSTEM_$$_DEF1575	DB	23
		DB	0
	DB	0,2
	DW	RTTI_$SYSTEM_$$_LONGBOOL
	DB	3,0
	DW	RTTI_$SYSTEM_$$_WORD
	DB	12
		DB	"ModuleHandle"
	DB	0
	DW	RTTI_$SYSTEM_$$_ENUMRESTYPEPROC
	DB	8
		DB	"EnumFunc"
	DB	0
	DW	RTTI_$SYSTEM_$$_SMALLINT
	DB	6
		DB	"lParam"
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	RTTI_$SYSTEM_$$_ENUMRESTYPEPROC
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_LONGBOOL

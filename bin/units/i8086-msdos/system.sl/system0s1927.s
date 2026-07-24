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
	GLOBAL RTTI_$SYSTEM_$$_ENUMRESNAMEPROC
RTTI_$SYSTEM_$$_ENUMRESNAMEPROC	DB	23,15
		DB	"EnumResNameProc"
	DB	0,3
	DW	RTTI_$SYSTEM_$$_LONGBOOL
	DB	4,0
	DW	RTTI_$SYSTEM_$$_WORD
	DB	12
		DB	"ModuleHandle"
	DB	0
	DW	RTTI_$SYSTEM_$$_PCHAR
	DB	12
		DB	"ResourceType"
	DB	0
	DW	RTTI_$SYSTEM_$$_PCHAR
	DB	12
		DB	"ResourceName"
	DB	0
	DW	RTTI_$SYSTEM_$$_SMALLINT
	DB	6
		DB	"lParam"
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	RTTI_$SYSTEM_$$_PCHAR
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_LONGBOOL

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
	GLOBAL RTTI_$SYSTEM_$$_TASSERTERRORPROC
RTTI_$SYSTEM_$$_TASSERTERRORPROC	DB	23,16
		DB	"TAssertErrorProc"
	DB	0,2
	DW	0
	DB	4,2
	DW	RTTI_$SYSTEM_$$_SHORTSTRING
	DB	3
		DB	"msg"
	DB	2
	DW	RTTI_$SYSTEM_$$_SHORTSTRING
	DB	5
		DB	"fname"
	DB	0
	DW	RTTI_$SYSTEM_$$_LONGINT
	DB	6
		DB	"lineno"
	DB	0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	9
		DB	"erroraddr"
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_SHORTSTRING

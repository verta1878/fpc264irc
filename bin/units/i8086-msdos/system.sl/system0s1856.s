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
	GLOBAL RTTI_$SYSTEM_$$_DEF869
RTTI_$SYSTEM_$$_DEF869	DB	23
		DB	0
	DB	0,1
	DW	0
	DB	4,0
	DW	RTTI_$SYSTEM_$$_PVARDATA
	DB	4
		DB	"dest"
	DB	1
	DW	RTTI_$SYSTEM_$$_TVARDATA
	DB	6
		DB	"source"
	DB	0
	DW	RTTI_$SYSTEM_$$_PCALLDESC
	DB	8
		DB	"calldesc"
	DB	0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	6
		DB	"params"
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_PCALLDESC
EXTERN	RTTI_$SYSTEM_$$_TVARDATA
EXTERN	RTTI_$SYSTEM_$$_PVARDATA

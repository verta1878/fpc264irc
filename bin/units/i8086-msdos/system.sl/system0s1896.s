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
	GLOBAL RTTI_$SYSTEM_$$_TTHREADFUNC
RTTI_$SYSTEM_$$_TTHREADFUNC	DB	23,11
		DB	"TThreadFunc"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_SMALLINT
	DB	1,0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	9
		DB	"parameter"
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_SMALLINT

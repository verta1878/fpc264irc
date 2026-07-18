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
	GLOBAL RTTI_$SYSTEM_$$_TBACKTRACESTRFUNC
RTTI_$SYSTEM_$$_TBACKTRACESTRFUNC	DB	23,17
		DB	"TBackTraceStrFunc"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_SHORTSTRING
	DB	1,0
	DW	RTTI_$SYSTEM_$$_NEARPOINTER
	DB	4
		DB	"Addr"
EXTERN	RTTI_$SYSTEM_$$_NEARPOINTER
EXTERN	RTTI_$SYSTEM_$$_SHORTSTRING

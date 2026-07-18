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
	GLOBAL RTTI_$SYSTEM_$$_TERRORPROC
RTTI_$SYSTEM_$$_TERRORPROC	DB	23,10
		DB	"TErrorProc"
	DB	0,2
	DW	0
	DB	3,0
	DW	RTTI_$SYSTEM_$$_LONGINT
	DB	5
		DB	"ErrNo"
	DB	0
	DW	RTTI_$SYSTEM_$$_NEARPOINTER
	DB	7
		DB	"Address"
	DB	0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	5
		DB	"Frame"
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_NEARPOINTER
EXTERN	RTTI_$SYSTEM_$$_LONGINT

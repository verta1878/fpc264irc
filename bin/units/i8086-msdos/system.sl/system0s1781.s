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
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTPROC
RTTI_$SYSTEM_$$_TEXCEPTPROC	DB	23,11
		DB	"TExceptProc"
	DB	0,2
	DW	0
	DB	4,8
	DW	RTTI_$SYSTEM_$$_TOBJECT
	DB	3
		DB	"Obj"
	DB	0
	DW	RTTI_$SYSTEM_$$_NEARPOINTER
	DB	4
		DB	"Addr"
	DB	0
	DW	RTTI_$SYSTEM_$$_LONGINT
	DB	10
		DB	"FrameCount"
	DB	0
	DW	RTTI_$SYSTEM_$$_PCODEPOINTER
	DB	5
		DB	"Frame"
EXTERN	RTTI_$SYSTEM_$$_PCODEPOINTER
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_NEARPOINTER
EXTERN	RTTI_$SYSTEM_$$_TOBJECT

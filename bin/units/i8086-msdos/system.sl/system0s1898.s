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
	GLOBAL RTTI_$SYSTEM_$$_TBEGINTHREADHANDLER
RTTI_$SYSTEM_$$_TBEGINTHREADHANDLER	DB	23,19
		DB	"TBeginThreadHandler"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_WORD
	DB	6,0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	2
		DB	"sa"
	DB	0
	DW	RTTI_$SYSTEM_$$_WORD
	DB	9
		DB	"stacksize"
	DB	0
	DW	RTTI_$SYSTEM_$$_TTHREADFUNC
	DB	14
		DB	"ThreadFunction"
	DB	0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	1
		DB	"p"
	DB	0
	DW	RTTI_$SYSTEM_$$_LONGWORD
	DB	13
		DB	"creationFlags"
	DB	1
	DW	RTTI_$SYSTEM_$$_WORD
	DB	8
		DB	"ThreadId"
EXTERN	RTTI_$SYSTEM_$$_LONGWORD
EXTERN	RTTI_$SYSTEM_$$_TTHREADFUNC
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_WORD

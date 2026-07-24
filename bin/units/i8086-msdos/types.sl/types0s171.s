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
	GLOBAL RTTI_$TYPES_$$_TLISTCALLBACK
RTTI_$TYPES_$$_TLISTCALLBACK	DB	6,13
		DB	"TListCallback"
	DB	0,2,0,4
		DB	"data"
		DB	7,"Pointer"
	DB	0,3
		DB	"arg"
		DB	7,"Pointer"
	DB	2
	DW	RTTI_$SYSTEM_$$_POINTER,RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_POINTER

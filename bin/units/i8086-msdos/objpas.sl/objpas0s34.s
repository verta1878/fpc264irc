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
	GLOBAL RTTI_$OBJPAS_$$_TRESOURCEITERATOR
RTTI_$OBJPAS_$$_TRESOURCEITERATOR	DB	23,17
		DB	"TResourceIterator"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	4,0
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	4
		DB	"Name"
	DB	0
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	5
		DB	"Value"
	DB	0
	DW	RTTI_$SYSTEM_$$_LONGINT
	DB	4
		DB	"Hash"
	DB	0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	3
		DB	"arg"
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING

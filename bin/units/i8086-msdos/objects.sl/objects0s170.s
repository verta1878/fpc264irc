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
	GLOBAL RTTI_$OBJECTS_$$_TCHARSET
RTTI_$OBJECTS_$$_TCHARSET	DB	5,8
		DB	"TCharSet"
	DB	1
	DW	RTTI_$SYSTEM_$$_CHAR
EXTERN	RTTI_$SYSTEM_$$_CHAR

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
	GLOBAL RTTI_$OBJECTS_$$_PSTRINGLIST
RTTI_$OBJECTS_$$_PSTRINGLIST	DB	29,11
		DB	"PStringList"
	DW	RTTI_$OBJECTS_$$_TSTRINGLIST
EXTERN	RTTI_$OBJECTS_$$_TSTRINGLIST

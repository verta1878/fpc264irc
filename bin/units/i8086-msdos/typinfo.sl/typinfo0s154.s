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
	GLOBAL RTTI_$TYPINFO_$$_TVMTFIELDTABLE
RTTI_$TYPINFO_$$_TVMTFIELDTABLE	DB	13,14
		DB	"TVmtFieldTable"
	DD	264,3
	DW	RTTI_$SYSTEM_$$_WORD,0,RTTI_$SYSTEM_$$_POINTER,2,RTTI_$TYPINFO_$$_DEF15
	DW	4
EXTERN	RTTI_$TYPINFO_$$_DEF15
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_WORD

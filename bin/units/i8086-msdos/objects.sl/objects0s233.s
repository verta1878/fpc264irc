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
	GLOBAL RTTI_$OBJECTS_$$_TSTRINDEXREC
RTTI_$OBJECTS_$$_TSTRINDEXREC	DB	13,12
		DB	"TStrIndexRec"
	DD	8,3
	DW	RTTI_$SYSTEM_$$_LONGWORD,0,RTTI_$SYSTEM_$$_WORD,4,RTTI_$SYSTEM_$$_WORD
	DW	6
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_LONGWORD

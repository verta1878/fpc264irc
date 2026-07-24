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
	GLOBAL RTTI_$OBJECTS_$$_TDOSSTREAM
RTTI_$OBJECTS_$$_TDOSSTREAM	DB	16,10
		DB	"TDosStream"
	DD	841,4
	DW	RTTI_$OBJECTS_$$_TSTREAM,0,RTTI_$SYSTEM_$$_WORD,15,RTTI_$OBJECTS_$$_ASCIIZ
	DW	17,RTTI_$SYSTEM_$$_file,273
EXTERN	RTTI_$SYSTEM_$$_file
EXTERN	RTTI_$OBJECTS_$$_ASCIIZ
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$OBJECTS_$$_TSTREAM

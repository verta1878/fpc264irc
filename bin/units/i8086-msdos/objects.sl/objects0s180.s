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
	GLOBAL RTTI_$OBJECTS_$$_WORDREC
RTTI_$OBJECTS_$$_WORDREC	DB	13,7
		DB	"WordRec"
	DD	2,2
	DW	RTTI_$SYSTEM_$$_BYTE,0,RTTI_$SYSTEM_$$_BYTE,1
EXTERN	RTTI_$SYSTEM_$$_BYTE

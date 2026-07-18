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
	GLOBAL RTTI_$OBJECTS_$$_TSORTEDCOLLECTION
RTTI_$OBJECTS_$$_TSORTEDCOLLECTION	DB	16,17
		DB	"TSortedCollection"
	DD	17,2
	DW	RTTI_$OBJECTS_$$_TCOLLECTION,0,RTTI_$SYSTEM_$$_BOOLEAN,16
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$OBJECTS_$$_TCOLLECTION

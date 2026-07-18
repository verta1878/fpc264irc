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
	GLOBAL RTTI_$OBJECTS_$$_TUNSORTEDSTRCOLLECTION
RTTI_$OBJECTS_$$_TUNSORTEDSTRCOLLECTION	DB	16,22
		DB	"TUnSortedStrCollection"
	DD	17,1
	DW	RTTI_$OBJECTS_$$_TSTRINGCOLLECTION,0
EXTERN	RTTI_$OBJECTS_$$_TSTRINGCOLLECTION

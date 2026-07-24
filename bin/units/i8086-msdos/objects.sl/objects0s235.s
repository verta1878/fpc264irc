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
	GLOBAL RTTI_$OBJECTS_$$_TSTRINDEX
RTTI_$OBJECTS_$$_TSTRINDEX	DB	12
		DB	9,"TStrIndex"
	DW	16392,2049,RTTI_$OBJECTS_$$_TSTRINDEXREC
	DB	1
	DW	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	RTTI_$OBJECTS_$$_TSTRINDEXREC

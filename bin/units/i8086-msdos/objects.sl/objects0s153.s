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
	GLOBAL VMT_$OBJECTS_$$_TRESOURCEFILE
VMT_$OBJECTS_$$_TRESOURCEFILE	DW	30,-30,VMT_$OBJECTS_$$_TOBJECT,OBJECTS$_$TRESOURCEFILE_$__$$_DONE,0
EXTERN	OBJECTS$_$TRESOURCEFILE_$__$$_DONE
EXTERN	VMT_$OBJECTS_$$_TOBJECT

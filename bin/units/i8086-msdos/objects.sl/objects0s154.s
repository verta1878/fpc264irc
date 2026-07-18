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
	GLOBAL VMT_$OBJECTS_$$_TSTRINGLIST
VMT_$OBJECTS_$$_TSTRINGLIST	DW	14,-14,VMT_$OBJECTS_$$_TOBJECT,OBJECTS$_$TSTRINGLIST_$__$$_DONE,0
EXTERN	OBJECTS$_$TSTRINGLIST_$__$$_DONE
EXTERN	VMT_$OBJECTS_$$_TOBJECT

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
	GLOBAL TC_$OBJECTS_$$_RSTRINGLIST
TC_$OBJECTS_$$_RSTRINGLIST	DD	52
	DW	VMT_$OBJECTS_$$_TSTRINGLIST,OBJECTS$_$TSTRINGLIST_$__$$_LOAD$TSTREAM$$LONGBOOL
	DW	0,0
EXTERN	OBJECTS$_$TSTRINGLIST_$__$$_LOAD$TSTREAM$$LONGBOOL
EXTERN	VMT_$OBJECTS_$$_TSTRINGLIST

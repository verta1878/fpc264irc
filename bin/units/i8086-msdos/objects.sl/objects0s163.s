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
	GLOBAL TC_$OBJECTS_$$_RSTRLISTMAKER
TC_$OBJECTS_$$_RSTRLISTMAKER	DD	52
	DW	VMT_$OBJECTS_$$_TSTRLISTMAKER,0,OBJECTS$_$TSTRLISTMAKER_$__$$_STORE$TSTREAM
	DW	0
EXTERN	OBJECTS$_$TSTRLISTMAKER_$__$$_STORE$TSTREAM
EXTERN	VMT_$OBJECTS_$$_TSTRLISTMAKER

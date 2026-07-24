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
	GLOBAL TC_$DATEUTILS_$$_AMPMFORMATTING
TC_$DATEUTILS_$$_AMPMFORMATTING	DW	_$DATEUTILS$_Ld27,_$DATEUTILS$_Ld28,_$DATEUTILS$_Ld29
EXTERN	_$DATEUTILS$_Ld29
EXTERN	_$DATEUTILS$_Ld28
EXTERN	_$DATEUTILS$_Ld27

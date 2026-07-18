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
	GLOBAL TC_$STRUTILS$_$ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_$$_ROMANVALUES
TC_$STRUTILS$_$ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_$$_ROMANVALUES	DW	100,500,0,0,0,0,1,0,0,50,1000,0,0,0,0,0,0,0,0,5,0,10

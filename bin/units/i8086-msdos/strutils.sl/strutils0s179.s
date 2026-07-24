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
	GLOBAL TC_$STRUTILS$_$INTTOROMAN$LONGINT$$ANSISTRING_$$_ARABICS
TC_$STRUTILS$_$INTTOROMAN$LONGINT$$ANSISTRING_$$_ARABICS	DW	1,4,5,9,10,40,50,90,100,400,500,900,1000

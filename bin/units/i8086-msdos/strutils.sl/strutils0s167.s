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
	GLOBAL TC_$STRUTILS_$$_WORDDELIMITERS
TC_$STRUTILS_$$_WORDDELIMITERS	DB	255,255,255,255,255,255,0,252,1,0,0,248,1,0,0,248,255,255,255,255,255,255,255,255,255,255,255
	DB	255,255,255,255,255

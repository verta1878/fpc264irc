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
	GLOBAL TC_$SYSTEM_$$_COSCOF
TC_$SYSTEM_$$_COSCOF		DB	155,26,134,160,73,250,168,189
		DB	5,63,78,123,157,238,33,62
		DB	198,75,172,126,79,126,146,190
		DB	245,68,200,25,160,1,250,62
		DB	145,79,193,22,108,193,86,191
		DB	75,85,85,85,85,85,165,63

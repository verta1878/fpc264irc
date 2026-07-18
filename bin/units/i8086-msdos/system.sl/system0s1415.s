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
	GLOBAL TC_$SYSTEM_$$_SINCOF
TC_$SYSTEM_$$_SINCOF		DB	205,156,209,31,253,216,229,61
		DB	93,31,41,169,229,229,90,190
		DB	161,72,125,86,227,29,199,62
		DB	3,223,191,25,160,1,42,191
		DB	208,247,16,17,17,17,129,63
		DB	72,85,85,85,85,85,197,191

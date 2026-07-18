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
	GLOBAL TC_$SYSTEM_$$_PIO2CHUNKED
TC_$SYSTEM_$$_PIO2CHUNKED		DB	0,0,0,64,251,33,249,63
		DB	0,0,0,0,45,68,116,62
		DB	0,0,0,128,152,70,248,60
		DB	0,0,0,96,81,204,120,59
		DB	0,0,0,128,131,27,240,57
		DB	0,0,0,64,32,37,122,56
		DB	0,0,0,128,34,130,227,54
		DB	0,0,0,0,29,243,105,53

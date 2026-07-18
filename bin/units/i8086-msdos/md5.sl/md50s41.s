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
	GLOBAL TC_$MD5$_$MDFINAL$TMDCONTEXT$TMDDIGEST_$$_PADDING_MD45
TC_$MD5$_$MDFINAL$TMDCONTEXT$TMDDIGEST_$$_PADDING_MD45	DD	128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

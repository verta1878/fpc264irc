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

SECTION rodata class=data
	ALIGN 2
	GLOBAL IIDSTR_$SYSUTILS_$$_IREADWRITESYNC
IIDSTR_$SYSUTILS_$$_IREADWRITESYNC	DB	38
		DB	"{7B108C52-1D8F-4CDB-9CDF-57E071193D3F}"

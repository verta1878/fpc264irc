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
	GLOBAL IIDSTR_$TYPES_$$_ISEQUENTIALSTREAM
IIDSTR_$TYPES_$$_ISEQUENTIALSTREAM	DB	38
		DB	"{0c733a30-2a1c-11ce-ade5-00aa0044773d}"

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
	GLOBAL RTTI_$MD5_$$_TMDVERSION_o2s
RTTI_$MD5_$$_TMDVERSION_o2s	DD	0
	DW	RTTI_$MD5_$$_TMDVERSION+23,RTTI_$MD5_$$_TMDVERSION+36,RTTI_$MD5_$$_TMDVERSION+49
EXTERN	RTTI_$MD5_$$_TMDVERSION

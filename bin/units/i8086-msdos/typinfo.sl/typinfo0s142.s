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
	GLOBAL RTTI_$TYPINFO_$$_TINTFFLAG_s2o
RTTI_$TYPINFO_$$_TINTFFLAG_s2o	DD	4,2
	DW	RTTI_$TYPINFO_$$_TINTFFLAG+48
	DD	1
	DW	RTTI_$TYPINFO_$$_TINTFFLAG+32
	DD	0
	DW	RTTI_$TYPINFO_$$_TINTFFLAG+22
	DD	3
	DW	RTTI_$TYPINFO_$$_TINTFFLAG+59
EXTERN	RTTI_$TYPINFO_$$_TINTFFLAG

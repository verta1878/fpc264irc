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
	GLOBAL RTTI_$TYPINFO_$$_TORDTYPE_s2o
RTTI_$TYPINFO_$$_TORDTYPE_s2o	DD	6,0
	DW	RTTI_$TYPINFO_$$_TORDTYPE+21
	DD	4
	DW	RTTI_$TYPINFO_$$_TORDTYPE+53
	DD	2
	DW	RTTI_$TYPINFO_$$_TORDTYPE+37
	DD	1
	DW	RTTI_$TYPINFO_$$_TORDTYPE+29
	DD	5
	DW	RTTI_$TYPINFO_$$_TORDTYPE+61
	DD	3
	DW	RTTI_$TYPINFO_$$_TORDTYPE+45
EXTERN	RTTI_$TYPINFO_$$_TORDTYPE

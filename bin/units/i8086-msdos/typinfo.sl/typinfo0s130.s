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
	GLOBAL RTTI_$TYPINFO_$$_TORDTYPE_o2s
RTTI_$TYPINFO_$$_TORDTYPE_o2s	DD	0
	DW	RTTI_$TYPINFO_$$_TORDTYPE+21,RTTI_$TYPINFO_$$_TORDTYPE+29,RTTI_$TYPINFO_$$_TORDTYPE+37
	DW	RTTI_$TYPINFO_$$_TORDTYPE+45,RTTI_$TYPINFO_$$_TORDTYPE+53,RTTI_$TYPINFO_$$_TORDTYPE+61
EXTERN	RTTI_$TYPINFO_$$_TORDTYPE

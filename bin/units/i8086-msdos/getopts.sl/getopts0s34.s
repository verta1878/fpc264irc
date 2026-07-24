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
	GLOBAL RTTI_$GETOPTS_$$_ORDERINGS_s2o
RTTI_$GETOPTS_$$_ORDERINGS_s2o	DD	3,1
	DW	RTTI_$GETOPTS_$$_ORDERINGS+36
	DD	0
	DW	RTTI_$GETOPTS_$$_ORDERINGS+22
	DD	2
	DW	RTTI_$GETOPTS_$$_ORDERINGS+44
EXTERN	RTTI_$GETOPTS_$$_ORDERINGS

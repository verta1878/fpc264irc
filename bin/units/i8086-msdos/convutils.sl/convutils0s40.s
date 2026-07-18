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
	GLOBAL RTTI_$CONVUTILS_$$_TCONVTYPEPROCS
RTTI_$CONVUTILS_$$_TCONVTYPEPROCS	DB	15,14
		DB	"TConvTypeProcs"
	DW	VMT_$CONVUTILS_$$_TCONVTYPEPROCS,RTTI_$CONVUTILS_$$_TCONVTYPEINFO,0
	DB	9
		DB	"convutils"
	DW	0
EXTERN	RTTI_$CONVUTILS_$$_TCONVTYPEINFO
EXTERN	VMT_$CONVUTILS_$$_TCONVTYPEPROCS

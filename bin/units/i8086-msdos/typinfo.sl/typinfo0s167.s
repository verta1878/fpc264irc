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
	GLOBAL RTTI_$TYPINFO_$$_TPROCEDUREPARAM
RTTI_$TYPINFO_$$_TPROCEDUREPARAM	DB	13,15
		DB	"TProcedureParam"
	DD	259,3
	DW	RTTI_$SYSTEM_$$_BYTE,0,RTTI_$TYPINFO_$$_PTYPEINFO,1,RTTI_$SYSTEM_$$_SHORTSTRING
	DW	3
EXTERN	RTTI_$SYSTEM_$$_SHORTSTRING
EXTERN	RTTI_$TYPINFO_$$_PTYPEINFO
EXTERN	RTTI_$SYSTEM_$$_BYTE

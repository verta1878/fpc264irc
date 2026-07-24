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
	GLOBAL RTTI_$MATRIX_$$_TMATRIX2_DOUBLE_DATA
RTTI_$MATRIX_$$_TMATRIX2_DOUBLE_DATA	DB	12
		DB	20,"Tmatrix2_double_data"
	DW	32,4,RTTI_$SYSTEM_$$_DOUBLE
	DB	2
	DW	RTTI_$SYSTEM_$$_SHORTINT,RTTI_$SYSTEM_$$_SHORTINT
EXTERN	RTTI_$SYSTEM_$$_SHORTINT
EXTERN	RTTI_$SYSTEM_$$_DOUBLE

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
	GLOBAL RTTI_$MATRIX_$$_TVECTOR3_SINGLE
RTTI_$MATRIX_$$_TVECTOR3_SINGLE	DB	16,15
		DB	"Tvector3_single"
	DD	14,2
	DW	RTTI_$MATRIX_$$_TVECTOR3_SINGLE_DATA,0,RTTI_$SYSTEM_$$_POINTER,12
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$MATRIX_$$_TVECTOR3_SINGLE_DATA

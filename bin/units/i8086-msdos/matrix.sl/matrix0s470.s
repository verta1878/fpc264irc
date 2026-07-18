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
	GLOBAL VMT_$MATRIX_$$_TMATRIX4_SINGLE
VMT_$MATRIX_$$_TMATRIX4_SINGLE	DW	66,-66,0,0

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
	GLOBAL INIT_$MATRIX_$$_TMATRIX4_EXTENDED
INIT_$MATRIX_$$_TMATRIX4_EXTENDED	DB	16,17
		DB	"Tmatrix4_extended"
	DD	162,0

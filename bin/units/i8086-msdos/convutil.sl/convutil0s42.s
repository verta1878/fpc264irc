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
	GLOBAL INIT_$CONVUTILS_$$_DEF35
INIT_$CONVUTILS_$$_DEF35	DB	21
		DB	0
	DW	12,INIT_$CONVUTILS_$$_RESOURCEDATA
	DD	-1
	DW	INIT_$CONVUTILS_$$_RESOURCEDATA
	DB	9
		DB	"convutils"
EXTERN	INIT_$CONVUTILS_$$_RESOURCEDATA

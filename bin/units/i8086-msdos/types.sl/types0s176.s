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
	GLOBAL RTTI_$TYPES_$$_PXRMOPTIONDESCREC
RTTI_$TYPES_$$_PXRMOPTIONDESCREC	DB	29,17
		DB	"PXrmOptionDescRec"
	DW	RTTI_$TYPES_$$_TXRMOPTIONDESCREC
EXTERN	RTTI_$TYPES_$$_TXRMOPTIONDESCREC

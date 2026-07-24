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
	GLOBAL RTTI_$TYPES_$$_PSTATSTG
RTTI_$TYPES_$$_PSTATSTG	DB	29,8
		DB	"PStatStg"
	DW	RTTI_$TYPES_$$_TAGSTATSTG
EXTERN	RTTI_$TYPES_$$_TAGSTATSTG

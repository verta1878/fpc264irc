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
	GLOBAL RTTI_$TYPES_$$_ISEQUENTIALSTREAM
RTTI_$TYPES_$$_ISEQUENTIALSTREAM	DB	14,17
		DB	"ISequentialStream"
	DW	RTTI_$SYSTEM_$$_IUNKNOWN
	DB	9
	DD	208878128
	DW	10780,4558
	DB	173,229,0,170,0,68,119,61,5
		DB	"Types"
	DB	38
		DB	"{0c733a30-2a1c-11ce-ade5-00aa0044773d}"
EXTERN	RTTI_$SYSTEM_$$_IUNKNOWN

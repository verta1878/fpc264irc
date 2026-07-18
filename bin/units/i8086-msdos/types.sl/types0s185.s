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
	GLOBAL RTTI_$TYPES_$$_ISTREAM
RTTI_$TYPES_$$_ISTREAM	DB	14,7
		DB	"IStream"
	DW	RTTI_$TYPES_$$_ISEQUENTIALSTREAM
	DB	9
	DD	12
	DW	0,0
	DB	192,0,0,0,0,0,0,70,5
		DB	"Types"
	DB	38
		DB	"{0000000C-0000-0000-C000-000000000046}"
; End asmlist al_rtti

EXTERN	RTTI_$TYPES_$$_ISEQUENTIALSTREAM

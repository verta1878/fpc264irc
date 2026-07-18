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
	GLOBAL RTTI_$OBJECTS_$$_PSTRLISTMAKER
RTTI_$OBJECTS_$$_PSTRLISTMAKER	DB	29,13
		DB	"PStrListMaker"
	DW	RTTI_$OBJECTS_$$_TSTRLISTMAKER
; End asmlist al_rtti

EXTERN	RTTI_$OBJECTS_$$_TSTRLISTMAKER

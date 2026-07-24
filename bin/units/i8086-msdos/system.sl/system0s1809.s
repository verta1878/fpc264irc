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
	GLOBAL RTTI_$SYSTEM_$$_TCALLDESC
RTTI_$SYSTEM_$$_TCALLDESC	DB	13,9
		DB	"tcalldesc"
	DD	259,4
	DW	RTTI_$SYSTEM_$$_BYTE,0,RTTI_$SYSTEM_$$_BYTE,1,RTTI_$SYSTEM_$$_BYTE,2,RTTI_$SYSTEM_$$_DEF825
	DW	3
EXTERN	RTTI_$SYSTEM_$$_DEF825
EXTERN	RTTI_$SYSTEM_$$_BYTE

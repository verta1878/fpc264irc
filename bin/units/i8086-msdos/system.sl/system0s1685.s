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
	GLOBAL RTTI_$SYSTEM_$$_TSINGLEREC
RTTI_$SYSTEM_$$_TSINGLEREC	DB	13,10
		DB	"TSingleRec"
	DD	4,4
	DW	RTTI_$SYSTEM_$$_DEF368,0,RTTI_$SYSTEM_$$_DEF369,0,RTTI_$SYSTEM_$$_LONGWORD
	DW	0,RTTI_$SYSTEM_$$_SINGLE,0
EXTERN	RTTI_$SYSTEM_$$_SINGLE
EXTERN	RTTI_$SYSTEM_$$_LONGWORD
EXTERN	RTTI_$SYSTEM_$$_DEF369
EXTERN	RTTI_$SYSTEM_$$_DEF368

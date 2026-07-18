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
	GLOBAL RTTI_$SYSUTILS_$$_TFLOATREC
RTTI_$SYSUTILS_$$_TFLOATREC	DB	13,9
		DB	"TFloatRec"
	DD	22,3
	DW	RTTI_$SYSTEM_$$_SMALLINT,0,RTTI_$SYSTEM_$$_BOOLEAN,2,RTTI_$SYSUTILS_$$_DEF180
	DW	3
EXTERN	RTTI_$SYSUTILS_$$_DEF180
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_SMALLINT

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
	GLOBAL RTTI_$SYSUTILS_$$_INT64REC
RTTI_$SYSUTILS_$$_INT64REC	DB	13,8
		DB	"Int64Rec"
	DD	8,4
	DW	RTTI_$SYSTEM_$$_LONGWORD,0,RTTI_$SYSTEM_$$_LONGWORD,4,RTTI_$SYSUTILS_$$_DEF362
	DW	0,RTTI_$SYSUTILS_$$_DEF363,0
EXTERN	RTTI_$SYSUTILS_$$_DEF363
EXTERN	RTTI_$SYSUTILS_$$_DEF362
EXTERN	RTTI_$SYSTEM_$$_LONGWORD

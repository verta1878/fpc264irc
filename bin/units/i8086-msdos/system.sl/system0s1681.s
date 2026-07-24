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
	GLOBAL RTTI_$SYSTEM_$$_TDOUBLEREC
RTTI_$SYSTEM_$$_TDOUBLEREC	DB	13,10
		DB	"TDoubleRec"
	DD	8,4
	DW	RTTI_$SYSTEM_$$_DEF348,0,RTTI_$SYSTEM_$$_DEF349,0,RTTI_$SYSTEM_$$_QWORD
	DW	0,RTTI_$SYSTEM_$$_DOUBLE,0
EXTERN	RTTI_$SYSTEM_$$_DOUBLE
EXTERN	RTTI_$SYSTEM_$$_QWORD
EXTERN	RTTI_$SYSTEM_$$_DEF349
EXTERN	RTTI_$SYSTEM_$$_DEF348

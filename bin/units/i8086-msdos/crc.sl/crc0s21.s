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
	GLOBAL RTTI_$CRC_$$_U128
RTTI_$CRC_$$_U128	DB	13,4
		DB	"u128"
	DD	16,3
	DW	RTTI_$SYSTEM_$$_QWORD,0,RTTI_$SYSTEM_$$_QWORD,8,RTTI_$SYSTEM_$$_TGUID
	DW	0
EXTERN	RTTI_$SYSTEM_$$_TGUID
EXTERN	RTTI_$SYSTEM_$$_QWORD

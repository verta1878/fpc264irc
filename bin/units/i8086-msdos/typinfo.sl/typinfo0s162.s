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
	GLOBAL RTTI_$TYPINFO_$$_DEF20
RTTI_$TYPINFO_$$_DEF20	DB	12
		DB	0
	DW	512,256,RTTI_$TYPINFO_$$_PTYPEINFO
	DB	1
	DW	RTTI_$SYSTEM_$$_BYTE
EXTERN	RTTI_$SYSTEM_$$_BYTE
EXTERN	RTTI_$TYPINFO_$$_PTYPEINFO

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
	GLOBAL RTTI_$SYSTEM_$$_TUCS4CHARARRAY
RTTI_$SYSTEM_$$_TUCS4CHARARRAY	DB	12
		DB	14,"TUCS4CharArray"
	DW	32764,8191,RTTI_$SYSTEM_$$_UCS4CHAR
	DB	1
	DW	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	RTTI_$SYSTEM_$$_UCS4CHAR

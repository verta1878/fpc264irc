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
	GLOBAL RTTI_$SHA1_$$_TSHA1DIGEST
RTTI_$SHA1_$$_TSHA1DIGEST	DB	12
		DB	11,"TSHA1Digest"
	DW	20,20,RTTI_$SYSTEM_$$_BYTE
	DB	1
	DW	RTTI_$SYSTEM_$$_SHORTINT
EXTERN	RTTI_$SYSTEM_$$_SHORTINT
EXTERN	RTTI_$SYSTEM_$$_BYTE

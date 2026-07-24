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
	GLOBAL RTTI_$SHA1_$$_TSHA1CONTEXT
RTTI_$SHA1_$$_TSHA1CONTEXT	DB	13,12
		DB	"TSHA1Context"
	DD	94,4
	DW	RTTI_$SHA1_$$_DEF2,0,RTTI_$SHA1_$$_DEF3,20,RTTI_$SYSTEM_$$_WORD,84,RTTI_$SYSTEM_$$_QWORD
	DW	86
; End asmlist al_rtti

EXTERN	RTTI_$SYSTEM_$$_QWORD
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SHA1_$$_DEF3
EXTERN	RTTI_$SHA1_$$_DEF2

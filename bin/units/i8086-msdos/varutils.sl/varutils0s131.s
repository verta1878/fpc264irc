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
	GLOBAL RTTI_$VARUTILS_$$_TVARTYPETOELEMENTINFO
RTTI_$VARUTILS_$$_TVARTYPETOELEMENTINFO	DB	13,21
		DB	"TVarTypeToElementInfo"
	DD	8,4
	DW	RTTI_$SYSTEM_$$_BOOLEAN,0,RTTI_$SYSTEM_$$_BOOLEAN,1,RTTI_$SYSTEM_$$_LONGINT
	DW	2,RTTI_$SYSTEM_$$_WORD,6
; End asmlist al_rtti

EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN

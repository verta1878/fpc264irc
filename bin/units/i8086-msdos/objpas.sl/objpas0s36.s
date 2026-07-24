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
	GLOBAL INIT_$OBJPAS_$$_TRESOURCESTRINGRECORD
INIT_$OBJPAS_$$_TRESOURCESTRINGRECORD	DB	13,21
		DB	"TResourceStringRecord"
	DD	10,3
	DW	RTTI_$SYSTEM_$$_ANSISTRING,0,RTTI_$SYSTEM_$$_ANSISTRING,2,RTTI_$SYSTEM_$$_ANSISTRING
	DW	4
; End asmlist al_rtti

EXTERN	RTTI_$SYSTEM_$$_ANSISTRING

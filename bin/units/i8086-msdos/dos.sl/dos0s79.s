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
	GLOBAL RTTI_$DOS_$$_SEARCHREC
RTTI_$DOS_$$_SEARCHREC	DB	13,9
		DB	"searchrec"
	DD	286,5
	DW	RTTI_$DOS_$$_DEF1,0,RTTI_$SYSTEM_$$_BYTE,21,RTTI_$SYSTEM_$$_LONGINT,22
	DW	RTTI_$SYSTEM_$$_LONGINT,26,RTTI_$SYSTEM_$$_SHORTSTRING,30
EXTERN	RTTI_$SYSTEM_$$_SHORTSTRING
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_BYTE
EXTERN	RTTI_$DOS_$$_DEF1

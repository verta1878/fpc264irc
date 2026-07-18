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
	GLOBAL RTTI_$SOCKETS_$$_TSERVENT
RTTI_$SOCKETS_$$_TSERVENT	DB	13,8
		DB	"TServEnt"
	DD	10,4
	DW	RTTI_$SYSTEM_$$_PCHAR,0,RTTI_$SOCKETS_$$_DEF20,2,RTTI_$SYSTEM_$$_LONGINT
	DW	4,RTTI_$SYSTEM_$$_PCHAR,8
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SOCKETS_$$_DEF20
EXTERN	RTTI_$SYSTEM_$$_PCHAR

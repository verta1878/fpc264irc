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

EXTERN	fpc_help_constructor
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	FPC_SETJMP
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_help_fail
EXTERN	fpc_popaddrstack
EXTERN	fpc_reraise
EXTERN	FPC_RAISE_NESTED
EXTERN	FPC_DONEEXCEPTION
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	RTTI_$SYSTEM_$$_SHORTINT
EXTERN	RTTI_$SYSTEM_$$_SINGLE
EXTERN	RTTI_$SYSTEM_$$_DOUBLE
EXTERN	RTTI_$SYSTEM_$$_EXTENDED
EXTERN	RTTI_$SYSTEM_$$_POINTER
; Begin asmlist al_procedures

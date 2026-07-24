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

EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	FPC_SETJMP
EXTERN	fpc_ansistr_assign
EXTERN	fpc_shortstr_uint
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	fpc_ansistr_concat
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
; Begin asmlist al_procedures

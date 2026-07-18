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

EXTERN	FPC_INTR
EXTERN	fpc_div_longint
EXTERN	fpc_mul_longint
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	U_$SYSTEM_$$_OUTPUT
EXTERN	SYSTEM_$$_REWRITE$TEXT
EXTERN	FPC_IOCHECK
EXTERN	U_$SYSTEM_$$_INPUT
EXTERN	SYSTEM_$$_RESET$TEXT
; Begin asmlist al_procedures

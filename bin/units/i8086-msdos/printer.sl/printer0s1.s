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

EXTERN	SYSTEM_$$_CLOSE$TEXT
EXTERN	TC_$SYSTEM_$$_EXITPROC
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	SYSTEM_$$_REWRITE$TEXT
; Begin asmlist al_procedures

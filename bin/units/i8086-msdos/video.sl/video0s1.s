BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

EXTERN	FPC_INTR
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
; Begin asmlist al_procedures

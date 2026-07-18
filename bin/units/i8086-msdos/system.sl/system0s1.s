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

EXTERN	FPC_MSDOS
EXTERN	INITFINAL
EXTERN	FPC_THREADVARTABLES
EXTERN	FPC_RESTORE_INTERRUPT_HANDLERS
EXTERN	FPC_CHECK_NULLAREA
EXTERN	FPC_MSDOS_CARRY
EXTERN	FPC_INSTALL_INTERRUPT_HANDLERS
; Begin asmlist al_procedures

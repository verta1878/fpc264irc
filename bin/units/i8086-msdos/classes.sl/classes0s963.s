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

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TABSTRACTOBJECTWRITER_$__$$_WRITE$formal$LONGINT
CLASSES$_$TABSTRACTOBJECTWRITER_$__$$_WRITE$formal$LONGINT:
		jmp	FPC_ABSTRACTERROR
EXTERN	FPC_ABSTRACTERROR
